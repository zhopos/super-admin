// ============================================================================
// Panel Super Admin v2 — Wizard "Hubungkan Supabase"
// ----------------------------------------------------------------------------
// Login Bos saja via Supabase Auth (proyek ZPOS Bos). TIDAK ada signup.
// Registry toko disimpan di localStorage browser Bos saja.
// Wizard v2 BENAR-BENAR memanggil API Supabase + GitHub dari browser Bos
// (buat proyek / pasang skema / buat repo / deploy) dengan token yang
// ditempel Bos di form. Token HANYA hidup di memori selama wizard jalan —
// TIDAK PERNAH ditulis ke localStorage, file, atau repo; dibersihkan saat
// selesai / batal / keluar. "Update Semua Toko" masih simulasi sampai
// backend ada.
// ============================================================================
'use strict';

// --- Konfigurasi (dari config.js di browser; fallback bila di-Node/sim) -----
var PANEL_CONFIG = (typeof window !== 'undefined' && window.PANEL_CONFIG)
  || (typeof globalThis !== 'undefined' && globalThis.PANEL_CONFIG)
  || (function () { try { return require('./config.js'); } catch (e) { return null; } })()
  || { SUPABASE_URL: '', SUPABASE_ANON_KEY: '', VERSI_TERBARU: 'v4-45', EMAIL_BOS: 'admin@zpos.local' };

var VERSI_TERBARU = PANEL_CONFIG.VERSI_TERBARU || 'v4-45';
var LS_TOKO_DEMO = 'sa_toko_demo_v1';

// --- Toko bawaan: selalu ada, tidak bisa dihapus dari panel -----------------
var TOKO_BAWAAN = [
  {
    id: 'zpos-bos', nama: 'ZPOS', slug: 'zho-pos',
    link: 'https://zhopos.github.io/', versi: 'v4-45',
    terakhirUpdate: '26 Nov 2026', bos: true, demo: false,
    ket: 'Toko Bos sendiri — kelinci percobaan sebelum update disebar',
    db: { project: 'zho-pos', ref: 'jcbisimrlhcdajrfvdju', region: 'Singapore (ap-southeast-1)', tabel: 37, status: 'Healthy', plan: 'Free' }
  },
  {
    id: 'toko-contoh', nama: 'Toko Contoh', slug: 'toko-contoh',
    link: 'https://zhopos.github.io/toko-contoh', versi: 'v4-44',
    terakhirUpdate: '—', bos: false, demo: true,
    ket: 'Baris contoh saja — belum ada pembeli sungguhan',
    db: { project: '(demo — belum dibuat)', ref: 'demo-xxxx', region: 'Singapore (ap-southeast-1)', tabel: 37, status: 'Demo', plan: 'Free' }
  }
];

// --- Langkah provisioning demo (URUTAN PENTING — sama seperti setup-pembeli.sh)
var LANGKAH_PROVISIONING = [
  { id: 'buat-proyek', label: 'Buat proyek Supabase (region Singapore, paket gratis)' },
  { id: 'pasang-skema', label: 'Pasang 37 tabel + RLS + seed (supabase-schema.sql)' },
  { id: 'verifikasi-tabel', label: 'Verifikasi tabel (37/37)' },
  { id: 'ambil-key', label: 'Ambil URL + publishable key proyek' },
  { id: 'buat-repo', label: 'Buat repo zhopos/<slug> + isi config.js' },
  { id: 'deploy', label: 'Deploy GitHub Pages' },
  { id: 'selesai', label: 'Selesai — tampilkan link toko' }
];

// --- Langkah update demo (URUTAN PENTING: migrasi database dulu, baru deploy)
var LANGKAH_UPDATE = [
  { id: 'migrasi-db', label: 'Migrasi database' },
  { id: 'deploy-app', label: 'Deploy aplikasi' }
];

// --- Wizard "Hubungkan Supabase" (v2) ---------------------------------------
// Semua panggilan API berjalan dari BROWSER Bos. Token (sbp_ + GitHub) hanya
// hidup di memori selama wizard jalan — TIDAK PERNAH ditulis ke localStorage,
// file, atau repo; dibersihkan saat selesai / batal / keluar. Log wizard
// tidak pernah menampilkan isi token.
// ----------------------------------------------------------------------------
var API_SUPABASE = 'https://api.supabase.com/v1';
var API_GITHUB = 'https://api.github.com';
var LIVE_ZPOS = 'https://zhopos.github.io/';

var SCHEMA_DATA = (typeof window !== 'undefined' && window.SCHEMA_DATA)
  || (typeof globalThis !== 'undefined' && globalThis.SCHEMA_DATA)
  || (function () { try { return require('./schema-data.js'); } catch (e) { return null; } })()
  || null;

function skemaData() {
  if (!SCHEMA_DATA) throw new Error('schema-data.js tidak termuat — jalankan node gen-schema-data.js lalu muat ulang panel.');
  return SCHEMA_DATA;
}

// Urutan langkah wizard (URUTAN PENTING — jangan diubah sembarangan).
var LANGKAH_WIZARD = [
  { id: 'validasi', label: 'Validasi isian (nama, slug, token)' },
  { id: 'tes-koneksi', label: 'Tes koneksi ke Supabase' },
  { id: 'pasang-skema-1', label: 'Pasang skema — bagian 1/2 (37 tabel + RLS)' },
  { id: 'pasang-skema-2', label: 'Pasang skema — bagian 2/2 (seed + grant)' },
  { id: 'verifikasi-tabel', label: 'Verifikasi jumlah tabel (harus ≥ 37)' },
  { id: 'migrasi-cabang', label: 'Migrasi v4-41 (cabang_id pelanggan/pemasok)' },
  { id: 'migrasi-desimal', label: 'Migrasi desimal v4-45 (qty pecahan)' },
  { id: 'ambil-kunci', label: 'Ambil publishable key proyek' },
  { id: 'buat-repo', label: 'Buat repo GitHub zhopos/<slug>' },
  { id: 'salin-file', label: 'Salin file aplikasi v4-45 + config.js' },
  { id: 'aktifkan-pages', label: 'Aktifkan GitHub Pages' },
  { id: 'selesai', label: 'Selesai — simpan toko + tampilkan link' }
];

// File aplikasi yang disalin dari situs live ZPOS Bos (selalu versi terbaru).
// 'teks' di-fetch sebagai teks, 'biner' sebagai arrayBuffer → base64.
// config.js TIDAK di-fetch — dibuat wizard dari URL + key toko itu.
var FILE_APLIKASI = [
  { path: 'index.html', jenis: 'teks', wajib: true },
  { path: 'app.js', jenis: 'teks', wajib: true },
  { path: 'supabase.js', jenis: 'teks', wajib: true },
  { path: 'sw.js', jenis: 'teks', wajib: true },
  { path: 'manifest.webmanifest', jenis: 'teks', wajib: false },
  { path: 'icon-192.png', jenis: 'biner', wajib: false },
  { path: 'icon-512.png', jenis: 'biner', wajib: false },
  { path: 'apple-touch-icon.png', jenis: 'biner', wajib: false }
];

function daftarFileAplikasi() {
  return FILE_APLIKASI.map(function (f) { return { path: f.path, jenis: f.jenis, wajib: !!f.wajib }; });
}

