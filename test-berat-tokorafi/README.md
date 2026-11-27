# Seed SQL Test Berat — Toko Rafi

Seed data besar untuk menguji aplikasi ZPOS Toko Rafi
(https://zhopos.github.io/tokorafi/, proyek Supabase `rezinkaqlcpboeqvgjqc`)
dengan ribuan transaksi + banyak produk, lalu cek semua fungsi menu.

**Pilihan Bos (27 Nov 2026 23:03 WIB): dataset A — 1.000 produk + 2.000 transaksi.**
Dataset B (2.000 produk + 5.000 transaksi) disiapkan sebagai cadangan.
**Jalankan SATU dataset saja** (A atau B, jangan keduanya sekaligus).

## File

| File | Isi |
|---|---|
| `gen-tokorafi.js` | Generator (Node). Logika data didaur ulang dari `../gen-data.js` (PRNG seeded, deterministik — file hasil identik tiap run), diadaptasi ke skema real. Jalankan: `node gen-tokorafi.js` |
| `validasi-tokorafi.js` | Validator independen (Node). Parse skema + file SQL dari nol, cek kolom & invarian. Jalankan: `node validasi-tokorafi.js` |
| `A-*.sql` (12 file, 2.657 KB) | Dataset A — lihat urutan di bawah |
| `B-*.sql` (21 file, 6.423 KB) | Dataset B — lihat urutan di bawah |

Tidak ada file yang menulis ke database — semua file SQL dijalankan
manual lewat Supabase SQL Editor proyek tokorafi.

## Urutan jalankan (per dataset, berurutan, paste satu file per Run)

| # | File A | File B | Isi |
|---|---|---|---|
| 01 | `A-01-produk.sql` (179 KB) | `B-01-produk.sql` (358 KB) | Produk + edge case |
| 02 | `A-02-master.sql` (22 KB) | `B-02-master.sql` (38 KB) | Pelanggan, pemasok, promo, master kecil + UPDATE PLG-UMUM |
| 03 | `A-03-transaksi-01..07.sql` (7 file, ≤372 KB) | `B-03-transaksi-01..16.sql` (16 file, ≤372 KB) | Transaksi + detail (induk & detail satu unit) |
| 04 | `A-04-pembelian.sql` (41 KB) | `B-04-pembelian.sql` (82 KB) | Pembelian + detail + utang/cicilan |
| 05 | `A-05-kas-lain.sql` (36 KB) | `B-05-kas-lain.sql` (72 KB) | Kas + pengeluaran + retur + opname + logs |
| 06 | `A-06-stok.sql` (73 KB) | `B-06-stok.sql` (146 KB) | Stok cabang (CBG-UTAMA) + stok batch |

Semua `INSERT` memakai `ON CONFLICT DO NOTHING` (target PK-nya) —
aman dijalankan dua kali dan tidak bentrok dengan seed bawaan tokorafi
(TES Kopi, TRX-8250237222, CBG-UTAMA, PLG-UMUM). File terbesar 380.855 B
(batas yang dipakai generator: ~380 KB).

## Jumlah baris yang diharapkan (sudah terverifikasi dari parse file SQL)

| Tabel | Dataset A | Dataset B |
|---|---|---|
| produk | 1.000 | 2.000 |
| pelanggan | 104 | 204 |
| transaksi | 2.000 | 5.000 |
| transaksi_detail | 8.945 | 22.105 |
| pembelian / pembelian_detail | 50 / 135 | 100 / 264 |
| utang / cicilan_utang | 6 / 8 | 17 / 12 |
| kas | 150 | 300 |
| pengeluaran | 60 | 120 |
| retur | 20 | 40 |
| opname | 10 | 20 |
| logs | 10 | 20 |
| stok_cabang / stok_batch | 1.000 / 100 | 2.000 / 200 |
| promo / pemasok / pegawai | 6 / 3 / 3 | 6 / 3 / 3 |
| transaksi_cepat / transaksi_tertunda | 3 / 5 | 3 / 10 |
| cabang / tier_member / katalog / grup_produk / jenis_pembayaran / satuan / item_pengeluaran / terjemahan / bahan_baku | 1 / 2 / 1 / 8 / 10 / 5 / 4 / 12 / 2 | sama |

Cek cepat setelah semua file jalan (SQL Editor):

```sql
select count(*) from produk where id like 'PRD-A-%';          -- harap 1000
select count(*) from transaksi where id like 'TRX-A%';        -- harap 2000
select count(*) from transaksi_detail where transaksi_id like 'TRX-A%'; -- harap 8945
```

## Angka harapan di dashboard (untuk membandingkan saat cek menu)

| | Dataset A | Dataset B |
|---|---|---|
| Omzet total (28 hari) | Rp13.300.417.000 | Rp33.680.200.000 |
| Omzet hari ini (27 Nov 2026) | Rp560.751.500 (72 trx) | Rp1.164.926.000 (186 trx) |
| Piutang (Σ sisa) | Rp2.745.859.500 | Rp6.742.409.000 |
| Saldo kas akhir | Rp20.781.000 | Rp28.593.000 |
| Produk stok menipis (stok ≤ stok_minimum) | 503 | 985 |
| Pelanggan | 104 | 204 |

Omzet terlihat besar karena katalog didominasi HP (55% produk, harga
Rp300rb–5,3jt) — harga per item realistis, bukan salah hitung.
Tanggal transaksi tersebar 28 hari terakhir dari tanggal generate
(31 Okt–27 Nov 2026).

## Validasi (lokal, 27 Nov 2026 — BUKAN uji live)

`node validasi-tokorafi.js` → **451.512 passed, 0 failed**.
Yang diperiksa (validator mem-parse ulang file SQL + skema, independen
dari generator):

- (a) **Semua kolom INSERT ada di CREATE TABLE** `supabase-schema.sql`
  (37 tabel ter-parse). Kontrol negatif: satu kolom sengaja dirusak
  (`stok_sistem_X`) → validator gagal sesuai harapan, lalu file
  dikembalikan (md5 sama seperti semula).
- (b) Invarian: Σ detail.subtotal = total & Σ laba per transaksi;
  bayar + sisa = total + konsistensi status (Lunas/Kurang/Belum Dibayar);
  total_beli/piutang/terakhir_beli pelanggan = agregat transaksinya
  (PLG-UMUM + Rp10.000 trx seed bawaan, dicek juga nilai UPDATE-nya);
  saldo kas berjalan per baris + saldo akhir = Σ(masuk−keluar);
  stok_cabang = stok produk; Σ detail pembelian = total pembelian;
  utang hanya untuk pembelian diproses bersisa + pemasok.hutang =
  Σ sisa utang; retur nominal = qty × harga detail; opname selisih =
  fisik − sistem; total transaksi_tertunda = Σ item; FK dalam dataset
  (detail→produk/transaksi, stok→produk, retur→transaksi, dsb.);
  tanpa duplikat PK; tanpa CBG-CAB2; semua cabang_id = CBG-UTAMA;
  nama ber-apostrof lolos parse utuh (`Kopi O'Brien Special`,
  `D'Angelo Cell`, `Toko O'Brien`); kode_alternatif unik.
- (c) Hitung baris per tabel = tabel di atas (dari parse file SQL).
- Generator deterministik: dua run menghasilkan file byte-identik (md5).

## Ketidakcocokan skema yang ditemukan & solusinya

Logika `gen-data.js` (format SAMPLE_DATA) tidak sama persis dengan
skema real Postgres — semuanya diperbaiki di `gen-tokorafi.js`
(lihat header file itu, [A1]–[A12]):

1. Boolean `'YA'/'TIDAK'` → `true/false` (Postgres menolak `'YA'`).
2. `''` → `NULL` untuk kolom date/time/FK-nullable
   (`tanggal_lahir`, `terakhir_beli`, `promo.mulai/selesai/jam_*`,
   `promo_id`, `stok_batch.pembelian_id`).
3. JSONB kosong `''` → `'[]'::jsonb` / `'{}'::jsonb` (`''` bukan JSON).
4. Semua ID diberi huruf dataset (`PRD-A-…`, `TRX-A…`) — A dan B
   tidak bentrok, DELETE pembersihan bisa menarget persis.
5. **CBG-CAB2 dihapus**: tidak ada cabang kedua / stok CBG-CAB2.
6. Master yang sudah ada di seed tokorafi dipakai dengan **ID asli** +
   `ON CONFLICT DO NOTHING` (jadi no-op): `JBY-1..10`, `SAT-PCS/…`,
   `Silver/Gold`, 12 terjemahan, `IPG-…`, `CBG-UTAMA`, `PLG-UMUM`.
   (ID `gen-data.js` yang berbeda — `JB-1`, `SAT-1` — akan menambah
   baris duplikat, jadi tidak dipakai.)
7. `PLG-UMUM` totalnya = agregat transaksi seed ini **+ Rp10.000**
   trx seed bawaan, diterapkan lewat `UPDATE` (INSERT-nya kena
   `ON CONFLICT DO NOTHING`).
8. `pembelian_detail` didedup per pembelian (di `gen-data.js` tidak —
   duplikat akan hilang diam-diam oleh `ON CONFLICT` dan merusak Σ).
   Status pembelian diselaraskan dengan flag `diproses`.
9. `kode_alternatif` dibuat unik deterministik (di `gen-data.js` acak).
10. Pelanggan `Belum Beli` tidak pernah diberi transaksi.
11. Tambahan untuk cek menu: pengeluaran, retur, utang + cicilan
    (turunan pembelian diproses bersisa), transaksi_cepat/tertunda,
    opname, logs, pegawai.
12. `created_at` diisi = tanggal bisnis (transaksi/pembelian/kas/dll.)
    supaya urutan `created_at` = urutan tanggal.

Catatan perilaku data (bukan bug): stok produk **tidak** berkurang oleh
penjualan (stok adalah snapshot saat ini, sama seperti `sim-beban`);
baris `kas` berdiri sendiri (tidak terikat ke `transaksi.bayar`);
`transaksi_detail.modal` adalah modal **per unit**, bukan per baris;
`poin_didapat`/`poin_dipakai` transaksi = 0 (poin pelanggan acak 0–500
seperti `gen-data.js`).

## Yang TIDAK di-seed

`pengguna` (USR-ADMIN sudah ada), `pengaturan` (sudah ada),
`resep`, `riwayat_poin`, `daftar_teks`, `meja`, `pesanan_dapur`
(mode meja nonaktif), `lapor_bos` (manual saja, sesuai keputusan Bos).

## Pembersihan setelah tes selesai (hapus PERSIS baris seed itu saja)

Jalankan satu blok ini di SQL Editor tokorafi (ganti `A` → `B` bila
yang dijalankan dataset B). Urutan penting: anak dulu, induk kemudian.
Seed bawaan (TES Kopi, TRX-8250237222, CBG-UTAMA, PLG-UMUM,
JBY-1..10, SAT-*, tier, terjemahan, IPG-*) **tidak** tersentuh.

```sql
-- DATASET A — hapus persis baris seed A
delete from cicilan_utang where id like 'CIC-A-%';
delete from utang where id like 'UTG-A-%';
delete from retur where id like 'RTR-A-%';
delete from transaksi_detail where transaksi_id like 'TRX-A%';
delete from transaksi where id like 'TRX-A%';
delete from pembelian_detail where pembelian_id like 'PBL-A-%';
delete from pembelian where id like 'PBL-A-%';
delete from stok_batch where id like 'STB-A-%';
delete from stok_cabang where produk_id like 'PRD-A-%';
delete from opname where id like 'OPN-A-%';
delete from kas where id like 'KAS-A-%';
delete from pengeluaran where id like 'PNG-A-%';
delete from logs where id like 'LOG-A-%';
delete from transaksi_cepat where id like 'TCP-A-%';
delete from transaksi_tertunda where id like 'TTD-A-%';
delete from promo where id like 'PRM-A-%';
delete from pelanggan where id like 'PLG-A-%';
delete from pemasok where id like 'PMS-A-%';
delete from bahan_baku where id like 'BHN-A-%';
delete from pegawai where id like 'PGW-A-%';
delete from katalog where id like 'KTG-A-%';
delete from grup_produk where id like 'GRP-A-%';
delete from produk where id like 'PRD-A-%';
-- Kembalikan PLG-UMUM ke kondisi seed bawaan:
update pelanggan set total_beli = 0, piutang = 0, terakhir_beli = null where id = 'PLG-UMUM';
```

Untuk dataset B, ganti semua `'-A-'`/`'-A%'`/`'TRX-A%'` dengan
`'-B-'`/`'-B%'`/`'TRX-B%'` (pola yang sama, huruf B).
