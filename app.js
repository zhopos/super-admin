// ============================================================================
// Panel Super Admin v1 — Mode Demo
// ----------------------------------------------------------------------------
// Login Bos saja via Supabase Auth (proyek ZPOS Bos). TIDAK ada signup.
// Registry toko demo disimpan di localStorage browser Bos saja.
// Provisioning + update di v1 ini SIMULASI langkah-demi-langkah — proyek
// Supabase / repo sungguhan belum dibuat (butuh backend + token Management
// API + akun Supabase pembeli yang dibuat manual).
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
    validasiSlug: validasiSlug,
    gabungRegistry: gabungRegistry,
    buatTokoDemo: buatTokoDemo,
    hitungRingkasan: hitungRingkasan,
    LS_TOKO_DEMO: LS_TOKO_DEMO
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
      var bersih = normalisasiSlug(v);
      if (v !== bersih) el('slugBaru').value = bersih;
    });

    el('btnJalankanBuat').addEventListener('click', async function () {
      var nama = el('namaBaru').value.trim();
      var slug = el('slugBaru').value.trim();
      var errEl = el('buatErr');
      errEl.textContent = '';
      if (!nama) { errEl.textContent = 'Nama toko wajib diisi.'; return; }
      var slugAda = daftarToko.map(function (t) { return t.slug; });
      var cek = validasiSlug(slug, slugAda);
      if (!cek.ok) { errEl.textContent = cek.alasan; return; }
      el('btnJalankanBuat').disabled = true;
      try {
        await simulasiProvisioning(nama, cek.slug);
        el('namaBaru').value = '';
        el('slugBaru').value = '';
      } finally {
        el('btnJalankanBuat').disabled = false;
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