function tungguMs(ms) {
  return new Promise(function (r) { setTimeout(r, ms); });
}

function refDariUrl(url) {
  var m = String(url || '').trim().match(/^https:\/\/([a-z0-9-]+)\.supabase\.co\/?$/i);
  return m ? m[1].toLowerCase() : null;
}

function urlDariRef(ref) {
  return 'https://' + String(ref || '').trim().toLowerCase() + '.supabase.co';
}

// Validasi semua isian wizard SEBELUM request apa pun.
// Satu mode saja: proyek toko sudah dibuat (saat akun Supabase dibuat).
// f: {projectUrl, publishableKey, sbpToken, githubToken}
function validasiKoneksi(f) {
  var errors = [];
  f = f || {};
  var ref = refDariUrl(f.projectUrl);
  if (!ref) errors.push('Project URL tidak valid — harus https://<ref>.supabase.co (contoh: https://abcdefghijklm.supabase.co).');
  if (!/^sb_publishable_/.test(f.publishableKey || '')) errors.push('Publishable key tidak valid — harus diawali sb_publishable_ (salin dari Settings → API Keys → Publishable key).');
  if (!/^sbp_/.test(f.sbpToken || '')) errors.push('Management API token tidak valid — harus diawali sbp_ (buat di dashboard Supabase → Access Tokens).');
  if (!/^(ghp_|github_pat_|gho_)/.test(f.githubToken || '')) errors.push('Token GitHub tidak valid — harus token classic (ghp_…) atau fine-grained (github_pat_…) dengan scope repo.');
  if (errors.length) return { ok: false, errors: errors };
  return { ok: true, errors: [], ref: ref, projectUrl: urlDariRef(ref) };
}

// config.js toko baru — format SAMA PERSIS dengan config.js ZPOS (const).
// Hanya berisi URL + publishable key toko itu; tanpa secret apa pun.
function buatConfigToko(projectUrl, publishableKey) {
  return '// ============================================================\n'
    + '// ZPOS v4 — Konfigurasi (dibuat otomatis oleh Panel Super Admin)\n'
    + '// Yang ada di sini hanya ANON KEY (kunci publik, aman untuk\n'
    + '// aplikasi frontend). JANGAN PERNAH menempel SERVICE_ROLE KEY.\n'
    + '// ============================================================\n'
    + '\n'
    + 'const SUPABASE_URL = "' + projectUrl + '";\n'
    + 'const SUPABASE_ANON_KEY = "' + publishableKey + '";\n';
}

function pesanDariRes(r) {
  if (!r) return '';
  var j = r.json;
  if (j) {
    if (typeof j.message === 'string') return j.message;
    if (typeof j.error === 'string') return j.error;
    if (j.error && typeof j.error.message === 'string') return j.error.message;
    if (typeof j.msg === 'string') return j.msg;
  }
  var t = String(r.text || '').trim();
  return t ? t.slice(0, 200) : '';
}

// Bedakan penyebab gagal koneksi — supaya pesan ke Bos tepat sasaran.
function klasifikasiGalatKoneksi(x) {
  var status = (x && x.status) || 0;
  if (status === 401) return { jenis: 'token', pesan: 'Token Management API ditolak (401) — token salah atau kedaluwarsa. Periksa token sbp_ yang ditempel.' };
  if (status === 404) return { jenis: 'tidak-ditemukan', pesan: 'Proyek tidak ditemukan (404) — periksa Project URL / ref, dan pastikan token berasal dari akun Supabase yang sama dengan proyek itu.' };
  if (status === 403) return { jenis: 'token', pesan: 'Token tidak punya akses ke proyek ini (403) — token harus dibuat di akun Supabase yang sama dengan proyek toko.' };
  if (status === 429) return { jenis: 'server', pesan: 'Terlalu banyak permintaan (429) — tunggu sebentar lalu coba lagi.' };
  if (status >= 500) return { jenis: 'server', pesan: 'Server Supabase bermasalah (' + status + ') — coba lagi nanti.' };
  if (status === 0 || (x && x.galat)) {
    var m = String((x && x.galat && x.galat.message) || (x && x.message) || '');
    if (/abort/i.test(m)) return { jenis: 'timeout', pesan: 'Permintaan kehabisan waktu (timeout) — periksa koneksi lalu coba lagi.' };
    return { jenis: 'cors', pesan: 'Browser tidak bisa menghubungi api.supabase.com — kemungkinan diblokir CORS atau tidak ada internet. Periksa koneksi internet, lalu coba lagi. Bila tetap gagal, hubungkan lewat skrip di mesin Bob.' };
  }
  var ps = (x && x.pesanServer) || '';
  return { jenis: 'server', pesan: 'Gagal menghubungi Supabase' + (status ? ' (' + status + ')' : '') + (ps ? ': ' + ps : '.') };
}

// Ambil publishable key dari jawaban GET /v1/projects/{ref}/api-keys.
// Bentuk jawaban bisa berubah — tangani: array [{name, api_key}], {keys: [...]},
// {publishable: 'sb_…'}, atau {api_key: 'sb_…'}.
function pilihPublishableKey(j) {
  var arr = null;
  if (Array.isArray(j)) arr = j;
  else if (j && Array.isArray(j.keys)) arr = j.keys;
  else if (j && typeof j.publishable === 'string') return j.publishable;
  else if (j && typeof j.api_key === 'string') return j.api_key;
  if (!arr) return null;
  var pub = null, legacy = null;
  arr.forEach(function (k) {
    var key = k && (k.api_key || k.key || '');
    if (!key) return;
    if (key.indexOf('sb_publishable_') === 0) {
      if (!pub || /default/i.test(k.name || '')) pub = key;
    } else if (key.indexOf('eyJ') === 0 && /anon|default/i.test(k.name || '')) {
      if (!legacy) legacy = key;
    }
  });
  return pub || legacy;
}

// Ambil angka hitung tabel dari jawaban endpoint /database/query (SELECT count).
function ambilHitungTabel(j) {
  var rows = null;
  if (Array.isArray(j)) rows = j;
  else if (j && Array.isArray(j.rows)) rows = j.rows;
  else if (j && Array.isArray(j.data)) rows = j.data;
  else if (j && Array.isArray(j.result)) rows = j.result;
  if (!rows || !rows.length) return null;
  var r = rows[0];
  var v = r.jumlah != null ? r.jumlah : (r.count != null ? r.count : r['count(*)']);
  var n = parseInt(v, 10);
  return isNaN(n) ? null : n;
}

function teksKeBase64(str) {
  if (typeof Buffer !== 'undefined') return Buffer.from(String(str), 'utf8').toString('base64');
  var bin = unescape(encodeURIComponent(String(str)));
  var out = '';
  for (var i = 0; i < bin.length; i += 8192) {
    out += String.fromCharCode.apply(null, bin.slice(i, i + 8192).split('').map(function (c) { return c.charCodeAt(0); }));
  }
  return btoa(out);
}

function bufferKeBase64(buf) {
  if (typeof Buffer !== 'undefined') return Buffer.from(buf).toString('base64');
  var bytes = new Uint8Array(buf);
  var bin = '';
  for (var i = 0; i < bytes.length; i += 8192) {
    bin += String.fromCharCode.apply(null, bytes.subarray(i, i + 8192));
  }
  return btoa(bin);
}

