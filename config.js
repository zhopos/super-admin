// ============================================================================
// Panel Super Admin v1 — konfigurasi (MODE DEMO)
// ----------------------------------------------------------------------------
// Yang ada di sini HANYA kunci publik (publishable key) — sama seperti
// config.js ZPOS: kunci ini memang dirancang untuk dipakai di frontend.
// TIDAK ada token rahasia, service_role key, atau token Management API
// di file ini maupun di panel mana pun.
// ============================================================================
var PANEL_CONFIG = {
  // Proyek Supabase ZPOS Bos (dipakai hanya untuk LOGIN Bos).
  SUPABASE_URL: 'https://jcbisimrlhcdajrfvdju.supabase.co',
  SUPABASE_ANON_KEY: 'sb_publishable_mU7kB48uOBg2hVa998krIQ_rgm2g-k5',
  // Relay Edge Function "relay-supabase" di proyek zho-pos sendiri.
  // Browser tidak bisa memanggil api.supabase.com langsung (CORS
  // diblokir — terbukti live 23:23 WIB), jadi wizard memanggil relay
  // ini; relay yang meneruskan ke api.supabase.com. URL publik, bukan
  // rahasia. Kunci anon dikirim panel di header `apikey` (BUKAN
  // Authorization Bearer — kunci publishable baru bukan JWT, Bearer
  // ditolak platform dengan "Invalid JWT").
  RELAY_URL: 'https://jcbisimrlhcdajrfvdju.supabase.co/functions/v1/relay-supabase',
  // Versi aplikasi ZPOS terbaru — jadi acuan "perlu update" di panel.
  VERSI_TERBARU: 'v4-45',
  // Akun login panel (sama dengan akun admin ZPOS Bos).
  EMAIL_BOS: 'admin@zpos.local'
};

if (typeof module !== 'undefined' && module.exports) { module.exports = PANEL_CONFIG; }