// Panggilan JSON generik. fetchImpl disuntik supaya sim bisa memakai mock.
async function panggilJson(url, opt, fetchImpl) {
  var headers = { 'Content-Type': 'application/json' };
  if (opt && opt.token) headers.Authorization = 'Bearer ' + opt.token;
  try {
    var res = await fetchImpl(url, {
      method: (opt && opt.method) || 'GET',
      headers: headers,
      body: opt && opt.body ? JSON.stringify(opt.body) : undefined
    });
    var text = '';
    try { text = await res.text(); } catch (e) { text = ''; }
    var json = null;
    try { json = text ? JSON.parse(text) : null; } catch (e) { json = null; }
    return { ok: !!res.ok, status: res.status, json: json, text: text };
  } catch (e) {
    return { ok: false, status: 0, galat: e, json: null, text: '' };
  }
}

async function tesKoneksiSupabase(o, fetchImpl) {
  var r = await panggilJson(API_SUPABASE + '/projects/' + encodeURIComponent(o.ref), { token: o.token }, fetchImpl);
  if (!r.ok) return { ok: false, status: r.status, galat: r.galat, pesanServer: pesanDariRes(r) };
  var j = r.json || {};
  return { ok: true, status: j.status || j.state, nama: j.name, ref: j.ref || j.id };
}

async function jalankanSqlSupabase(o, fetchImpl) {
  var r = await panggilJson(API_SUPABASE + '/projects/' + encodeURIComponent(o.ref) + '/database/query', {
    method: 'POST', token: o.token, body: { query: o.query }
  }, fetchImpl);
  if (!r.ok) return { ok: false, status: r.status, galat: r.galat, pesanServer: pesanDariRes(r) };
  return { ok: true };
}

async function hitungTabelSupabase(o, fetchImpl) {
  var r2 = await panggilJson(API_SUPABASE + '/projects/' + encodeURIComponent(o.ref) + '/database/query', {
    method: 'POST', token: o.token,
    body: { query: "SELECT count(*) AS jumlah FROM information_schema.tables WHERE table_schema = 'public'" }
  }, fetchImpl);
  if (!r2.ok) return { ok: false, status: r2.status, galat: r2.galat, pesanServer: pesanDariRes(r2) };
  var jumlah = ambilHitungTabel(r2.json);
  if (jumlah == null) return { ok: false, pesanServer: 'Jawaban hitung tabel tidak bisa dibaca.' };
  return { ok: true, jumlah: jumlah };
}

async function ambilKunciSupabase(o, fetchImpl) {
  var r = await panggilJson(API_SUPABASE + '/projects/' + encodeURIComponent(o.ref) + '/api-keys', { token: o.token }, fetchImpl);
  if (!r.ok) return { ok: false, status: r.status, galat: r.galat, pesanServer: pesanDariRes(r) };
  var key = pilihPublishableKey(r.json);
  if (!key) return { ok: false, pesanServer: 'Tidak ada publishable key di jawaban server.' };
  return { ok: true, key: key };
}

async function buatRepoGithub(o, fetchImpl) {
  var r = await panggilJson(API_GITHUB + '/orgs/zhopos/repos', {
    method: 'POST', token: o.token,
    body: { name: o.slug, private: false, description: 'ZPOS — ' + o.nama }
  }, fetchImpl);
  if (r.ok) return { ok: true };
  if (r.status === 422) return { ok: false, status: 422, sudahAda: true, pesanServer: pesanDariRes(r) };
  return { ok: false, status: r.status, galat: r.galat, pesanServer: pesanDariRes(r) };
}

async function unggahFileGithub(o, fetchImpl) {
  var url = API_GITHUB + '/repos/zhopos/' + encodeURIComponent(o.slug) + '/contents/' + o.path;
  var tunggu = o.tunggu || tungguMs;
  var last = null;
  for (var coba = 1; coba <= 3; coba++) {
    var r = await panggilJson(url, {
      method: 'PUT', token: o.token,
      body: { message: 'ZPOS ' + VERSI_TERBARU + ': ' + o.path, content: o.kontenB64, branch: 'main' }
    }, fetchImpl);
    if (r.ok) return { ok: true };
    last = r;
    if (r.status === 404 || r.status === 409) { await tunggu(1000); continue; }
    break;
  }
  return { ok: false, status: last.status, galat: last.galat, pesanServer: pesanDariRes(last) };
}

async function aktifkanPagesGithub(o, fetchImpl) {
  var r = await panggilJson(API_GITHUB + '/repos/zhopos/' + encodeURIComponent(o.slug) + '/pages', {
    method: 'POST', token: o.token,
    body: { build_type: 'legacy', source: { branch: 'main', path: '/' } }
  }, fetchImpl);
  if (r.ok) return { ok: true };
  if (r.status === 409) return { ok: true, sudahAda: true };
  return { ok: false, status: r.status, galat: r.galat, pesanServer: pesanDariRes(r) };
}

async function ambilFileLive(path, jenis, fetchImpl) {
  try {
    var res = await fetchImpl(LIVE_ZPOS + path);
    if (!res.ok) return { ok: false, status: res.status, path: path };
    if (jenis === 'biner') {
      var buf = await res.arrayBuffer();
      return { ok: true, path: path, b64: bufferKeBase64(buf) };
    }
    var teks = await res.text();
    return { ok: true, path: path, b64: teksKeBase64(teks) };
  } catch (e) {
    return { ok: false, status: 0, galat: e, path: path };
  }
}

// Entri toko hasil wizard — TANPA token apa pun (hanya info koneksi publik).
function buatTokoWizard(nama, slug, info) {
  return {
    id: 'toko-' + slug, nama: nama, slug: slug,
    link: 'https://zhopos.github.io/' + slug + '/',
    versi: VERSI_TERBARU, terakhirUpdate: tanggalHariIni(),
    bos: false, demo: false,
    ket: 'Toko pembeli — dibuat lewat wizard panel',
    db: {
      project: info.namaProyek || info.ref, ref: info.ref,
      region: 'Singapore (ap-southeast-1)', tabel: info.jumlahTabel,
      status: 'Healthy', plan: 'Free',
      url: info.projectUrl, publishableKey: info.publishableKey
    }
  };
}

function hasilGagal(langkah, k) {
  return { ok: false, langkahGagal: langkah, jenisGalat: k.jenis || 'server', pesan: k.pesan || 'Gagal.' };
}

// Orkestrator wizard. Satu mode saja: proyek sudah dibuat.
// input: {nama, slug, projectUrl, publishableKey, sbpToken, githubToken}.
// deps: {fetchImpl, tunggu, log(id, status, pesan), simpanToko(toko)}.
// Berhenti di langkah pertama yang gagal. Token TIDAK PERNAH disimpan.
async function jalankanWizard(input, deps) {
  deps = deps || {};
  var fetchImpl = deps.fetchImpl || (typeof fetch !== 'undefined' ? fetch : null);
  var tunggu = deps.tunggu || tungguMs;
  var log = deps.log || function () {};
  if (!fetchImpl) return { ok: false, langkahGagal: 'validasi', jenisGalat: 'jaringan', pesan: 'fetch tidak tersedia di lingkungan ini.' };

  var nama = String(input.nama || '').trim();
  var slug = String(input.slug || '').trim();

  // 1. Validasi (tanpa request apa pun).
  log('validasi', 'jalan', 'Memeriksa isian…');
  var cek = validasiKoneksi(input);
  if (!cek.ok) {
    log('validasi', 'gagal', cek.errors.join(' '));
    return { ok: false, langkahGagal: 'validasi', jenisGalat: 'validasi', pesan: cek.errors.join(' ') };
  }
  var ref = cek.ref;
  var projectUrl = cek.projectUrl;
  var sbp = input.sbpToken;
  var gh = input.githubToken;
  log('validasi', 'ok', 'Isian valid.');

  // 2. Tes koneksi — gerbang utama; gagal di sini = berhenti.
  log('tes-koneksi', 'jalan', 'Menghubungi api.supabase.com…');
  var tes = await tesKoneksiSupabase({ ref: ref, token: sbp }, fetchImpl);
  if (!tes.ok) {
    var kt = klasifikasiGalatKoneksi(tes);
    log('tes-koneksi', 'gagal', kt.pesan);
    return hasilGagal('tes-koneksi', kt);
  }
  log('tes-koneksi', 'ok', 'Terhubung — proyek "' + (tes.nama || ref) + '" status ' + (tes.status || '?') + '.');

  // 3. Pasang skema — 2 chunk berurutan.
  var sd;
  try {
    sd = skemaData();
  } catch (e) {
    log('pasang-skema-1', 'gagal', e.message);
    return { ok: false, langkahGagal: 'pasang-skema-1', jenisGalat: 'server', pesan: e.message };
  }
  log('pasang-skema-1', 'jalan', 'Mengirim skema bagian 1/2 (37 tabel + RLS)…');
  var s1 = await jalankanSqlSupabase({ ref: ref, token: sbp, query: sd.chunk1 }, fetchImpl);
  if (!s1.ok) {
    var k1 = klasifikasiGalatKoneksi(s1);
    log('pasang-skema-1', 'gagal', k1.pesan + (s1.pesanServer ? ' — ' + s1.pesanServer : ''));
    return hasilGagal('pasang-skema-1', k1);
  }
  log('pasang-skema-1', 'ok', 'Skema bagian 1/2 terkirim.');
  log('pasang-skema-2', 'jalan', 'Mengirim skema bagian 2/2 (seed + grant)…');
  var s2 = await jalankanSqlSupabase({ ref: ref, token: sbp, query: sd.chunk2 }, fetchImpl);
  if (!s2.ok) {
    var k2 = klasifikasiGalatKoneksi(s2);
    log('pasang-skema-2', 'gagal', k2.pesan + (s2.pesanServer ? ' — ' + s2.pesanServer : ''));
    return hasilGagal('pasang-skema-2', k2);
  }
  log('pasang-skema-2', 'ok', 'Skema bagian 2/2 terkirim.');

  // 4a. Verifikasi jumlah tabel.
  log('verifikasi-tabel', 'jalan', 'Menghitung tabel di public…');
  var hit = await hitungTabelSupabase({ ref: ref, token: sbp }, fetchImpl);
  if (!hit.ok) {
    var kh = klasifikasiGalatKoneksi(hit);
    log('verifikasi-tabel', 'gagal', kh.pesan + (hit.pesanServer ? ' — ' + hit.pesanServer : ''));
    return hasilGagal('verifikasi-tabel', kh);
  }
  if (hit.jumlah < 37) {
    log('verifikasi-tabel', 'gagal', 'Hanya ' + hit.jumlah + ' tabel (harus ≥ 37) — skema tidak terpasang penuh.');
    return { ok: false, langkahGagal: 'verifikasi-tabel', jenisGalat: 'server', pesan: 'Hanya ' + hit.jumlah + ' tabel (harus ≥ 37).' };
  }
  log('verifikasi-tabel', 'ok', hit.jumlah + ' tabel terverifikasi.');
  var jumlahTabel = hit.jumlah;

  // 4b. Dua migrasi pasca-instalasi (idempotent — aman diulang).
  log('migrasi-cabang', 'jalan', 'Migrasi v4-41 (cabang_id pelanggan/pemasok)…');
  var mc = await jalankanSqlSupabase({ ref: ref, token: sbp, query: sd.migrasiCabangV441 }, fetchImpl);
  if (!mc.ok) {
    var kmc = klasifikasiGalatKoneksi(mc);
    log('migrasi-cabang', 'gagal', kmc.pesan + (mc.pesanServer ? ' — ' + mc.pesanServer : ''));
    return hasilGagal('migrasi-cabang', kmc);
  }
  log('migrasi-cabang', 'ok', 'Migrasi v4-41 selesai.');
  log('migrasi-desimal', 'jalan', 'Migrasi desimal v4-45 (qty pecahan)…');
  var md = await jalankanSqlSupabase({ ref: ref, token: sbp, query: sd.migrasiDesimalV445 }, fetchImpl);
  if (!md.ok) {
    var kmd = klasifikasiGalatKoneksi(md);
    log('migrasi-desimal', 'gagal', kmd.pesan + (md.pesanServer ? ' — ' + md.pesanServer : ''));
    return hasilGagal('migrasi-desimal', kmd);
  }
  log('migrasi-desimal', 'ok', 'Migrasi desimal v4-45 selesai.');

  // 5. Ambil kunci (cocokkan dengan yang ditempel Bos).
  log('ambil-kunci', 'jalan', 'Mengambil publishable key proyek…');
  var kunci = await ambilKunciSupabase({ ref: ref, token: sbp }, fetchImpl);
  if (!kunci.ok) {
    var kk = klasifikasiGalatKoneksi(kunci);
    log('ambil-kunci', 'gagal', kk.pesan + (kunci.pesanServer ? ' — ' + kunci.pesanServer : ''));
    return hasilGagal('ambil-kunci', kk);
  }
  var keyDipakai = kunci.key;
  if (input.publishableKey && input.publishableKey !== keyDipakai) {
    log('ambil-kunci', 'info', 'Key dari API dipakai (berbeda dengan yang ditempel).');
  }
  log('ambil-kunci', 'ok', 'Publishable key didapat.');

  // 6a. Buat repo GitHub.
  log('buat-repo', 'jalan', 'Membuat repo zhopos/' + slug + '…');
  var repo = await buatRepoGithub({ slug: slug, nama: nama, token: gh }, fetchImpl);
  if (!repo.ok) {
    if (repo.sudahAda) {
      log('buat-repo', 'gagal', 'Repo zhopos/' + slug + ' sudah ada — pilih slug lain atau hapus repo itu dulu. Wizard berhenti (tidak menimpa repo).');
      return { ok: false, langkahGagal: 'buat-repo', jenisGalat: 'sudah-ada', pesan: 'Repo zhopos/' + slug + ' sudah ada.' };
    }
    var kr = klasifikasiGalatKoneksi(repo);
    log('buat-repo', 'gagal', kr.pesan + (repo.pesanServer ? ' — ' + repo.pesanServer : ''));
    return hasilGagal('buat-repo', kr);
  }
  log('buat-repo', 'ok', 'Repo zhopos/' + slug + ' dibuat.');

  // 6b. Salin file aplikasi dari live + config.js hasil wizard.
  log('salin-file', 'jalan', 'Menyalin file aplikasi ' + VERSI_TERBARU + ' dari live…');
  var files = daftarFileAplikasi();
  for (var i = 0; i < files.length; i++) {
    var f = files[i];
    var ambil = await ambilFileLive(f.path, f.jenis, fetchImpl);
    if (!ambil.ok) {
      if (f.wajib) {
        log('salin-file', 'gagal', 'File live ' + f.path + ' tidak bisa diambil (' + (ambil.status || 'jaringan') + ').');
        return { ok: false, langkahGagal: 'salin-file', jenisGalat: 'jaringan', pesan: 'File live ' + f.path + ' tidak bisa diambil.' };
      }
      log('salin-file', 'info', f.path + ' tidak ditemukan di live — dilewati.');
      continue;
    }
    var up = await unggahFileGithub({ slug: slug, path: f.path, kontenB64: ambil.b64, token: gh, tunggu: tunggu }, fetchImpl);
    if (!up.ok) {
      var ku = klasifikasiGalatKoneksi(up);
      log('salin-file', 'gagal', 'Gagal mengunggah ' + f.path + ': ' + ku.pesan);
      return hasilGagal('salin-file', ku);
    }
  }
  var cfgToko = buatConfigToko(projectUrl, keyDipakai);
  var upCfg = await unggahFileGithub({ slug: slug, path: 'config.js', kontenB64: teksKeBase64(cfgToko), token: gh, tunggu: tunggu }, fetchImpl);
  if (!upCfg.ok) {
    var kc = klasifikasiGalatKoneksi(upCfg);
    log('salin-file', 'gagal', 'Gagal mengunggah config.js: ' + kc.pesan);
    return hasilGagal('salin-file', kc);
  }
  log('salin-file', 'ok', 'File aplikasi + config.js terunggah.');

  // 6c. Aktifkan GitHub Pages.
  log('aktifkan-pages', 'jalan', 'Mengaktifkan GitHub Pages (main, /)…');
  var pages = await aktifkanPagesGithub({ slug: slug, token: gh }, fetchImpl);
  if (!pages.ok) {
    var kp = klasifikasiGalatKoneksi(pages);
    log('aktifkan-pages', 'gagal', kp.pesan + (pages.pesanServer ? ' — ' + pages.pesanServer : ''));
    return hasilGagal('aktifkan-pages', kp);
  }
  log('aktifkan-pages', 'ok', 'GitHub Pages aktif (situs tampil ~1 menit lagi).');

  // 7. Selesai — simpan toko (TANPA token).
  var toko = buatTokoWizard(nama, slug, {
    ref: ref, projectUrl: projectUrl, publishableKey: keyDipakai,
    jumlahTabel: jumlahTabel, namaProyek: tes.nama
  });
  if (deps.simpanToko) deps.simpanToko(toko);
  log('selesai', 'ok', 'Toko tersimpan — ' + toko.link);
  return { ok: true, toko: toko, link: toko.link, ref: ref, jumlahTabel: jumlahTabel, publishableKey: keyDipakai };
}

// --- Fungsi murni (dipakai UI + sim) ----------------------------------------
function versiKeAngka(v) {
  var m = String(v || '').match(/(\d+)\s*$/);
  return m ? parseInt(m[1], 10) : 0;
}

function perluUpdate(versi) {
  return versiKeAngka(versi) < versiKeAngka(VERSI_TERBARU);
}

function normalisasiSlug(s) {
  return String(s || '').toLowerCase().trim()
    .replace(/[\s_]+/g, '-')
    .replace(/[^a-z0-9-]/g, '')
    .replace(/-+/g, '-')
    .replace(/^-|-$/g, '');
}

// Normalisasi saat mengetik: sama seperti normalisasiSlug, TAPI strip di ujung
// TIDAK dihapus — kalau dihapus, tanda - yang baru diketik langsung hilang
// (selalu di ujung saat mengetik) dan slug "toko-berkah" tidak bisa diketik.
// Pembersihan ujung hanya dilakukan saat submit (normalisasiSlug).
function normalisasiSlugLive(s) {
  return String(s || '').toLowerCase()
    .replace(/[\s_]+/g, '-')
    .replace(/[^a-z0-9-]/g, '')
    .replace(/-+/g, '-');
}

// Validasi slug toko baru. slugAda = daftar slug yang sudah terpakai.
function validasiSlug(slug, slugAda) {
  var s = String(slug || '').trim();
  if (!s) return { ok: false, alasan: 'Slug wajib diisi.' };
  if (/[^a-z0-9-]/.test(s)) return { ok: false, alasan: 'Slug hanya boleh huruf kecil, angka, dan tanda - (tanpa spasi).' };
  if (s !== s.toLowerCase()) return { ok: false, alasan: 'Slug harus huruf kecil semua.' };
  if (s === 'super-admin') return { ok: false, alasan: "Slug 'super-admin' dipakai panel ini — pilih slug lain." };
  if (s === 'zho-pos') return { ok: false, alasan: "Slug 'zho-pos' adalah repo toko Bos sendiri — pilih slug lain." };
  if ((slugAda || []).indexOf(s) >= 0) return { ok: false, alasan: "Slug '" + s + "' sudah dipakai toko lain." };
  return { ok: true, slug: s };
}

// Gabung toko bawaan + toko demo tersimpan. Bawaan selalu menang bila slug bentrok.
function gabungRegistry(disimpan) {
  var out = TOKO_BAWAAN.slice();
  var slugBawaan = {};
  out.forEach(function (t) { slugBawaan[t.slug] = true; });
  (disimpan || []).forEach(function (t) {
    if (!t || !t.slug || slugBawaan[t.slug]) return;
    out.push(t);
  });
  return out;
}

function tanggalHariIni() {
  try {
    return new Date().toLocaleDateString('id-ID', { day: 'numeric', month: 'short', year: 'numeric' });
  } catch (e) {
    return new Date().toISOString().slice(0, 10);
  }
}

function buatTokoDemo(nama, slug) {
  return {
    id: 'demo-' + slug, nama: nama, slug: slug,
    link: 'https://zhopos.github.io/' + slug + '/',
    versi: VERSI_TERBARU, terakhirUpdate: tanggalHariIni(),
    bos: false, demo: true,
    ket: 'Toko demo — repo belum dibuat (simulasi provisioning)',
    db: { project: '(demo — belum dibuat)', ref: 'demo-' + slug, region: 'Singapore (ap-southeast-1)', tabel: 37, status: 'Demo', plan: 'Free' }
  };
}

function hitungRingkasan(daftar) {
  var perlu = 0;
  (daftar || []).forEach(function (t) { if (perluUpdate(t.versi)) perlu++; });
  return { jumlah: (daftar || []).length, perluUpdate: perlu, versiTerbaru: VERSI_TERBARU };
}

// --- Penyimpanan lokal (browser saja; sim/Node memakai array biasa) ---------
function muatTokoDemo() {
  try {
    if (typeof localStorage === 'undefined') return [];
    var raw = localStorage.getItem(LS_TOKO_DEMO);
    var arr = raw ? JSON.parse(raw) : [];
    return Array.isArray(arr) ? arr : [];
  } catch (e) { return []; }
}

function simpanTokoDemo(arr) {
  try {
    if (typeof localStorage === 'undefined') return;
    localStorage.setItem(LS_TOKO_DEMO, JSON.stringify(arr || []));
  } catch (e) { /* abaikan — mode demo tetap jalan tanpa penyimpanan */ }
}

// --- Ekspor untuk sim Node ---------------------------------------------------
if (typeof module !== 'undefined' && module.exports) {
  module.exports = {
    VERSI_TERBARU: VERSI_TERBARU,
    TOKO_BAWAAN: TOKO_BAWAAN,
    LANGKAH_PROVISIONING: LANGKAH_PROVISIONING,
    LANGKAH_UPDATE: LANGKAH_UPDATE,
    versiKeAngka: versiKeAngka,
    perluUpdate: perluUpdate,
    normalisasiSlug: normalisasiSlug,
    normalisasiSlugLive: normalisasiSlugLive,
    validasiSlug: validasiSlug,
    gabungRegistry: gabungRegistry,
    buatTokoDemo: buatTokoDemo,
    hitungRingkasan: hitungRingkasan,
    LS_TOKO_DEMO: LS_TOKO_DEMO,
    muatTokoDemo: muatTokoDemo,
    simpanTokoDemo: simpanTokoDemo,
    // Wizard v2 — Hubungkan Supabase.
    LANGKAH_WIZARD: LANGKAH_WIZARD,
    API_SUPABASE: API_SUPABASE,
    API_GITHUB: API_GITHUB,
    LIVE_ZPOS: LIVE_ZPOS,
    refDariUrl: refDariUrl,
    urlDariRef: urlDariRef,
    validasiKoneksi: validasiKoneksi,
    buatConfigToko: buatConfigToko,
    klasifikasiGalatKoneksi: klasifikasiGalatKoneksi,
    pilihPublishableKey: pilihPublishableKey,
    ambilHitungTabel: ambilHitungTabel,
    daftarFileAplikasi: daftarFileAplikasi,
    teksKeBase64: teksKeBase64,
    bufferKeBase64: bufferKeBase64,
    tesKoneksiSupabase: tesKoneksiSupabase,
    jalankanSqlSupabase: jalankanSqlSupabase,
    hitungTabelSupabase: hitungTabelSupabase,
    ambilKunciSupabase: ambilKunciSupabase,
    buatRepoGithub: buatRepoGithub,
    unggahFileGithub: unggahFileGithub,
    aktifkanPagesGithub: aktifkanPagesGithub,
    ambilFileLive: ambilFileLive,
    buatTokoWizard: buatTokoWizard,
    jalankanWizard: jalankanWizard,
    skemaData: function () { return skemaData(); }
  };
}

// --- UI browser (tidak jalan di Node) ---------------------------------------
if (typeof document !== 'undefined') {
  var client = null;
  var daftarToko = [];
  var detailId = null;

  function el(id) { return document.getElementById(id); }
  function esc(s) {
    return String(s == null ? '' : s).replace(/[&<>"']/g, function (c) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
  }
  function tunggu(ms) { return new Promise(function (r) { setTimeout(r, ms); }); }

  var toastTimer = null;
  function toast(pesan) {
    var t = el('toast');
    if (!t) return;
    t.textContent = pesan;
    t.classList.remove('hidden');
    clearTimeout(toastTimer);
    toastTimer = setTimeout(function () { t.classList.add('hidden'); }, 3500);
  }

  function muatDaftar() {
    daftarToko = gabungRegistry(muatTokoDemo());
  }

  function renderStats() {
    var r = hitungRingkasan(daftarToko);
    el('statToko').textContent = r.jumlah;
    el('statVersi').textContent = r.versiTerbaru;
    el('statUpdate').textContent = r.perluUpdate;
  }

  function badgeToko(t) {
    if (t.bos) return '<span class="badge bos">Toko Bos — kelinci percobaan</span>';
    if (t.demo) return '<span class="badge demo">DEMO</span>';
    return '<span class="badge ok">● Live</span>';
  }

  function renderDaftar() {
    var html = '';
    daftarToko.forEach(function (t) {
      html += '<div class="card">'
        + '<h2>' + esc(t.nama) + ' ' + badgeToko(t) + (perluUpdate(t.versi) ? ' <span class="badge warn">Perlu update</span>' : '') + '</h2>'
        + '<p class="sub">' + esc(t.ket || '') + '</p>'
        + '<div class="row"><span>Link</span><span>' + esc(t.link.replace(/^https:\/\//, '')) + '</span></div>'
        + '<div class="row"><span>Versi</span><span>' + esc(t.versi) + (perluUpdate(t.versi) ? ' → ' + esc(VERSI_TERBARU) : '') + '</span></div>'
        + '<div class="row"><span>Terakhir update</span><span>' + esc(t.terakhirUpdate || '—') + '</span></div>'
        + '<div class="links">'
        + '<button class="link" data-buka="' + esc(t.id) + '">Buka toko &rsaquo;</button>'
        + '<button class="link" data-update="' + esc(t.id) + '">Update &rsaquo;</button>'
        + '<button class="link" data-detail="' + esc(t.id) + '">Detail &rsaquo;</button>'
        + '</div></div>';
    });
    el('daftarToko').innerHTML = html;
  }

  function renderSemua() {
    renderStats();
    renderDaftar();
  }

  function cariToko(id) {
    for (var i = 0; i < daftarToko.length; i++) if (daftarToko[i].id === id) return daftarToko[i];
    return null;
  }

  function bukaToko(t) {
    if (!t) return;
    if (t.demo) { toast('Demo — repo toko ini belum dibuat, jadi linknya belum bisa dibuka.'); return; }
    window.open(t.link, '_blank');
  }

  function tampilDetail(t) {
    if (!t) return;
    detailId = t.id;
    var db = t.db || {};
    el('detailToko').innerHTML = '<div class="card">'
      + '<h2>Detail — ' + esc(t.nama) + ' ' + badgeToko(t) + '</h2>'
      + '<p class="sub">' + esc(t.ket || '') + '</p>'
      + '<div class="row"><span>Link</span><span>' + esc(t.link) + (t.demo ? ' (demo — repo belum dibuat)' : '') + '</span></div>'
      + '<div class="row"><span>Versi aplikasi</span><span>' + esc(t.versi) + '</span></div>'
      + '<div class="row"><span>Terakhir update</span><span>' + esc(t.terakhirUpdate || '—') + '</span></div>'
      + '<div class="row"><span>Proyek Supabase</span><span>' + esc(db.project || '—') + '</span></div>'
      + '<div class="row"><span>Project ref</span><span>' + esc(db.ref || '—') + '</span></div>'
      + '<div class="row"><span>Region</span><span>' + esc(db.region || '—') + '</span></div>'
      + '<div class="row"><span>Jumlah tabel</span><span>' + esc(db.tabel != null ? db.tabel : '—') + ' tabel</span></div>'
      + '<div class="row"><span>Status database</span><span>' + esc(db.status || '—') + '</span></div>'
      + '<div class="row"><span>Paket</span><span>' + esc(db.plan || '—') + '</span></div>'
      + (db.url ? '<div class="row"><span>URL Supabase</span><span>' + esc(db.url) + '</span></div>' : '')
      + (db.publishableKey ? '<div class="row"><span>Publishable key</span><span>' + esc(db.publishableKey) + '</span></div>' : '')
      + '<div class="links"><button class="link" id="btnTutupDetail">&lsaquo; Kembali ke daftar</button></div>'
      + '</div>';
    el('detailToko').classList.remove('hidden');
    el('btnTutupDetail').onclick = function () {
      el('detailToko').classList.add('hidden');
      el('detailToko').innerHTML = '';
      detailId = null;
    };
    el('detailToko').scrollIntoView({ behavior: 'smooth', block: 'start' });
  }

  function tulisLog(logEl, baris, kelas) {
    var div = document.createElement('div');
    if (kelas) div.className = kelas;
    div.textContent = baris;
    logEl.appendChild(div);
  }

  // Simulasi provisioning demo: jalankan LANGKAH_PROVISIONING berurutan.
  async function simulasiProvisioning(nama, slug) {
    var logEl = el('logBuat');
    var hasilEl = el('hasilBuat');
    logEl.innerHTML = '';
    logEl.classList.remove('hidden');
    hasilEl.classList.add('hidden');
    for (var i = 0; i < LANGKAH_PROVISIONING.length; i++) {
      var langkah = LANGKAH_PROVISIONING[i];
      var label = langkah.label.replace('<slug>', slug);
      tulisLog(logEl, '… ' + label, 'jalan');
      await tunggu(700);
      logEl.lastChild.textContent = '✓ ' + label;
      logEl.lastChild.className = 'ok';
    }
    var toko = buatTokoDemo(nama, slug);
    var demo = muatTokoDemo();
    demo.push(toko);
    simpanTokoDemo(demo);
    muatDaftar();
    renderSemua();
    hasilEl.innerHTML = '<b>Simulasi selesai — ' + esc(nama) + ' terdaftar sebagai toko demo.</b><br>'
      + 'Link: <a href="#" onclick="return false;">' + esc(toko.link) + '</a> '
      + '<b>(demo — repo belum dibuat)</b><br>'
      + 'Langkah manual yang tetap perlu Bos: buat akun Supabase pembeli + token Management API-nya, '
      + 'baru provisioning sungguhan bisa jalan (lewat backend).';
    hasilEl.classList.remove('hidden');
    toast('Toko demo "' + nama + '" dibuat.');
  }

  // Simulasi update satu toko: migrasi database dulu, baru deploy aplikasi.
  async function simulasiUpdateToko(t, logEl) {
    if (!perluUpdate(t.versi)) {
      tulisLog(logEl, '– ' + t.nama + ' sudah di ' + t.versi + ' (terbaru), dilewati.');
      return false;
    }
    tulisLog(logEl, '▶ ' + t.nama + ' (' + t.versi + ' → ' + VERSI_TERBARU + ')', 'jalan');
    tulisLog(logEl, '  … ' + LANGKAH_UPDATE[0].label + ' — ' + t.slug, 'jalan');
    await tunggu(700);
    tulisLog(logEl, '  ✓ ' + LANGKAH_UPDATE[0].label + ' — ' + t.slug, 'ok');
    tulisLog(logEl, '  … ' + LANGKAH_UPDATE[1].label + ' — ' + t.slug + ' (config.js tidak ditimpa)', 'jalan');
    await tunggu(700);
    tulisLog(logEl, '  ✓ ' + LANGKAH_UPDATE[1].label + ' — ' + t.slug, 'ok');
    t.versi = VERSI_TERBARU;
    t.terakhirUpdate = tanggalHariIni();
    if (t.demo && !t.bos) {
      var demo = muatTokoDemo();
      for (var i = 0; i < demo.length; i++) {
        if (demo[i].slug === t.slug) { demo[i].versi = t.versi; demo[i].terakhirUpdate = t.terakhirUpdate; }
      }
      simpanTokoDemo(demo);
    }
    return true;
  }

  async function updateSemua() {
    var area = el('areaUpdate');
    var logEl = el('logUpdate');
    area.classList.remove('hidden');
    logEl.innerHTML = '';
    logEl.classList.remove('hidden');
    el('btnUpdateSemua').disabled = true;
    var diubah = 0;
    for (var i = 0; i < daftarToko.length; i++) {
      if (await simulasiUpdateToko(daftarToko[i], logEl)) diubah++;
    }
    tulisLog(logEl, diubah > 0
      ? '✓ Selesai — ' + diubah + ' toko diperbarui ke ' + VERSI_TERBARU + ' (simulasi demo).'
      : '✓ Semua toko sudah di versi terbaru ' + VERSI_TERBARU + '.');
    renderSemua();
    el('btnUpdateSemua').disabled = false;
    toast(diubah > 0 ? diubah + ' toko diperbarui (demo).' : 'Semua toko sudah terbaru.');
  }

  async function updateSatu(id) {
    var t = cariToko(id);
    if (!t) return;
    var area = el('areaUpdate');
    var logEl = el('logUpdate');
    area.classList.remove('hidden');
    logEl.innerHTML = '';
    logEl.classList.remove('hidden');
    await simulasiUpdateToko(t, logEl);
    renderSemua();
    toast(perluUpdate(t.versi) ? 'Update ' + t.nama + ' selesai (demo).' : t.nama + ' sudah terbaru.');
  }

  function tampilPanel() {
    el('layarLogin').classList.add('hidden');
    el('layarPanel').classList.remove('hidden');
    el('btnKeluar').classList.remove('hidden');
    muatDaftar();
    renderSemua();
  }

  function tampilLogin() {
    el('layarPanel').classList.add('hidden');
    el('layarLogin').classList.remove('hidden');
    el('btnKeluar').classList.add('hidden');
  }

  async function masuk() {
    var email = el('loginEmail').value.trim();
    var sandi = el('loginSandi').value;
    var errEl = el('loginErr');
    errEl.textContent = '';
    if (!email || !sandi) { errEl.textContent = 'Isi email dan kata sandi.'; return; }
    el('btnMasuk').disabled = true;
    el('btnMasuk').textContent = 'Masuk…';
    try {
      var res = await client.auth.signInWithPassword({ email: email, password: sandi });
      if (res.error) throw res.error;
      tampilPanel();
      toast('Selamat datang, Bos.');
    } catch (e) {
      errEl.textContent = 'Gagal masuk: ' + (e && e.message ? e.message : e);
    } finally {
      el('btnMasuk').disabled = false;
      el('btnMasuk').textContent = 'Masuk';
    }
  }

  async function keluar() {
    bersihkanTokenSesi();
    try { await client.auth.signOut(); } catch (e) { /* abaikan */ }
    tampilLogin();
  }

  function init() {
    el('loginEmail').value = PANEL_CONFIG.EMAIL_BOS || '';
    if (typeof supabase === 'undefined' || !PANEL_CONFIG.SUPABASE_URL) {
      el('loginErr').textContent = 'Pustaka Supabase tidak termuat — periksa koneksi internet lalu muat ulang.';
      return;
    }
    client = supabase.createClient(PANEL_CONFIG.SUPABASE_URL, PANEL_CONFIG.SUPABASE_ANON_KEY);

    el('btnMasuk').addEventListener('click', masuk);
    el('loginSandi').addEventListener('keydown', function (e) { if (e.key === 'Enter') masuk(); });
    el('btnKeluar').addEventListener('click', keluar);

    el('btnBuatBaru').addEventListener('click', function () {
      var area = el('areaBuat');
      area.classList.toggle('hidden');
      el('areaUpdate').classList.add('hidden');
      if (!area.classList.contains('hidden')) el('namaBaru').focus();
    });

    el('slugBaru').addEventListener('input', function () {
      var v = el('slugBaru').value;
      var bersih = normalisasiSlugLive(v);
      if (v !== bersih) el('slugBaru').value = bersih;
    });

    // --- Token sesi wizard: HANYA di memori, tidak pernah disimpan -----------
    // Dibersihkan saat wizard selesai / batal / keluar. Field password di form
    // juga ikut dikosongkan.
    var tokenSesi = { sbp: null, github: null };
    function bersihkanTokenSesi() {
      tokenSesi.sbp = null;
      tokenSesi.github = null;
      ['hubTokenSbp', 'hubTokenGh'].forEach(function (id) {
        var f = el(id);
        if (f) f.value = '';
      });
    }

    function tulisLogWizard(id, status, pesan) {
      var logEl = el('logBuat');
      if (!logEl) return;
      logEl.classList.remove('hidden');
      var label = '';
      for (var i = 0; i < LANGKAH_WIZARD.length; i++) {
        if (LANGKAH_WIZARD[i].id === id) { label = LANGKAH_WIZARD[i].label; break; }
      }
      var baris = '';
      if (status === 'jalan') baris = '… ' + label + ' — ' + pesan;
      else if (status === 'ok') baris = '✓ ' + label + (pesan ? ' — ' + pesan : '');
      else if (status === 'gagal') baris = '✗ ' + label + ' — ' + pesan;
      else baris = '· ' + label + (pesan ? ' — ' + pesan : '');
      tulisLog(logEl, baris, status === 'ok' ? 'ok' : (status === 'jalan' ? 'jalan' : ''));
    }

    async function jalankanWizardUI() {
      var nama = el('namaBaru').value.trim();
      var slug = normalisasiSlug(el('slugBaru').value);
      var errEl = el('buatErr');
      errEl.textContent = '';
      if (!nama) { errEl.textContent = 'Nama toko wajib diisi.'; return; }
      var slugAda = daftarToko.map(function (t) { return t.slug; });
      var cekSlug = validasiSlug(slug, slugAda);
      if (!cekSlug.ok) { errEl.textContent = cekSlug.alasan; return; }
      var input = {
        nama: nama, slug: cekSlug.slug,
        projectUrl: el('hubUrl') ? el('hubUrl').value.trim() : '',
        publishableKey: el('hubKey') ? el('hubKey').value.trim() : '',
        sbpToken: el('hubTokenSbp').value.trim(),
        githubToken: el('hubTokenGh').value.trim()
      };
      // Token hanya masuk memori sesi; field form dikosongkan begitu dibaca.
      tokenSesi.sbp = input.sbpToken;
      tokenSesi.github = input.githubToken;
      el('logBuat').innerHTML = '';
      el('logBuat').classList.remove('hidden');
      el('hasilBuat').classList.add('hidden');
      el('btnJalankanWizard').disabled = true;
      el('btnBatalWizard').disabled = true;
      try {
        var hasil = await jalankanWizard(input, {
          fetchImpl: (typeof fetch !== 'undefined' ? fetch : null),
          tunggu: tungguMs,
          log: tulisLogWizard,
          simpanToko: function (toko) {
            var demo = muatTokoDemo();
            demo.push(toko);
            simpanTokoDemo(demo);
            muatDaftar();
            renderSemua();
          }
        });
        if (hasil.ok) {
          var hasilEl = el('hasilBuat');
          hasilEl.innerHTML = '<b>Berhasil — ' + esc(nama) + ' sudah live.</b><br>'
            + 'Link toko: <a href="' + esc(hasil.link) + '" target="_blank" rel="noopener">' + esc(hasil.link) + '</a><br>'
            + 'Proyek Supabase: ' + esc(hasil.ref) + ' · ' + esc(String(hasil.jumlahTabel)) + ' tabel · versi ' + esc(VERSI_TERBARU) + '<br>'
            + 'Toko bisa langsung dibuka dan login admin (buat pengguna Admin di Supabase Auth proyek itu bila belum ada).'
            + '<br><button class="btn btn-primary" style="margin-top:10px;" onclick="window.open(\'' + esc(hasil.link) + '\', \'_blank\')">Buka Toko &rsaquo;</button>';
          hasilEl.classList.remove('hidden');
          el('namaBaru').value = '';
          el('slugBaru').value = '';
          toast('Toko "' + nama + '" berhasil dibuat.');
        } else {
          errEl.textContent = hasil.pesan;
          toast('Wizard berhenti: ' + hasil.pesan);
        }
      } catch (e) {
        errEl.textContent = 'Wizard gagal: ' + (e && e.message ? e.message : e);
      } finally {
        bersihkanTokenSesi();
        el('btnJalankanWizard').disabled = false;
        el('btnBatalWizard').disabled = false;
      }
    }

    el('btnJalankanWizard').addEventListener('click', jalankanWizardUI);

    el('btnBatalWizard').addEventListener('click', function () {
      bersihkanTokenSesi();
      el('logBuat').innerHTML = '';
      el('logBuat').classList.add('hidden');
      el('hasilBuat').classList.add('hidden');
      el('buatErr').textContent = '';
      el('areaBuat').classList.add('hidden');
      toast('Dibatalkan — token sudah dihapus dari memori.');
    });

    el('linkSimulasi').addEventListener('click', async function (e) {
      e.preventDefault();
      var nama = el('namaBaru').value.trim();
      var slug = normalisasiSlug(el('slugBaru').value);
      var errEl = el('buatErr');
      errEl.textContent = '';
      if (!nama) { errEl.textContent = 'Nama toko wajib diisi (untuk simulasi).'; return; }
      var slugAda = daftarToko.map(function (t) { return t.slug; });
      var cek = validasiSlug(slug, slugAda);
      if (!cek.ok) { errEl.textContent = cek.alasan; return; }
      el('btnJalankanWizard').disabled = true;
      try {
        await simulasiProvisioning(nama, cek.slug);
        el('namaBaru').value = '';
        el('slugBaru').value = '';
      } finally {
        el('btnJalankanWizard').disabled = false;
      }
    });

    el('btnUpdateSemua').addEventListener('click', function () {
      el('areaBuat').classList.add('hidden');
      updateSemua();
    });

    el('daftarToko').addEventListener('click', function (e) {
      var b = e.target.closest('button');
      if (!b) return;
      if (b.dataset.buka) bukaToko(cariToko(b.dataset.buka));
      else if (b.dataset.update) updateSatu(b.dataset.update);
      else if (b.dataset.detail) tampilDetail(cariToko(b.dataset.detail));
    });

    // Sudah login sebelumnya? Langsung tampil panel.
    client.auth.getSession().then(function (res) {
      if (res && res.data && res.data.session) tampilPanel();
    }).catch(function () { /* tetap di layar login */ });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
}
