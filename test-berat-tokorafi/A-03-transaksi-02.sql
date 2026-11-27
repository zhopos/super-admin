-- ============================================================================
-- TEST BERAT TOKORAFI — Dataset A (1.000 produk + 2.000 transaksi)
-- File: A-03-transaksi-02.sql  (bagian 2 dari 7 langkah ini — jalankan berurutan)
-- Isi: transaksi: 331, transaksi_detail: 1380
-- Transaksi 28 hari terakhir + detail (induk & detail satu unit).
-- Semua INSERT memakai ON CONFLICT DO NOTHING — aman dijalankan 2x dan
-- tidak bentrok dengan seed bawaan tokorafi (TES Kopi, TRX-8250237222,
-- CBG-UTAMA, PLG-UMUM). Dibuat oleh gen-tokorafi.js (deterministik).
-- ============================================================================

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01853', '2026-11-23 11:49:45+07:00', 'Lilis Suryani 4', 'Admin', 13042000, 0, 13042000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101852', '', '', '', 1561000, NULL, '2026-11-23 11:49:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01853', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A01853', 'PRD-A-KEL-0020', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01853', 'PRD-A-HP-0194', 'HP REALME C15 2/16 38996', 3, 940000, 2820000, 700000, 0, 720000, 'pcs'),
  ('TRX-A01853', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 1, 1700000, 1700000, 1500000, 0, 200000, 'pcs'),
  ('TRX-A01853', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs'),
  ('TRX-A01853', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 3, 33000, 99000, 22000, 0, 33000, 'pcs'),
  ('TRX-A01853', 'PRD-A-KEL-0030', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01891', '2026-11-23 11:48:52+07:00', 'Maya Putri 3', 'Admin', 9613000, 0, 9613000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101890', '', '', '', 1184500, NULL, '2026-11-23 11:48:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01891', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 2, 590000, 1180000, 400000, 0, 380000, 'pcs'),
  ('TRX-A01891', 'PRD-A-AKS-0057', 'Case Redmi 9A', 1, 37000, 37000, 26000, 0, 11000, 'pcs'),
  ('TRX-A01891', 'PRD-A-AKS-0088', 'Case Redmi 9A', 3, 43000, 129000, 34000, 0, 27000, 'pcs'),
  ('TRX-A01891', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A01891', 'PRD-A-KEL-0188', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01891', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01891', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 3, 39000, 117000, 35000, 0, 12000, 'pcs'),
  ('TRX-A01891', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00023', '2026-11-23 11:45:58+07:00', 'Maya Putri 4', 'Admin', 4790000, 0, 4790000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100022', '', '', '', 739000, NULL, '2026-11-23 11:45:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00023', 'PRD-A-AKS-0007', 'Case Redmi 9A', 1, 26000, 26000, 20000, 0, 6000, 'pcs'),
  ('TRX-A00023', 'PRD-A-AKS-0019', 'Kartu Perdana Telkomsel', 2, 18000, 36000, 13000, 0, 10000, 'pcs'),
  ('TRX-A00023', 'PRD-A-KEL-0040', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00023', 'PRD-A-HP-0229', 'HP REDMI Y55S 3/32 33051', 1, 1520000, 1520000, 1400000, 0, 120000, 'pcs'),
  ('TRX-A00023', 'PRD-A-HP-0391', 'HP INFINIX A03 3/32 13495', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A00023', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 2, 930000, 1860000, 800000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00898', '2026-11-23 11:43:34+07:00', 'Umum', 'Admin', 3978000, 0, 3978000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100897', '', '', '', 464000, NULL, '2026-11-23 11:43:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00898', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 1, 1940000, 1940000, 1700000, 0, 240000, 'pcs'),
  ('TRX-A00898', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A00898', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01096', '2026-11-23 11:42:22+07:00', 'Umum', 'Admin', 7572000, 0, 7572000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101095', '', '', '', 610000, NULL, '2026-11-23 11:42:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01096', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 1, 2720000, 2720000, 2600000, 0, 120000, 'pcs'),
  ('TRX-A01096', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 2, 1520000, 3040000, 1400000, 0, 240000, 'pcs'),
  ('TRX-A01096', 'PRD-A-AKS-0134', 'Case Oppo A57', 2, 35000, 70000, 28000, 0, 14000, 'pcs'),
  ('TRX-A01096', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 2, 55000, 110000, 49000, 0, 12000, 'pcs'),
  ('TRX-A01096', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 1, 1620000, 1620000, 1400000, 0, 220000, 'pcs'),
  ('TRX-A01096', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01566', '2026-11-23 11:35:21+07:00', 'Umum', 'Admin', 9645000, 0, 9645000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101565', '', '', '', 934500, NULL, '2026-11-23 11:35:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01566', 'PRD-A-KEL-0163', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A01566', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 1, 1540000, 1540000, 1400000, 0, 140000, 'pcs'),
  ('TRX-A01566', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 1, 2120000, 2120000, 1900000, 0, 220000, 'pcs'),
  ('TRX-A01566', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 3, 1990000, 5970000, 1800000, 0, 570000, 'pcs'),
  ('TRX-A01566', 'PRD-A-KEL-0122', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00392', '2026-11-23 11:18:45+07:00', 'Nur Halimah 2', 'Admin', 8580000, 0, 0, 8580000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100391', '', '', '', 480000, NULL, '2026-11-23 11:18:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00392', 'PRD-A-HP-0050', 'HP REALME S23 2/16 76169', 3, 2860000, 8580000, 2700000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00953', '2026-11-23 11:15:27+07:00', 'Rina Marlina 3', 'Admin', 8760000, 0, 8760000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100952', '', '', '', 660000, NULL, '2026-11-23 11:15:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00953', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 3, 2920000, 8760000, 2700000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01336', '2026-11-23 11:07:40+07:00', 'Fitri Rahmawati 2', 'Admin', 7563000, 0, 7563000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101335', '', '', '', 475000, NULL, '2026-11-23 11:07:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01336', 'PRD-A-AKS-0116', 'Memory Card 16GB', 1, 88000, 88000, 76000, 0, 12000, 'pcs'),
  ('TRX-A01336', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 3, 2290000, 6870000, 2200000, 0, 270000, 'pcs'),
  ('TRX-A01336', 'PRD-A-KEL-0159', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01336', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 1, 590000, 590000, 400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00251', '2026-11-23 10:59:58+07:00', 'Umum', 'Admin', 9985000, 0, 4992500, 4992500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100250', '', '', '', 733000, NULL, '2026-11-23 10:59:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00251', 'PRD-A-AKS-0144', 'Voucher Telkomsel 10GB', 3, 65000, 195000, 60000, 0, 15000, 'pcs'),
  ('TRX-A00251', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A00251', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 3, 1780000, 5340000, 1600000, 0, 540000, 'pcs'),
  ('TRX-A00251', 'PRD-A-KEL-0085', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00251', 'PRD-A-KEL-0048', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00515', '2026-11-23 10:28:18+07:00', 'Umum', 'Admin', 8784500, 0, 8784500, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100514', '', '', '', 1282100, NULL, '2026-11-23 10:28:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00515', 'PRD-A-KEL-0005', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00515', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 2, 1800000, 3600000, 1600000, 0, 400000, 'pcs'),
  ('TRX-A00515', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 3, 1260000, 3780000, 1100000, 0, 480000, 'pcs'),
  ('TRX-A00515', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 2, 700000, 1400000, 500000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01230', '2026-11-23 10:23:44+07:00', 'Umum', 'Admin', 5905000, 0, 2952500, 2952500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101229', '', '', '', 124000, NULL, '2026-11-23 10:23:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01230', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 3, 55000, 165000, 50000, 0, 15000, 'pcs'),
  ('TRX-A01230', 'PRD-A-KEL-0189', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01230', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 2, 2850000, 5700000, 2800000, 0, 100000, 'pcs'),
  ('TRX-A01230', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01230', 'PRD-A-KEL-0194', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01081', '2026-11-23 10:20:41+07:00', 'Umum', 'Admin', 10896000, 0, 10896000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101080', '', '', '', 1468000, NULL, '2026-11-23 10:20:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01081', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 1, 430000, 430000, 300000, 0, 130000, 'pcs'),
  ('TRX-A01081', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A01081', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 1, 670000, 670000, 500000, 0, 170000, 'pcs'),
  ('TRX-A01081', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 2, 1270000, 2540000, 1100000, 0, 340000, 'pcs'),
  ('TRX-A01081', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 2, 1050000, 2100000, 900000, 0, 300000, 'pcs'),
  ('TRX-A01081', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 2, 2550000, 5100000, 2300000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01198', '2026-11-23 10:11:56+07:00', 'Lilis Suryani 3', 'Admin', 5055000, 0, 5055000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101197', '', '', '', 430000, NULL, '2026-11-23 10:11:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01198', 'PRD-A-AKS-0031', 'Batre Samsung J1', 1, 58000, 58000, 50000, 0, 8000, 'pcs'),
  ('TRX-A01198', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 2, 14000, 28000, 9000, 0, 10000, 'pcs'),
  ('TRX-A01198', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 1, 15000, 15000, 10000, 0, 5000, 'pcs'),
  ('TRX-A01198', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A01198', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 2, 1870000, 3740000, 1700000, 0, 340000, 'pcs'),
  ('TRX-A01198', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 1, 54000, 54000, 47000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01669', '2026-11-23 09:35:47+07:00', 'Umum', 'Admin', 3547500, 0, 0, 3547500, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101668', '', '', '', 492000, NULL, '2026-11-23 09:35:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01669', 'PRD-A-KEL-0053', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01669', 'PRD-A-KEL-0079', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A01669', 'PRD-A-HP-0454', 'HP INFINIX A16 4/128 75084', 3, 1160000, 3480000, 1000000, 0, 480000, 'pcs'),
  ('TRX-A01669', 'PRD-A-KEL-0143', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01561', '2026-11-23 09:18:30+07:00', 'Umum', 'Admin', 68000, 0, 68000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101560', '', '', '', 14000, NULL, '2026-11-23 09:18:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01561', 'PRD-A-AKS-0231', 'Case Samsung A03', 2, 34000, 68000, 27000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00834', '2026-11-23 09:03:26+07:00', 'Andi Kurnia 5', 'Admin', 2253000, 0, 0, 2253000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100833', '', '', '', 268000, NULL, '2026-11-23 09:03:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00834', 'PRD-A-KEL-0033', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00834', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 2, 33000, 66000, 25000, 0, 16000, 'pcs'),
  ('TRX-A00834', 'PRD-A-KEL-0026', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00834', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 1, 2140000, 2140000, 1900000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01612', '2026-11-23 08:57:46+07:00', 'Nur Halimah 2', 'Admin', 7768000, 0, 7768000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101611', '', '', '', 408000, NULL, '2026-11-23 08:57:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01612', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 1, 1320000, 1320000, 1200000, 0, 120000, 'pcs'),
  ('TRX-A01612', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 3, 2070000, 6210000, 2000000, 0, 210000, 'pcs'),
  ('TRX-A01612', 'PRD-A-AKS-0166', 'Case Redmi 9A', 2, 25000, 50000, 10000, 0, 30000, 'pcs'),
  ('TRX-A01612', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 1, 41000, 41000, 34000, 0, 7000, 'pcs'),
  ('TRX-A01612', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01612', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 3, 41000, 123000, 30000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00401', '2026-11-23 08:55:13+07:00', 'Dedi Supriadi 3', 'Admin', 10538000, 0, 10538000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100400', '', '', '', 1265000, NULL, '2026-11-23 08:55:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00401', 'PRD-A-KEL-0109', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00401', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A00401', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 2, 38000, 76000, 23000, 0, 30000, 'pcs'),
  ('TRX-A00401', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 2, 1290000, 2580000, 1200000, 0, 180000, 'pcs'),
  ('TRX-A00401', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 1, 24000, 24000, 15000, 0, 9000, 'pcs'),
  ('TRX-A00401', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A00401', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 2, 1110000, 2220000, 900000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00528', '2026-11-23 08:28:37+07:00', 'Umum', 'Admin', 11095000, 0, 11095000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100527', '', '', '', 709000, NULL, '2026-11-23 08:28:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00528', 'PRD-A-AKS-0158', 'Kabel Charger 2m', 1, 24000, 24000, 11000, 0, 13000, 'pcs'),
  ('TRX-A00528', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 3, 9000, 27000, 6000, 0, 9000, 'pcs'),
  ('TRX-A00528', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 3, 28000, 84000, 19000, 0, 27000, 'pcs'),
  ('TRX-A00528', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs'),
  ('TRX-A00528', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 1, 2560000, 2560000, 2500000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01850', '2026-11-23 08:22:19+07:00', 'Umum', 'Admin', 13408000, 0, 13408000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101849', '', '', '', 1434000, NULL, '2026-11-23 08:22:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01850', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs'),
  ('TRX-A01850', 'PRD-A-AKS-0156', 'Handsfree Oppo', 1, 39000, 39000, 33000, 0, 6000, 'pcs'),
  ('TRX-A01850', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A01850', 'PRD-A-KEL-0011', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01850', 'PRD-A-KEL-0185', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01850', 'PRD-A-AKS-0063', 'Case Samsung A03', 1, 40000, 40000, 35000, 0, 5000, 'pcs'),
  ('TRX-A01850', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A01850', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 3, 2190000, 6570000, 2000000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01636', '2026-11-23 08:13:12+07:00', 'Lilis Suryani 4', 'Admin', 13770000, 0, 13770000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101635', '', '', '', 1170000, NULL, '2026-11-23 08:13:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01636', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 3, 1680000, 5040000, 1500000, 0, 540000, 'pcs'),
  ('TRX-A01636', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 3, 2910000, 8730000, 2700000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01479', '2026-11-23 08:06:30+07:00', 'Agus Wijaya 3', 'Admin', 353000, 0, 176500, 176500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101478', '', '', '', 65000, NULL, '2026-11-23 08:06:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01479', 'PRD-A-KEL-0159', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01479', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 3, 73000, 219000, 58000, 0, 45000, 'pcs'),
  ('TRX-A01479', 'PRD-A-KEL-0172', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01479', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00609', '2026-11-23 08:02:40+07:00', 'Fitri Rahmawati 2', 'Admin', 70500, 0, 70500, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100608', '', '', '', 29100, NULL, '2026-11-23 08:02:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00609', 'PRD-A-KEL-0043', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00609', 'PRD-A-KEL-0038', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00609', 'PRD-A-AKS-0043', 'Case Oppo A57', 1, 28000, 28000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00609', 'PRD-A-KEL-0033', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00584', '2026-11-22 20:45:01+07:00', 'Umum', 'Admin', 4689000, 0, 4689000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100583', '', '', '', 412500, NULL, '2026-11-22 20:45:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00584', 'PRD-A-KEL-0174', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00584', 'PRD-A-HP-0017', 'HP SAMSUNG Y91C 2/32 91420', 1, 760000, 760000, 700000, 0, 60000, 'pcs'),
  ('TRX-A00584', 'PRD-A-KEL-0159', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00584', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 1, 2290000, 2290000, 2200000, 0, 90000, 'pcs'),
  ('TRX-A00584', 'PRD-A-KEL-0132', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00584', 'PRD-A-KEL-0026', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00584', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A00584', 'PRD-A-KEL-0031', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01715', '2026-11-22 20:28:12+07:00', 'Rudi Hartono 2', 'Admin', 6778000, 0, 6778000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101714', '', '', '', 859500, NULL, '2026-11-22 20:28:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01715', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A01715', 'PRD-A-KEL-0118', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01715', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 3, 550000, 1650000, 400000, 0, 450000, 'pcs'),
  ('TRX-A01715', 'PRD-A-KEL-0128', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01715', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 1, 1600000, 1600000, 1500000, 0, 100000, 'pcs'),
  ('TRX-A01715', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00346', '2026-11-22 20:13:43+07:00', 'Rudi Hartono 3', 'Admin', 2703000, 0, 2703000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100345', '', '', '', 201500, NULL, '2026-11-22 20:13:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00346', 'PRD-A-KEL-0122', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00346', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 1, 2700000, 2700000, 2500000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01602', '2026-11-22 20:10:06+07:00', 'Eko Saputra 2', 'Admin', 102000, 0, 102000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101601', '', '', '', 39000, NULL, '2026-11-22 20:10:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01602', 'PRD-A-AKS-0139', 'Case Samsung A03', 3, 34000, 102000, 21000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00357', '2026-11-22 20:09:09+07:00', 'Ayu Lestari', 'Admin', 7814000, 0, 3907000, 3907000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100356', '', '', '', 402000, NULL, '2026-11-22 20:09:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00357', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs'),
  ('TRX-A00357', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A00357', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 2, 54000, 108000, 39000, 0, 30000, 'pcs'),
  ('TRX-A00357', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 2, 2090000, 4180000, 2000000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00903', '2026-11-22 20:06:47+07:00', 'Sri Wahyuni 4', 'Admin', 11453000, 0, 11453000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100902', '', '', '', 1040000, NULL, '2026-11-22 20:06:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00903', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A00903', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 3, 2960000, 8880000, 2800000, 0, 480000, 'pcs'),
  ('TRX-A00903', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 2, 1040000, 2080000, 800000, 0, 480000, 'pcs'),
  ('TRX-A00903', 'PRD-A-KEL-0010', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00903', 'PRD-A-AKS-0195', 'Memory Card 16GB', 2, 70000, 140000, 65000, 0, 10000, 'pcs'),
  ('TRX-A00903', 'PRD-A-AKS-0224', 'Case Samsung A03', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A00903', 'PRD-A-KEL-0130', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00903', 'PRD-A-KEL-0073', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01885', '2026-11-22 20:00:39+07:00', 'Eko Saputra', 'Admin', 21385000, 0, 10692500, 10692500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101884', '', '', '', 1323000, NULL, '2026-11-22 20:00:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01885', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 3, 1370000, 4110000, 1300000, 0, 210000, 'pcs'),
  ('TRX-A01885', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 2, 33000, 66000, 25000, 0, 16000, 'pcs'),
  ('TRX-A01885', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01885', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs'),
  ('TRX-A01885', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 1, 630000, 630000, 500000, 0, 130000, 'pcs'),
  ('TRX-A01885', 'PRD-A-KEL-0114', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01885', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 2, 1640000, 3280000, 1500000, 0, 280000, 'pcs'),
  ('TRX-A01885', 'PRD-A-AKS-0041', 'Tempered Glass Vivo', 1, 19000, 19000, 5000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00156', '2026-11-22 19:15:58+07:00', 'Umum', 'Admin', 9250000, 0, 4625000, 4625000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100155', '', '', '', 550000, NULL, '2026-11-22 19:15:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00156', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 3, 1570000, 4710000, 1500000, 0, 210000, 'pcs'),
  ('TRX-A00156', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 2, 2270000, 4540000, 2100000, 0, 340000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00590', '2026-11-22 19:07:58+07:00', 'Nur Halimah 5', 'Admin', 71000, 0, 35500, 35500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100589', '', '', '', 32000, NULL, '2026-11-22 19:07:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00590', 'PRD-A-KEL-0030', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00590', 'PRD-A-KEL-0075', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01787', '2026-11-22 19:05:14+07:00', 'Umum', 'Admin', 7481000, 0, 7481000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101786', '', '', '', 810000, NULL, '2026-11-22 19:05:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01787', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A01787', 'PRD-A-AKS-0021', 'Handsfree Samsung', 3, 18000, 54000, 10000, 0, 24000, 'pcs'),
  ('TRX-A01787', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 3, 15000, 45000, 8000, 0, 21000, 'pcs'),
  ('TRX-A01787', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 3, 21000, 63000, 17000, 0, 12000, 'pcs'),
  ('TRX-A01787', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 2, 460000, 920000, 400000, 0, 120000, 'pcs'),
  ('TRX-A01787', 'PRD-A-AKS-0120', 'Batre Oppo A57', 3, 33000, 99000, 22000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01203', '2026-11-22 19:01:21+07:00', 'Dewi Lestari 4', 'Admin', 3922000, 0, 3922000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101202', '', '', '', 314000, NULL, '2026-11-22 19:01:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01203', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 1, 1040000, 1040000, 900000, 0, 140000, 'pcs'),
  ('TRX-A01203', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 1, 780000, 780000, 700000, 0, 80000, 'pcs'),
  ('TRX-A01203', 'PRD-A-KEL-0022', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01203', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01927', '2026-11-22 18:16:36+07:00', 'Umum', 'Admin', 52000, 0, 52000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101926', '', '', '', 20000, NULL, '2026-11-22 18:16:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01927', 'PRD-A-KEL-0182', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01927', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 1, 34000, 34000, 20000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01580', '2026-11-22 18:10:18+07:00', 'Umum', 'Admin', 111000, 0, 111000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101579', '', '', '', 50000, NULL, '2026-11-22 18:10:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01580', 'PRD-A-KEL-0139', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01580', 'PRD-A-KEL-0166', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01580', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01580', 'PRD-A-AKS-0158', 'Kabel Charger 2m', 3, 24000, 72000, 11000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00420', '2026-11-22 18:08:57+07:00', 'Rudi Hartono 4', 'Admin', 221000, 0, 221000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100419', '', '', '', 51000, NULL, '2026-11-22 18:08:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00420', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00420', 'PRD-A-AKS-0038', 'Case Vivo Y20', 2, 40000, 80000, 26000, 0, 28000, 'pcs'),
  ('TRX-A00420', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 2, 27000, 54000, 23000, 0, 8000, 'pcs'),
  ('TRX-A00420', 'PRD-A-AKS-0102', 'Case Vivo Y20', 1, 36000, 36000, 30000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01777', '2026-11-22 18:01:56+07:00', 'Intan Permata 3', 'Admin', 4726000, 0, 4726000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101776', '', '', '', 399000, NULL, '2026-11-22 18:01:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01777', 'PRD-A-KEL-0037', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A01777', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 2, 1590000, 3180000, 1500000, 0, 180000, 'pcs'),
  ('TRX-A01777', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 1, 1510000, 1510000, 1300000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00716', '2026-11-22 17:51:47+07:00', 'Umum', 'Admin', 7133000, 0, 7133000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100715', '', '', '', 485000, NULL, '2026-11-22 17:51:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00716', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 3, 1910000, 5730000, 1800000, 0, 330000, 'pcs'),
  ('TRX-A00716', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 2, 56000, 112000, 45000, 0, 22000, 'pcs'),
  ('TRX-A00716', 'PRD-A-KEL-0026', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00716', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 1, 1070000, 1070000, 1000000, 0, 70000, 'pcs'),
  ('TRX-A00716', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 2, 30000, 60000, 17000, 0, 26000, 'pcs'),
  ('TRX-A00716', 'PRD-A-AKS-0150', 'Memory Card 16GB', 2, 55000, 110000, 41000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01816', '2026-11-22 17:06:47+07:00', 'Hendra Gunawan 3', 'Admin', 7650000, 0, 7650000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101815', '', '', '', 750000, NULL, '2026-11-22 17:06:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01816', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 3, 2550000, 7650000, 2300000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00803', '2026-11-22 16:59:56+07:00', 'Rina Marlina 5', 'Admin', 3820000, 0, 3820000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100802', '', '', '', 220000, NULL, '2026-11-22 16:59:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00803', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 2, 1910000, 3820000, 1800000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01238', '2026-11-22 16:58:40+07:00', 'Umum', 'Admin', 748000, 0, 748000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101237', '', '', '', 267000, NULL, '2026-11-22 16:58:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01238', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 3, 31000, 93000, 17000, 0, 42000, 'pcs'),
  ('TRX-A01238', 'PRD-A-AKS-0166', 'Case Redmi 9A', 3, 25000, 75000, 10000, 0, 45000, 'pcs'),
  ('TRX-A01238', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 1, 580000, 580000, 400000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01239', '2026-11-22 16:57:18+07:00', 'Siti Aisyah 2', 'Admin', 6058000, 0, 3029000, 3029000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101238', '', '', '', 752000, NULL, '2026-11-22 16:57:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01239', 'PRD-A-KEL-0121', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01239', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 2, 590000, 1180000, 400000, 0, 380000, 'pcs'),
  ('TRX-A01239', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 1, 1590000, 1590000, 1500000, 0, 90000, 'pcs'),
  ('TRX-A01239', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 2, 1640000, 3280000, 1500000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00015', '2026-11-22 16:56:52+07:00', 'Umum', 'Admin', 6553000, 0, 3276500, 3276500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100014', '', '', '', 1290000, NULL, '2026-11-22 16:56:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00015', 'PRD-A-HP-0254', 'HP VIVO J5 2/16 85377', 3, 1000000, 3000000, 800000, 0, 600000, 'pcs'),
  ('TRX-A00015', 'PRD-A-AKS-0184', 'Kabel Charger 2m', 2, 45000, 90000, 32000, 0, 26000, 'pcs'),
  ('TRX-A00015', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 1, 38000, 38000, 23000, 0, 15000, 'pcs'),
  ('TRX-A00015', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs'),
  ('TRX-A00015', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 1, 41000, 41000, 34000, 0, 7000, 'pcs'),
  ('TRX-A00015', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 3, 1100000, 3300000, 900000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00184', '2026-11-22 16:50:40+07:00', 'Eko Saputra 4', 'Admin', 10634000, 0, 10634000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100183', '', '', '', 969000, NULL, '2026-11-22 16:50:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00184', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs'),
  ('TRX-A00184', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00184', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 2, 2730000, 5460000, 2500000, 0, 460000, 'pcs'),
  ('TRX-A00184', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 1, 1800000, 1800000, 1600000, 0, 200000, 'pcs'),
  ('TRX-A00184', 'PRD-A-KEL-0024', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01929', '2026-11-22 16:18:26+07:00', 'Umum', 'Admin', 1560000, 0, 1560000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101928', '', '', '', 160000, NULL, '2026-11-22 16:18:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01929', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 2, 780000, 1560000, 700000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00407', '2026-11-22 16:14:13+07:00', 'Siti Aisyah 2', 'Admin', 4724000, 0, 4724000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100406', '', '', '', 436000, NULL, '2026-11-22 16:14:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00407', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00407', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 3, 1540000, 4620000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A00407', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00682', '2026-11-22 16:12:09+07:00', 'Eko Saputra 4', 'Admin', 6882000, 0, 3441000, 3441000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100681', '', '', '', 793000, NULL, '2026-11-22 16:12:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00682', 'PRD-A-KEL-0186', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A00682', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A00682', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A00682', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs'),
  ('TRX-A00682', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00682', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 2, 830000, 1660000, 600000, 0, 460000, 'pcs'),
  ('TRX-A00682', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 3, 15000, 45000, 10000, 0, 15000, 'pcs'),
  ('TRX-A00682', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 2, 73000, 146000, 58000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00152', '2026-11-22 16:00:25+07:00', 'Ayu Lestari 2', 'Admin', 177000, 0, 177000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100151', '', '', '', 45000, NULL, '2026-11-22 16:00:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00152', 'PRD-A-KEL-0174', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00152', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 3, 41000, 123000, 30000, 0, 33000, 'pcs'),
  ('TRX-A00152', 'PRD-A-KEL-0175', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01706', '2026-11-22 15:54:04+07:00', 'Fajar Nugroho 3', 'Admin', 9782000, 0, 9782000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101705', '', '', '', 971500, NULL, '2026-11-22 15:54:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01706', 'PRD-A-KEL-0188', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01706', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A01706', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 1, 18000, 18000, 8000, 0, 10000, 'pcs'),
  ('TRX-A01706', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 3, 1710000, 5130000, 1500000, 0, 630000, 'pcs'),
  ('TRX-A01706', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 1, 1660000, 1660000, 1500000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01122', '2026-11-22 15:53:54+07:00', 'Andi Kurnia 2', 'Admin', 7190000, 0, 7190000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101121', '', '', '', 708000, NULL, '2026-11-22 15:53:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01122', 'PRD-A-AKS-0079', 'Handsfree Oppo', 1, 51000, 51000, 43000, 0, 8000, 'pcs'),
  ('TRX-A01122', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A01122', 'PRD-A-KEL-0052', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01122', 'PRD-A-KEL-0104', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01122', 'PRD-A-KEL-0047', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01122', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 2, 2020000, 4040000, 1800000, 0, 440000, 'pcs'),
  ('TRX-A01122', 'PRD-A-AKS-0023', 'Memory Card 32GB', 1, 53000, 53000, 45000, 0, 8000, 'pcs'),
  ('TRX-A01122', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01461', '2026-11-22 15:27:03+07:00', 'Eko Saputra 2', 'Admin', 3139000, 0, 1569500, 1569500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101460', '', '', '', 219000, NULL, '2026-11-22 15:27:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01461', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs'),
  ('TRX-A01461', 'PRD-A-KEL-0136', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01461', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 1, 890000, 890000, 800000, 0, 90000, 'pcs'),
  ('TRX-A01461', 'PRD-A-KEL-0119', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01461', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A01461', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01716', '2026-11-22 15:20:59+07:00', 'Eko Saputra', 'Admin', 5720000, 0, 0, 5720000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101715', '', '', '', 720000, NULL, '2026-11-22 15:20:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01716', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 3, 1520000, 4560000, 1300000, 0, 660000, 'pcs'),
  ('TRX-A01716', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01003', '2026-11-22 14:45:57+07:00', 'Umum', 'Admin', 30000, 0, 30000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101002', '', '', '', 12000, NULL, '2026-11-22 14:45:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01003', 'PRD-A-AKS-0021', 'Handsfree Samsung', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A01003', 'PRD-A-KEL-0016', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01003', 'PRD-A-KEL-0141', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01668', '2026-11-22 14:36:03+07:00', 'Umum', 'Admin', 8088000, 0, 8088000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101667', '', '', '', 742000, NULL, '2026-11-22 14:36:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01668', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A01668', 'PRD-A-KEL-0121', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01668', 'PRD-A-AKS-0217', 'Batre Samsung J1', 3, 47000, 141000, 42000, 0, 15000, 'pcs'),
  ('TRX-A01668', 'PRD-A-KEL-0158', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00448', '2026-11-22 14:31:49+07:00', 'Rina Marlina 4', 'Admin', 8261000, 0, 8261000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100447', '', '', '', 902000, NULL, '2026-11-22 14:31:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00448', 'PRD-A-AKS-0052', 'Memory Card 32GB', 1, 95000, 95000, 89000, 0, 6000, 'pcs'),
  ('TRX-A00448', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A00448', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 2, 43000, 86000, 35000, 0, 16000, 'pcs'),
  ('TRX-A00448', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 1, 1090000, 1090000, 900000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01317', '2026-11-22 14:17:35+07:00', 'Rudi Hartono 4', 'Admin', 3897000, 0, 3897000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101316', '', '', '', 584000, NULL, '2026-11-22 14:17:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01317', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 3, 1290000, 3870000, 1100000, 0, 570000, 'pcs'),
  ('TRX-A01317', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 1, 27000, 27000, 13000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00768', '2026-11-22 13:45:38+07:00', 'Umum', 'Admin', 6233000, 0, 3116500, 3116500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100767', '', '', '', 797400, NULL, '2026-11-22 13:45:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00768', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 3, 33000, 99000, 28000, 0, 15000, 'pcs'),
  ('TRX-A00768', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 1, 500000, 500000, 300000, 0, 200000, 'pcs'),
  ('TRX-A00768', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 2, 1680000, 3360000, 1500000, 0, 360000, 'pcs'),
  ('TRX-A00768', 'PRD-A-KEL-0074', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00768', 'PRD-A-KEL-0038', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00768', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs'),
  ('TRX-A00768', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 3, 23000, 69000, 14000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01599', '2026-11-22 13:44:42+07:00', 'Umum', 'Admin', 6824000, 0, 6824000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101598', '', '', '', 1102000, NULL, '2026-11-22 13:44:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01599', 'PRD-A-AKS-0199', 'Handsfree Xiaomi', 2, 38000, 76000, 29000, 0, 18000, 'pcs'),
  ('TRX-A01599', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 3, 1510000, 4530000, 1300000, 0, 630000, 'pcs'),
  ('TRX-A01599', 'PRD-A-KEL-0130', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01599', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 2, 520000, 1040000, 400000, 0, 240000, 'pcs'),
  ('TRX-A01599', 'PRD-A-AKS-0055', 'Memory Card 16GB', 1, 66000, 66000, 56000, 0, 10000, 'pcs'),
  ('TRX-A01599', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 1, 1100000, 1100000, 900000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01616', '2026-11-22 13:11:01+07:00', 'Umum', 'Admin', 8552000, 0, 8552000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101615', '', '', '', 827000, NULL, '2026-11-22 13:11:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01616', 'PRD-A-AKS-0172', 'Case Samsung A03', 1, 24000, 24000, 20000, 0, 4000, 'pcs'),
  ('TRX-A01616', 'PRD-A-KEL-0043', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01616', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 1, 2160000, 2160000, 2000000, 0, 160000, 'pcs'),
  ('TRX-A01616', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00172', '2026-11-22 13:09:54+07:00', 'Maya Putri 3', 'Admin', 865000, 0, 865000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100171', '', '', '', 275500, NULL, '2026-11-22 13:09:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00172', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A00172', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 1, 36000, 36000, 25000, 0, 11000, 'pcs'),
  ('TRX-A00172', 'PRD-A-HP-0231', 'HP REALME A03 4/128 26346', 1, 580000, 580000, 400000, 0, 180000, 'pcs'),
  ('TRX-A00172', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 3, 31000, 93000, 17000, 0, 42000, 'pcs'),
  ('TRX-A00172', 'PRD-A-KEL-0010', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00172', 'PRD-A-AKS-0184', 'Kabel Charger 2m', 3, 45000, 135000, 32000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01746', '2026-11-22 13:03:03+07:00', 'Umum', 'Admin', 13821000, 0, 13821000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101745', '', '', '', 1188000, NULL, '2026-11-22 13:03:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01746', 'PRD-A-KEL-0111', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01746', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 2, 1540000, 3080000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A01746', 'PRD-A-KEL-0169', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01746', 'PRD-A-KEL-0110', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01746', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 2, 1420000, 2840000, 1200000, 0, 440000, 'pcs'),
  ('TRX-A01746', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 3, 2580000, 7740000, 2500000, 0, 240000, 'pcs'),
  ('TRX-A01746', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 1, 25000, 25000, 13000, 0, 12000, 'pcs'),
  ('TRX-A01746', 'PRD-A-AKS-0045', 'Memory Card 16GB', 2, 58000, 116000, 53000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01387', '2026-11-22 12:56:45+07:00', 'Umum', 'Admin', 7915000, 0, 7915000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101386', '', '', '', 336000, NULL, '2026-11-22 12:56:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01387', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 3, 25000, 75000, 15000, 0, 30000, 'pcs'),
  ('TRX-A01387', 'PRD-A-KEL-0072', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01387', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 3, 2600000, 7800000, 2500000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01869', '2026-11-22 12:55:41+07:00', 'Intan Permata 4', 'Admin', 15365000, 0, 7682500, 7682500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101868', '', '', '', 1647000, NULL, '2026-11-22 12:55:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01869', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 2, 1810000, 3620000, 1600000, 0, 420000, 'pcs'),
  ('TRX-A01869', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 2, 1110000, 2220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01869', 'PRD-A-KEL-0173', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01869', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 1, 2550000, 2550000, 2300000, 0, 250000, 'pcs'),
  ('TRX-A01869', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 1, 740000, 740000, 600000, 0, 140000, 'pcs'),
  ('TRX-A01869', 'PRD-A-KEL-0016', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01869', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 3, 1540000, 4620000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A01869', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00552', '2026-11-22 12:38:19+07:00', 'Fajar Nugroho 5', 'Admin', 2762000, 0, 1381000, 1381000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100551', '', '', '', 242000, NULL, '2026-11-22 12:38:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00552', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 3, 55000, 165000, 49000, 0, 18000, 'pcs'),
  ('TRX-A00552', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 1, 2490000, 2490000, 2300000, 0, 190000, 'pcs'),
  ('TRX-A00552', 'PRD-A-KEL-0112', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00552', 'PRD-A-KEL-0158', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00552', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 21000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01518', '2026-11-22 12:29:02+07:00', 'Umum', 'Admin', 3749000, 0, 3749000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101517', '', '', '', 642500, NULL, '2026-11-22 12:29:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01518', 'PRD-A-AKS-0064', 'Case Redmi 9A', 2, 38000, 76000, 25000, 0, 26000, 'pcs'),
  ('TRX-A01518', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 2, 41000, 82000, 28000, 0, 26000, 'pcs'),
  ('TRX-A01518', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 1, 1620000, 1620000, 1400000, 0, 220000, 'pcs'),
  ('TRX-A01518', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs'),
  ('TRX-A01518', 'PRD-A-KEL-0122', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01518', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 1, 580000, 580000, 400000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00095', '2026-11-22 12:24:42+07:00', 'Intan Permata 3', 'Admin', 267000, 0, 133500, 133500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100094', '', '', '', 57000, NULL, '2026-11-22 12:24:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00095', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A00095', 'PRD-A-AKS-0055', 'Memory Card 16GB', 3, 66000, 198000, 56000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01051', '2026-11-22 12:13:37+07:00', 'Fitri Rahmawati 4', 'Admin', 3666000, 0, 3666000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101050', '', '', '', 505000, NULL, '2026-11-22 12:13:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01051', 'PRD-A-KEL-0189', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01051', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 2, 910000, 1820000, 700000, 0, 420000, 'pcs'),
  ('TRX-A01051', 'PRD-A-KEL-0056', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01051', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 1, 1760000, 1760000, 1700000, 0, 60000, 'pcs'),
  ('TRX-A01051', 'PRD-A-AKS-0064', 'Case Redmi 9A', 1, 38000, 38000, 25000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00472', '2026-11-22 11:59:00+07:00', 'Umum', 'Admin', 25296000, 0, 25296000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100471', '', '', '', 1565000, NULL, '2026-11-22 11:59:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00472', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A00472', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 2, 2700000, 5400000, 2500000, 0, 400000, 'pcs'),
  ('TRX-A00472', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 2, 1880000, 3760000, 1800000, 0, 160000, 'pcs'),
  ('TRX-A00472', 'PRD-A-AKS-0091', 'Case Oppo A57', 1, 22000, 22000, 11000, 0, 11000, 'pcs'),
  ('TRX-A00472', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 2, 460000, 920000, 400000, 0, 120000, 'pcs'),
  ('TRX-A00472', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 3, 2600000, 7800000, 2400000, 0, 600000, 'pcs'),
  ('TRX-A00472', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 2, 2590000, 5180000, 2500000, 0, 180000, 'pcs'),
  ('TRX-A00472', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 1, 34000, 34000, 20000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00171', '2026-11-22 11:50:59+07:00', 'Toko O''Brien', 'Admin', 6081000, 0, 6081000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100170', '', '', '', 658000, NULL, '2026-11-22 11:50:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00171', 'PRD-A-AKS-0201', 'Memory Card 32GB', 3, 38000, 114000, 27000, 0, 33000, 'pcs'),
  ('TRX-A00171', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00171', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00171', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A00171', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 3, 1860000, 5580000, 1700000, 0, 480000, 'pcs'),
  ('TRX-A00171', 'PRD-A-KEL-0160', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00171', 'PRD-A-AKS-0099', 'Tempered Glass Xiaomi', 2, 27000, 54000, 16000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01306', '2026-11-22 11:23:58+07:00', 'Umum', 'Admin', 280000, 0, 280000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101305', '', '', '', 98000, NULL, '2026-11-22 11:23:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01306', 'PRD-A-AKS-0150', 'Memory Card 16GB', 2, 55000, 110000, 41000, 0, 28000, 'pcs'),
  ('TRX-A01306', 'PRD-A-KEL-0108', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01306', 'PRD-A-KEL-0075', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00721', '2026-11-22 11:11:46+07:00', 'Umum', 'Admin', 1238500, 0, 619250, 619250, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100720', '', '', '', 232000, NULL, '2026-11-22 11:11:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00721', 'PRD-A-KEL-0079', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00721', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 1, 1110000, 1110000, 900000, 0, 210000, 'pcs'),
  ('TRX-A00721', 'PRD-A-KEL-0192', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00721', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 3, 18000, 54000, 14000, 0, 12000, 'pcs'),
  ('TRX-A00721', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00922', '2026-11-22 10:42:43+07:00', 'Umum', 'Admin', 6050000, 0, 3025000, 3025000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100921', '', '', '', 750000, NULL, '2026-11-22 10:42:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00922', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 2, 1070000, 2140000, 1000000, 0, 140000, 'pcs'),
  ('TRX-A00922', 'PRD-A-HP-0348', 'HP REALME C15 8/256 21999', 1, 910000, 910000, 700000, 0, 210000, 'pcs'),
  ('TRX-A00922', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 2, 1500000, 3000000, 1300000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00780', '2026-11-22 10:21:50+07:00', 'Umum', 'Admin', 6026000, 0, 3013000, 3013000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100779', '', '', '', 753000, NULL, '2026-11-22 10:21:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00780', 'PRD-A-AKS-0236', 'Memory Card 64GB', 3, 72000, 216000, 63000, 0, 27000, 'pcs'),
  ('TRX-A00780', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 3, 1420000, 4260000, 1200000, 0, 660000, 'pcs'),
  ('TRX-A00780', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 2, 33000, 66000, 28000, 0, 10000, 'pcs'),
  ('TRX-A00780', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 1, 1450000, 1450000, 1400000, 0, 50000, 'pcs'),
  ('TRX-A00780', 'PRD-A-AKS-0149', 'Case Samsung A03', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01376', '2026-11-22 10:16:33+07:00', 'Intan Permata 3', 'Admin', 36000, 0, 18000, 18000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101375', '', '', '', 4000, NULL, '2026-11-22 10:16:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01376', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01785', '2026-11-22 09:35:19+07:00', 'Lilis Suryani', 'Admin', 3764000, 0, 3764000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101784', '', '', '', 471000, NULL, '2026-11-22 09:35:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01785', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A01785', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 1, 1290000, 1290000, 1100000, 0, 190000, 'pcs'),
  ('TRX-A01785', 'PRD-A-KEL-0021', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01785', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01785', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 1, 2350000, 2350000, 2100000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01307', '2026-11-22 09:34:09+07:00', 'Rina Marlina 3', 'Admin', 1202000, 0, 601000, 601000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101306', '', '', '', 68000, NULL, '2026-11-22 09:34:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01307', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A01307', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00098', '2026-11-22 09:21:30+07:00', 'Rina Marlina 4', 'Admin', 8850000, 0, 8850000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100097', '', '', '', 856000, NULL, '2026-11-22 09:21:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00098', 'PRD-A-AKS-0179', 'Memory Card 32GB', 1, 102000, 102000, 88000, 0, 14000, 'pcs'),
  ('TRX-A00098', 'PRD-A-KEL-0110', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00098', 'PRD-A-HP-0272', 'HP ITEL 6A 4/128 52530', 3, 2720000, 8160000, 2500000, 0, 660000, 'pcs'),
  ('TRX-A00098', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 1, 580000, 580000, 400000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01775', '2026-11-22 09:16:01+07:00', 'Nur Halimah', 'Admin', 19994000, 0, 19994000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101774', '', '', '', 1462000, NULL, '2026-11-22 09:16:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01775', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 2, 2010000, 4020000, 1800000, 0, 420000, 'pcs'),
  ('TRX-A01775', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 1, 2350000, 2350000, 2300000, 0, 50000, 'pcs'),
  ('TRX-A01775', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 3, 1880000, 5640000, 1800000, 0, 240000, 'pcs'),
  ('TRX-A01775', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A01775', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 2, 20000, 40000, 7000, 0, 26000, 'pcs'),
  ('TRX-A01775', 'PRD-A-KEL-0089', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00850', '2026-11-22 08:55:08+07:00', 'Rudi Hartono 4', 'Admin', 12642000, 0, 12642000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100849', '', '', '', 1424000, NULL, '2026-11-22 08:55:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00850', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 3, 1750000, 5250000, 1500000, 0, 750000, 'pcs'),
  ('TRX-A00850', 'PRD-A-KEL-0022', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00850', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 3, 33000, 99000, 28000, 0, 15000, 'pcs'),
  ('TRX-A00850', 'PRD-A-AKS-0174', 'Case Redmi 9A', 1, 41000, 41000, 26000, 0, 15000, 'pcs'),
  ('TRX-A00850', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 2, 2610000, 5220000, 2500000, 0, 220000, 'pcs'),
  ('TRX-A00850', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 2, 1010000, 2020000, 800000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00106', '2026-11-22 08:49:26+07:00', 'Umum', 'Admin', 195000, 0, 195000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100105', '', '', '', 64500, NULL, '2026-11-22 08:49:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00106', 'PRD-A-AKS-0027', 'Batre Samsung J1', 2, 51000, 102000, 39000, 0, 24000, 'pcs'),
  ('TRX-A00106', 'PRD-A-KEL-0039', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00106', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 3, 30000, 90000, 17000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01834', '2026-11-22 08:45:05+07:00', 'Umum', 'Admin', 473000, 0, 473000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101833', '', '', '', 146000, NULL, '2026-11-22 08:45:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01834', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 3, 21000, 63000, 9000, 0, 36000, 'pcs'),
  ('TRX-A01834', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 1, 410000, 410000, 300000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01593', '2026-11-22 08:42:18+07:00', 'Umum', 'Admin', 13868000, 0, 13868000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101592', '', '', '', 1726000, NULL, '2026-11-22 08:42:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01593', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 2, 1270000, 2540000, 1100000, 0, 340000, 'pcs'),
  ('TRX-A01593', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A01593', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 2, 560000, 1120000, 400000, 0, 320000, 'pcs'),
  ('TRX-A01593', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A01593', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 2, 2000000, 4000000, 1800000, 0, 400000, 'pcs'),
  ('TRX-A01593', 'PRD-A-KEL-0177', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01593', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 3, 670000, 2010000, 500000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00498', '2026-11-22 08:38:58+07:00', 'Umum', 'Admin', 2180000, 0, 2180000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100497', '', '', '', 380000, NULL, '2026-11-22 08:38:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00498', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 2, 1090000, 2180000, 900000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00296', '2026-11-22 08:29:34+07:00', 'Eko Saputra 3', 'Admin', 6852000, 0, 6852000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100295', '', '', '', 342000, NULL, '2026-11-22 08:29:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00296', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 1, 1520000, 1520000, 1400000, 0, 120000, 'pcs'),
  ('TRX-A00296', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 2, 2600000, 5200000, 2500000, 0, 200000, 'pcs'),
  ('TRX-A00296', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00296', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A00296', 'PRD-A-KEL-0027', 'Pensil', 2, 2000, 4000, 1500, 0, 1000, 'pcs'),
  ('TRX-A00296', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00160', '2026-11-22 08:25:38+07:00', 'Umum', 'Admin', 5105000, 0, 5105000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100159', '', '', '', 221000, NULL, '2026-11-22 08:25:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00160', 'PRD-A-AKS-0134', 'Case Oppo A57', 3, 35000, 105000, 28000, 0, 21000, 'pcs'),
  ('TRX-A00160', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 2, 2500000, 5000000, 2400000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01152', '2026-11-22 08:05:07+07:00', 'Umum', 'Admin', 2000, 0, 2000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101151', '', '', '', 1000, NULL, '2026-11-22 08:05:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01152', 'PRD-A-KEL-0031', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01363', '2026-11-21 20:46:08+07:00', 'Sri Wahyuni 2', 'Admin', 15658000, 0, 15658000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101362', '', '', '', 1867000, NULL, '2026-11-21 20:46:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01363', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 1, 64000, 64000, 51000, 0, 13000, 'pcs'),
  ('TRX-A01363', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01363', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A01363', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 3, 1490000, 4470000, 1300000, 0, 570000, 'pcs'),
  ('TRX-A01363', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 3, 1060000, 3180000, 900000, 0, 480000, 'pcs'),
  ('TRX-A01363', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A01363', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01780', '2026-11-21 20:40:00+07:00', 'Andi Kurnia 5', 'Admin', 29000, 0, 0, 29000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101779', '', '', '', 14000, NULL, '2026-11-21 20:40:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01780', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 1, 29000, 29000, 15000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00589', '2026-11-21 20:35:20+07:00', 'Sri Wahyuni 5', 'Admin', 7116000, 0, 0, 7116000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100588', '', '', '', 333000, NULL, '2026-11-21 20:35:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00589', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 3, 2290000, 6870000, 2200000, 0, 270000, 'pcs'),
  ('TRX-A00589', 'PRD-A-AKS-0216', 'Memory Card 16GB', 3, 41000, 123000, 33000, 0, 24000, 'pcs'),
  ('TRX-A00589', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 2, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A00589', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01755', '2026-11-21 20:28:25+07:00', 'Siti Aisyah', 'Admin', 5422000, 0, 5422000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101754', '', '', '', 377000, NULL, '2026-11-21 20:28:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01755', 'PRD-A-KEL-0172', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01755', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 2, 2680000, 5360000, 2500000, 0, 360000, 'pcs'),
  ('TRX-A01755', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 1, 54000, 54000, 39000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00722', '2026-11-21 20:20:41+07:00', 'Umum', 'Admin', 172000, 0, 172000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100721', '', '', '', 44000, NULL, '2026-11-21 20:20:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00722', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00722', 'PRD-A-KEL-0131', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00722', 'PRD-A-KEL-0125', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00722', 'PRD-A-AKS-0177', 'Case Samsung A03', 2, 39000, 78000, 34000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00456', '2026-11-21 20:16:38+07:00', 'Agus Wijaya 4', 'Admin', 5610000, 0, 5610000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100455', '', '', '', 457000, NULL, '2026-11-21 20:16:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00456', 'PRD-A-AKS-0102', 'Case Vivo Y20', 3, 36000, 108000, 30000, 0, 18000, 'pcs'),
  ('TRX-A00456', 'PRD-A-AKS-0220', 'Tempered Glass Samsung', 2, 23000, 46000, 20000, 0, 6000, 'pcs'),
  ('TRX-A00456', 'PRD-A-KEL-0123', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00456', 'PRD-A-AKS-0091', 'Case Oppo A57', 2, 22000, 44000, 11000, 0, 22000, 'pcs'),
  ('TRX-A00456', 'PRD-A-HP-0150', 'HP OPPO Y55S 8/256 41252', 1, 1300000, 1300000, 1200000, 0, 100000, 'pcs'),
  ('TRX-A00456', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 1, 2780000, 2780000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A00456', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 1, 1330000, 1330000, 1200000, 0, 130000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00915', '2026-11-21 20:14:53+07:00', 'Dewi Lestari 4', 'Admin', 5041000, 0, 2520500, 2520500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100914', '', '', '', 424000, NULL, '2026-11-21 20:14:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00915', 'PRD-A-KEL-0154', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00915', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs'),
  ('TRX-A00915', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 2, 2270000, 4540000, 2100000, 0, 340000, 'pcs'),
  ('TRX-A00915', 'PRD-A-AKS-0069', 'Handsfree Vivo', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A00915', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 3, 51000, 153000, 47000, 0, 12000, 'pcs'),
  ('TRX-A00915', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 2, 22000, 44000, 15000, 0, 14000, 'pcs'),
  ('TRX-A00915', 'PRD-A-AKS-0233', 'Tempered Glass Vivo', 2, 9000, 18000, 5000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00502', '2026-11-21 20:08:41+07:00', 'Umum', 'Admin', 4356500, 0, 2178250, 2178250, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100501', '', '', '', 322100, NULL, '2026-11-21 20:08:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00502', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 3, 43000, 129000, 32000, 0, 33000, 'pcs'),
  ('TRX-A00502', 'PRD-A-KEL-0016', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00502', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 1, 1730000, 1730000, 1600000, 0, 130000, 'pcs'),
  ('TRX-A00502', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 3, 18000, 54000, 8000, 0, 30000, 'pcs'),
  ('TRX-A00502', 'PRD-A-KEL-0034', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00502', 'PRD-A-KEL-0076', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00502', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01191', '2026-11-21 19:18:48+07:00', 'Umum', 'Admin', 12738000, 0, 12738000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101190', '', '', '', 962000, NULL, '2026-11-21 19:18:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01191', 'PRD-A-AKS-0041', 'Tempered Glass Vivo', 2, 19000, 38000, 5000, 0, 28000, 'pcs'),
  ('TRX-A01191', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 1, 52000, 52000, 46000, 0, 6000, 'pcs'),
  ('TRX-A01191', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01191', 'PRD-A-HP-0111', 'HP OPPO A57 4/128 32620', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs'),
  ('TRX-A01191', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 2, 2150000, 4300000, 2100000, 0, 100000, 'pcs'),
  ('TRX-A01191', 'PRD-A-KEL-0109', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01191', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01544', '2026-11-21 19:06:05+07:00', 'Rudi Hartono', 'Admin', 436000, 0, 436000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101543', '', '', '', 94000, NULL, '2026-11-21 19:06:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01544', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01544', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 2, 31000, 62000, 18000, 0, 26000, 'pcs'),
  ('TRX-A01544', 'PRD-A-KEL-0173', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01544', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 3, 32000, 96000, 24000, 0, 24000, 'pcs'),
  ('TRX-A01544', 'PRD-A-AKS-0045', 'Memory Card 16GB', 3, 58000, 174000, 53000, 0, 15000, 'pcs'),
  ('TRX-A01544', 'PRD-A-KEL-0044', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01544', 'PRD-A-KEL-0011', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01544', 'PRD-A-KEL-0161', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01859', '2026-11-21 19:00:20+07:00', 'Umum', 'Admin', 8723000, 0, 8723000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101858', '', '', '', 692000, NULL, '2026-11-21 19:00:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01859', 'PRD-A-KEL-0041', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01859', 'PRD-A-AKS-0169', 'Handsfree Oppo', 3, 29000, 87000, 14000, 0, 45000, 'pcs'),
  ('TRX-A01859', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01859', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs'),
  ('TRX-A01859', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A01859', 'PRD-A-AKS-0213', 'Memory Card 16GB', 1, 72000, 72000, 65000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00551', '2026-11-21 18:57:59+07:00', 'Umum', 'Admin', 10000000, 0, 10000000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100550', '', '', '', 500000, NULL, '2026-11-21 18:57:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00551', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs'),
  ('TRX-A00551', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 1, 1150000, 1150000, 1100000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01204', '2026-11-21 18:33:14+07:00', 'Agus Wijaya 2', 'Admin', 7995000, 0, 7995000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101203', '', '', '', 783000, NULL, '2026-11-21 18:33:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01204', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 1, 2250000, 2250000, 2000000, 0, 250000, 'pcs'),
  ('TRX-A01204', 'PRD-A-KEL-0056', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01204', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 1, 1350000, 1350000, 1200000, 0, 150000, 'pcs'),
  ('TRX-A01204', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 2, 2190000, 4380000, 2000000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00316', '2026-11-21 18:31:19+07:00', 'Umum', 'Admin', 6060000, 0, 3030000, 3030000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100315', '', '', '', 660000, NULL, '2026-11-21 18:31:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00316', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 3, 2020000, 6060000, 1800000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01343', '2026-11-21 18:27:45+07:00', 'Umum', 'Admin', 1905000, 0, 1905000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101342', '', '', '', 469000, NULL, '2026-11-21 18:27:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01343', 'PRD-A-KEL-0161', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01343', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 2, 930000, 1860000, 700000, 0, 460000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01034', '2026-11-21 18:21:10+07:00', 'Fajar Nugroho 4', 'Admin', 18974000, 0, 18974000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101033', '', '', '', 1570000, NULL, '2026-11-21 18:21:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01034', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A01034', 'PRD-A-AKS-0027', 'Batre Samsung J1', 2, 51000, 102000, 39000, 0, 24000, 'pcs'),
  ('TRX-A01034', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 3, 1040000, 3120000, 900000, 0, 420000, 'pcs'),
  ('TRX-A01034', 'PRD-A-KEL-0079', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01034', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 1, 1170000, 1170000, 1000000, 0, 170000, 'pcs'),
  ('TRX-A01034', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 1, 2930000, 2930000, 2700000, 0, 230000, 'pcs'),
  ('TRX-A01034', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 1, 35000, 35000, 21000, 0, 14000, 'pcs'),
  ('TRX-A01034', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 3, 2880000, 8640000, 2700000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00219', '2026-11-21 18:04:05+07:00', 'Ayu Lestari', 'Admin', 4470000, 0, 4470000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100218', '', '', '', 870000, NULL, '2026-11-21 18:04:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00219', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 3, 860000, 2580000, 700000, 0, 480000, 'pcs'),
  ('TRX-A00219', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 3, 630000, 1890000, 500000, 0, 390000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00875', '2026-11-21 17:49:28+07:00', 'Siti Aisyah 3', 'Admin', 3430000, 0, 3430000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100874', '', '', '', 423000, NULL, '2026-11-21 17:49:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00875', 'PRD-A-KEL-0104', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00875', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 1, 1670000, 1670000, 1500000, 0, 170000, 'pcs'),
  ('TRX-A00875', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01079', '2026-11-21 17:42:58+07:00', 'Lilis Suryani', 'Admin', 4844500, 0, 0, 4844500, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101078', '', '', '', 674000, NULL, '2026-11-21 17:42:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01079', 'PRD-A-KEL-0023', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A01079', 'PRD-A-AKS-0069', 'Handsfree Vivo', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A01079', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 2, 1370000, 2740000, 1300000, 0, 140000, 'pcs'),
  ('TRX-A01079', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 3, 670000, 2010000, 500000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01086', '2026-11-21 17:37:09+07:00', 'Rudi Hartono 4', 'Admin', 1482000, 0, 1482000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101085', '', '', '', 395000, NULL, '2026-11-21 17:37:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01086', 'PRD-A-KEL-0024', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01086', 'PRD-A-AKS-0199', 'Handsfree Xiaomi', 3, 38000, 114000, 29000, 0, 27000, 'pcs'),
  ('TRX-A01086', 'PRD-A-HP-0175', 'HP REALME S23 4/64 80825', 3, 410000, 1230000, 300000, 0, 330000, 'pcs'),
  ('TRX-A01086', 'PRD-A-KEL-0030', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01086', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 2, 31000, 62000, 21000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00817', '2026-11-21 17:32:43+07:00', 'Umum', 'Admin', 7936000, 0, 7936000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100816', '', '', '', 724000, NULL, '2026-11-21 17:32:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00817', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A00817', 'PRD-A-KEL-0052', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00408', '2026-11-21 17:31:56+07:00', 'Umum', 'Admin', 30000, 0, 15000, 15000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100407', '', '', '', 6000, NULL, '2026-11-21 17:31:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00408', 'PRD-A-KEL-0017', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00570', '2026-11-21 17:27:31+07:00', 'Andi Kurnia 5', 'Admin', 4380000, 0, 4380000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100569', '', '', '', 380000, NULL, '2026-11-21 17:27:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00570', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 2, 2190000, 4380000, 2000000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01784', '2026-11-21 17:22:27+07:00', 'Umum', 'Admin', 23162000, 0, 23162000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101783', '', '', '', 1760500, NULL, '2026-11-21 17:22:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01784', 'PRD-A-KEL-0081', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A01784', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A01784', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 3, 2770000, 8310000, 2600000, 0, 510000, 'pcs'),
  ('TRX-A01784', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 3, 2230000, 6690000, 2000000, 0, 690000, 'pcs'),
  ('TRX-A01784', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00270', '2026-11-21 16:48:01+07:00', 'Umum', 'Admin', 4192000, 0, 4192000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100269', '', '', '', 715000, NULL, '2026-11-21 16:48:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00270', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 2, 69000, 138000, 58000, 0, 22000, 'pcs'),
  ('TRX-A00270', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 2, 830000, 1660000, 600000, 0, 460000, 'pcs'),
  ('TRX-A00270', 'PRD-A-AKS-0233', 'Tempered Glass Vivo', 2, 9000, 18000, 5000, 0, 8000, 'pcs'),
  ('TRX-A00270', 'PRD-A-KEL-0159', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00270', 'PRD-A-AKS-0027', 'Batre Samsung J1', 1, 51000, 51000, 39000, 0, 12000, 'pcs'),
  ('TRX-A00270', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 3, 28000, 84000, 24000, 0, 12000, 'pcs'),
  ('TRX-A00270', 'PRD-A-KEL-0016', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00270', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00271', '2026-11-21 16:37:38+07:00', 'Umum', 'Admin', 12000, 0, 12000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100270', '', '', '', 4000, NULL, '2026-11-21 16:37:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00271', 'PRD-A-KEL-0012', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01039', '2026-11-21 16:06:02+07:00', 'Umum', 'Admin', 8743000, 0, 4371500, 4371500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101038', '', '', '', 618000, NULL, '2026-11-21 16:06:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01039', 'PRD-A-KEL-0116', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01039', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 1, 460000, 460000, 400000, 0, 60000, 'pcs'),
  ('TRX-A01039', 'PRD-A-HP-0094', 'HP INFINIX Y20 8/256 25072', 3, 2390000, 7170000, 2300000, 0, 270000, 'pcs'),
  ('TRX-A01039', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A01039', 'PRD-A-AKS-0150', 'Memory Card 16GB', 3, 55000, 165000, 41000, 0, 42000, 'pcs'),
  ('TRX-A01039', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 2, 25000, 50000, 17000, 0, 16000, 'pcs'),
  ('TRX-A01039', 'PRD-A-HP-0330', 'HP REDMI C15 4/64 69727', 1, 810000, 810000, 600000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01087', '2026-11-21 16:04:15+07:00', 'Umum', 'Admin', 3639000, 0, 3639000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101086', '', '', '', 633000, NULL, '2026-11-21 16:04:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01087', 'PRD-A-KEL-0095', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01087', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 3, 1210000, 3630000, 1000000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00056', '2026-11-21 15:53:08+07:00', 'Umum', 'Admin', 4896000, 0, 4896000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100055', '', '', '', 318000, NULL, '2026-11-21 15:53:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00056', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 3, 1590000, 4770000, 1500000, 0, 270000, 'pcs'),
  ('TRX-A00056', 'PRD-A-AKS-0175', 'Kartu Perdana Tri', 2, 28000, 56000, 18000, 0, 20000, 'pcs'),
  ('TRX-A00056', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 2, 35000, 70000, 21000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00074', '2026-11-21 15:51:28+07:00', 'Lilis Suryani 4', 'Admin', 2980000, 0, 0, 2980000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100073', '', '', '', 280000, NULL, '2026-11-21 15:51:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00074', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 1, 2600000, 2600000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A00074', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 1, 380000, 380000, 300000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00181', '2026-11-21 15:41:34+07:00', 'Agus Wijaya 2', 'Admin', 5035000, 0, 5035000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100180', '', '', '', 771000, NULL, '2026-11-21 15:41:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00181', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 1, 61000, 61000, 46000, 0, 15000, 'pcs'),
  ('TRX-A00181', 'PRD-A-KEL-0041', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00181', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 3, 1650000, 4950000, 1400000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00859', '2026-11-21 15:36:12+07:00', 'Fitri Rahmawati', 'Admin', 10278000, 0, 10278000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100858', '', '', '', 1006000, NULL, '2026-11-21 15:36:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00859', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 2, 830000, 1660000, 600000, 0, 460000, 'pcs'),
  ('TRX-A00859', 'PRD-A-KEL-0142', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00859', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 1, 1170000, 1170000, 1100000, 0, 70000, 'pcs'),
  ('TRX-A00859', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00859', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 3, 1820000, 5460000, 1700000, 0, 360000, 'pcs'),
  ('TRX-A00859', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 2, 950000, 1900000, 900000, 0, 100000, 'pcs'),
  ('TRX-A00859', 'PRD-A-KEL-0052', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00348', '2026-11-21 15:33:51+07:00', 'Siti Aisyah 3', 'Admin', 1894000, 0, 1894000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100347', '', '', '', 234000, NULL, '2026-11-21 15:33:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00348', 'PRD-A-KEL-0098', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00348', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A00348', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 1, 1800000, 1800000, 1600000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00822', '2026-11-21 15:13:27+07:00', 'Umum', 'Admin', 7707000, 0, 0, 7707000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100821', '', '', '', 701000, NULL, '2026-11-21 15:13:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00822', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A00822', 'PRD-A-KEL-0121', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00822', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00822', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs'),
  ('TRX-A00822', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 2, 2330000, 4660000, 2100000, 0, 460000, 'pcs'),
  ('TRX-A00822', 'PRD-A-KEL-0024', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01696', '2026-11-21 14:44:48+07:00', 'Umum', 'Admin', 1277000, 0, 1277000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101695', '', '', '', 278000, NULL, '2026-11-21 14:44:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01696', 'PRD-A-KEL-0041', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01696', 'PRD-A-KEL-0065', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01696', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 1, 1110000, 1110000, 900000, 0, 210000, 'pcs'),
  ('TRX-A01696', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 3, 23000, 69000, 16000, 0, 21000, 'pcs'),
  ('TRX-A01696', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00025', '2026-11-21 14:43:25+07:00', 'Rudi Hartono 3', 'Admin', 444500, 0, 222250, 222250, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100024', '', '', '', 70000, NULL, '2026-11-21 14:43:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00025', 'PRD-A-KEL-0180', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00025', 'PRD-A-AKS-0150', 'Memory Card 16GB', 1, 55000, 55000, 41000, 0, 14000, 'pcs'),
  ('TRX-A00025', 'PRD-A-KEL-0046', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00025', 'PRD-A-AKS-0236', 'Memory Card 64GB', 1, 72000, 72000, 63000, 0, 9000, 'pcs'),
  ('TRX-A00025', 'PRD-A-KEL-0023', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00025', 'PRD-A-AKS-0116', 'Memory Card 16GB', 3, 88000, 264000, 76000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00413', '2026-11-21 14:36:05+07:00', 'Andi Kurnia 4', 'Admin', 5900000, 0, 5900000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100412', '', '', '', 1295000, NULL, '2026-11-21 14:36:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00413', 'PRD-A-KEL-0108', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00413', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 3, 55000, 165000, 50000, 0, 15000, 'pcs'),
  ('TRX-A00413', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 3, 540000, 1620000, 300000, 0, 720000, 'pcs'),
  ('TRX-A00413', 'PRD-A-KEL-0075', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00413', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 2, 1940000, 3880000, 1700000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00519', '2026-11-21 14:25:15+07:00', 'Yusuf Maulana 3', 'Admin', 2309000, 0, 2309000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100518', '', '', '', 469000, NULL, '2026-11-21 14:25:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00519', 'PRD-A-AKS-0064', 'Case Redmi 9A', 2, 38000, 76000, 25000, 0, 26000, 'pcs'),
  ('TRX-A00519', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 1, 700000, 700000, 500000, 0, 200000, 'pcs'),
  ('TRX-A00519', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 1, 1410000, 1410000, 1200000, 0, 210000, 'pcs'),
  ('TRX-A00519', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 3, 41000, 123000, 30000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01393', '2026-11-21 14:23:19+07:00', 'Maya Putri 2', 'Admin', 100000, 0, 100000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101392', '', '', '', 30000, NULL, '2026-11-21 14:23:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01393', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 2, 14000, 28000, 9000, 0, 10000, 'pcs'),
  ('TRX-A01393', 'PRD-A-AKS-0137', 'Tempered Glass Samsung', 2, 18000, 36000, 10000, 0, 16000, 'pcs'),
  ('TRX-A01393', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 2, 18000, 36000, 16000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01139', '2026-11-21 14:15:36+07:00', 'Umum', 'Admin', 9483000, 0, 4741500, 4741500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101138', '', '', '', 818000, NULL, '2026-11-21 14:15:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01139', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 3, 35000, 105000, 21000, 0, 42000, 'pcs'),
  ('TRX-A01139', 'PRD-A-KEL-0024', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01139', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 1, 2100000, 2100000, 1900000, 0, 200000, 'pcs'),
  ('TRX-A01139', 'PRD-A-AKS-0222', 'Case Redmi 9A', 3, 46000, 138000, 35000, 0, 33000, 'pcs'),
  ('TRX-A01139', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 2, 1270000, 2540000, 1100000, 0, 340000, 'pcs'),
  ('TRX-A01139', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 2, 2190000, 4380000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A01139', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01139', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01141', '2026-11-21 14:10:19+07:00', 'Dedi Supriadi 2', 'Admin', 4530000, 0, 2265000, 2265000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101140', '', '', '', 630000, NULL, '2026-11-21 14:10:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01141', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 3, 1510000, 4530000, 1300000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00812', '2026-11-21 14:03:24+07:00', 'Umum', 'Admin', 231000, 0, 231000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100811', '', '', '', 46000, NULL, '2026-11-21 14:03:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00812', 'PRD-A-AKS-0073', 'Memory Card 64GB', 1, 35000, 35000, 31000, 0, 4000, 'pcs'),
  ('TRX-A00812', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 3, 57000, 171000, 45000, 0, 36000, 'pcs'),
  ('TRX-A00812', 'PRD-A-KEL-0188', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00812', 'PRD-A-KEL-0180', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00733', '2026-11-21 13:43:16+07:00', 'Intan Permata 4', 'Admin', 282000, 0, 141000, 141000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100732', '', '', '', 33000, NULL, '2026-11-21 13:43:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00733', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 3, 43000, 129000, 35000, 0, 24000, 'pcs'),
  ('TRX-A00733', 'PRD-A-AKS-0223', 'Memory Card 32GB', 3, 51000, 153000, 48000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00492', '2026-11-21 13:29:08+07:00', 'Fajar Nugroho 3', 'Admin', 2775000, 0, 2775000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100491', '', '', '', 672000, NULL, '2026-11-21 13:29:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00492', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 21000, 0, 42000, 'pcs'),
  ('TRX-A00492', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 2, 35000, 70000, 20000, 0, 30000, 'pcs'),
  ('TRX-A00492', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 2, 1050000, 2100000, 800000, 0, 500000, 'pcs'),
  ('TRX-A00492', 'PRD-A-HP-0002', 'HP REALME A16 2/16 79012', 1, 500000, 500000, 400000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01311', '2026-11-21 13:24:19+07:00', 'Andi Kurnia 3', 'Admin', 36000, 0, 0, 36000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101310', '', '', '', 20000, NULL, '2026-11-21 13:24:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01311', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 2, 18000, 36000, 8000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00412', '2026-11-21 13:21:34+07:00', 'Fajar Nugroho 3', 'Admin', 4920000, 0, 4920000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100411', '', '', '', 620000, NULL, '2026-11-21 13:21:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00412', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 1, 520000, 520000, 300000, 0, 220000, 'pcs'),
  ('TRX-A00412', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01913', '2026-11-21 13:20:32+07:00', 'Umum', 'Admin', 13000, 0, 13000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101912', '', '', '', 4500, NULL, '2026-11-21 13:20:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01913', 'PRD-A-KEL-0128', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01913', 'PRD-A-KEL-0016', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01655', '2026-11-21 13:11:47+07:00', 'Umum', 'Admin', 12791000, 0, 6395500, 6395500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101654', '', '', '', 1571500, NULL, '2026-11-21 13:11:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01655', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 1, 31000, 31000, 17000, 0, 14000, 'pcs'),
  ('TRX-A01655', 'PRD-A-AKS-0183', 'Kabel Charger 2m', 2, 14000, 28000, 10000, 0, 8000, 'pcs'),
  ('TRX-A01655', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A01655', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A01655', 'PRD-A-AKS-0192', 'Handsfree Oppo', 2, 49000, 98000, 40000, 0, 18000, 'pcs'),
  ('TRX-A01655', 'PRD-A-KEL-0040', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01655', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01369', '2026-11-21 12:45:51+07:00', 'Joko Prasetyo 2', 'Admin', 1450000, 0, 1450000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101368', '', '', '', 122000, NULL, '2026-11-21 12:45:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01369', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A01369', 'PRD-A-AKS-0166', 'Case Redmi 9A', 2, 25000, 50000, 10000, 0, 30000, 'pcs'),
  ('TRX-A01369', 'PRD-A-AKS-0153', 'Memory Card 32GB', 2, 92000, 184000, 86000, 0, 12000, 'pcs'),
  ('TRX-A01369', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 2, 15000, 30000, 10000, 0, 10000, 'pcs'),
  ('TRX-A01369', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00009', '2026-11-21 12:16:09+07:00', 'Toko O''Brien', 'Admin', 17466000, 0, 17466000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100008', '', '', '', 1046000, NULL, '2026-11-21 12:16:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00009', 'PRD-A-AKS-0007', 'Case Redmi 9A', 1, 26000, 26000, 20000, 0, 6000, 'pcs'),
  ('TRX-A00009', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs'),
  ('TRX-A00009', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs'),
  ('TRX-A00009', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 1, 1170000, 1170000, 1100000, 0, 70000, 'pcs'),
  ('TRX-A00009', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 3, 1990000, 5970000, 1900000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00280', '2026-11-21 12:10:57+07:00', 'Rudi Hartono 3', 'Admin', 7710000, 0, 7710000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100279', '', '', '', 410000, NULL, '2026-11-21 12:10:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00280', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 3, 1070000, 3210000, 1000000, 0, 210000, 'pcs'),
  ('TRX-A00280', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A00280', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01762', '2026-11-21 12:09:29+07:00', 'Rina Marlina 2', 'Admin', 1310000, 0, 1310000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101761', '', '', '', 210000, NULL, '2026-11-21 12:09:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01762', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 1, 1310000, 1310000, 1100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00698', '2026-11-21 12:04:14+07:00', 'Dedi Supriadi 2', 'Admin', 2020000, 0, 2020000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100697', '', '', '', 220000, NULL, '2026-11-21 12:04:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00698', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 1, 2020000, 2020000, 1800000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00991', '2026-11-21 11:59:21+07:00', 'Hendra Gunawan 5', 'Admin', 25000, 0, 0, 25000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100990', '', '', '', 9000, NULL, '2026-11-21 11:59:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00991', 'PRD-A-KEL-0098', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00991', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A00991', 'PRD-A-KEL-0122', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01657', '2026-11-21 11:45:14+07:00', 'Hendra Gunawan 2', 'Admin', 2000, 0, 0, 2000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101656', '', '', '', 1000, NULL, '2026-11-21 11:45:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01657', 'PRD-A-KEL-0031', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01145', '2026-11-21 11:43:40+07:00', 'Umum', 'Admin', 9341000, 0, 9341000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101144', '', '', '', 1224000, NULL, '2026-11-21 11:43:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01145', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 2, 46000, 92000, 35000, 0, 22000, 'pcs'),
  ('TRX-A01145', 'PRD-A-AKS-0236', 'Memory Card 64GB', 3, 72000, 216000, 63000, 0, 27000, 'pcs'),
  ('TRX-A01145', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 3, 670000, 2010000, 500000, 0, 510000, 'pcs'),
  ('TRX-A01145', 'PRD-A-KEL-0065', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01145', 'PRD-A-KEL-0092', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01145', 'PRD-A-KEL-0097', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01145', 'PRD-A-KEL-0074', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01145', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 3, 2310000, 6930000, 2100000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01965', '2026-11-21 11:20:45+07:00', 'Dewi Lestari 5', 'Admin', 4478000, 0, 2239000, 2239000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101964', '', '', '', 242500, NULL, '2026-11-21 11:20:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01965', 'PRD-A-AKS-0195', 'Memory Card 16GB', 1, 70000, 70000, 65000, 0, 5000, 'pcs'),
  ('TRX-A01965', 'PRD-A-KEL-0041', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01965', 'PRD-A-AKS-0242', 'Handsfree Samsung', 3, 28000, 84000, 16000, 0, 36000, 'pcs'),
  ('TRX-A01965', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 18000, 0, 39000, 'pcs'),
  ('TRX-A01965', 'PRD-A-KEL-0125', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01965', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A01965', 'PRD-A-KEL-0091', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01965', 'PRD-A-KEL-0062', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01287', '2026-11-21 11:19:00+07:00', 'Fitri Rahmawati 4', 'Admin', 3874000, 0, 3874000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101286', '', '', '', 352000, NULL, '2026-11-21 11:19:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01287', 'PRD-A-AKS-0074', 'Handsfree Oppo', 3, 49000, 147000, 39000, 0, 30000, 'pcs'),
  ('TRX-A01287', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 2, 1860000, 3720000, 1700000, 0, 320000, 'pcs'),
  ('TRX-A01287', 'PRD-A-KEL-0106', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01645', '2026-11-21 11:07:46+07:00', 'Ayu Lestari 5', 'Admin', 7598000, 0, 7598000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101644', '', '', '', 1144000, NULL, '2026-11-21 11:07:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01645', 'PRD-A-KEL-0035', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01645', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 2, 1100000, 2200000, 900000, 0, 400000, 'pcs'),
  ('TRX-A01645', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 1, 2220000, 2220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A01645', 'PRD-A-HP-0245', 'HP NOKIA C11 4/64 32903', 1, 640000, 640000, 400000, 0, 240000, 'pcs'),
  ('TRX-A01645', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 1, 2230000, 2230000, 2000000, 0, 230000, 'pcs'),
  ('TRX-A01645', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A01645', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01638', '2026-11-21 10:43:22+07:00', 'Yusuf Maulana 5', 'Admin', 14419000, 0, 14419000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101637', '', '', '', 1198000, NULL, '2026-11-21 10:43:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01638', 'PRD-A-KEL-0148', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01638', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 1, 1500000, 1500000, 1300000, 0, 200000, 'pcs'),
  ('TRX-A01638', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 1, 18000, 18000, 11000, 0, 7000, 'pcs'),
  ('TRX-A01638', 'PRD-A-AKS-0053', 'Memory Card 16GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs'),
  ('TRX-A01638', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 3, 42000, 126000, 30000, 0, 36000, 'pcs'),
  ('TRX-A01638', 'PRD-A-KEL-0078', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01638', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 3, 1850000, 5550000, 1600000, 0, 750000, 'pcs'),
  ('TRX-A01638', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 3, 2350000, 7050000, 2300000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00411', '2026-11-21 10:25:48+07:00', 'Fitri Rahmawati 4', 'Admin', 10120000, 0, 10120000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100410', '', '', '', 1012000, NULL, '2026-11-21 10:25:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00411', 'PRD-A-KEL-0190', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00411', 'PRD-A-KEL-0017', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A00411', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 3, 820000, 2460000, 600000, 0, 660000, 'pcs'),
  ('TRX-A00411', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 1, 1050000, 1050000, 900000, 0, 150000, 'pcs'),
  ('TRX-A00411', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 3, 33000, 99000, 28000, 0, 15000, 'pcs'),
  ('TRX-A00411', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01725', '2026-11-21 10:22:04+07:00', 'Maya Putri 5', 'Admin', 6175000, 0, 6175000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101724', '', '', '', 1440000, NULL, '2026-11-21 10:22:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01725', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 3, 670000, 2010000, 500000, 0, 510000, 'pcs'),
  ('TRX-A01725', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 1, 27000, 27000, 23000, 0, 4000, 'pcs'),
  ('TRX-A01725', 'PRD-A-HP-0348', 'HP REALME C15 8/256 21999', 2, 910000, 1820000, 700000, 0, 420000, 'pcs'),
  ('TRX-A01725', 'PRD-A-KEL-0169', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01725', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 2, 1150000, 2300000, 900000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00833', '2026-11-21 10:11:16+07:00', 'Umum', 'Admin', 1110000, 0, 1110000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100832', '', '', '', 472000, NULL, '2026-11-21 10:11:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00833', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 2, 520000, 1040000, 300000, 0, 440000, 'pcs'),
  ('TRX-A00833', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 2, 27000, 54000, 13000, 0, 28000, 'pcs'),
  ('TRX-A00833', 'PRD-A-KEL-0121', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01604', '2026-11-21 09:57:45+07:00', 'Umum', 'Admin', 9123000, 0, 9123000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101603', '', '', '', 466000, NULL, '2026-11-21 09:57:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01604', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 2, 930000, 1860000, 800000, 0, 260000, 'pcs'),
  ('TRX-A01604', 'PRD-A-AKS-0150', 'Memory Card 16GB', 3, 55000, 165000, 41000, 0, 42000, 'pcs'),
  ('TRX-A01604', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01604', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 3, 2350000, 7050000, 2300000, 0, 150000, 'pcs'),
  ('TRX-A01604', 'PRD-A-KEL-0035', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01604', 'PRD-A-KEL-0190', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00380', '2026-11-21 09:57:18+07:00', 'Budi Santoso 3', 'Admin', 6027000, 0, 6027000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100379', '', '', '', 398000, NULL, '2026-11-21 09:57:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00380', 'PRD-A-AKS-0191', 'Batre Samsung J1', 3, 54000, 162000, 39000, 0, 45000, 'pcs'),
  ('TRX-A00380', 'PRD-A-KEL-0015', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A00380', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 1, 1500000, 1500000, 1300000, 0, 200000, 'pcs'),
  ('TRX-A00380', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 3, 1450000, 4350000, 1400000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00679', '2026-11-21 09:52:12+07:00', 'Umum', 'Admin', 16785000, 0, 16785000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100678', '', '', '', 1173000, NULL, '2026-11-21 09:52:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00679', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A00679', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs'),
  ('TRX-A00679', 'PRD-A-KEL-0136', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01517', '2026-11-21 09:48:04+07:00', 'Umum', 'Admin', 1895000, 0, 947500, 947500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101516', '', '', '', 236000, NULL, '2026-11-21 09:48:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01517', 'PRD-A-KEL-0157', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A01517', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 1, 1640000, 1640000, 1500000, 0, 140000, 'pcs'),
  ('TRX-A01517', 'PRD-A-AKS-0082', 'Case Redmi 9A', 3, 26000, 78000, 23000, 0, 9000, 'pcs'),
  ('TRX-A01517', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 3, 24000, 72000, 15000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01793', '2026-11-21 09:18:13+07:00', 'Rina Marlina 2', 'Admin', 14084000, 0, 14084000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101792', '', '', '', 1564000, NULL, '2026-11-21 09:18:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01793', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 1, 34000, 34000, 20000, 0, 14000, 'pcs'),
  ('TRX-A01793', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs'),
  ('TRX-A01793', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 3, 2730000, 8190000, 2500000, 0, 690000, 'pcs'),
  ('TRX-A01793', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 2, 790000, 1580000, 600000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01288', '2026-11-21 09:18:03+07:00', 'Fitri Rahmawati', 'Admin', 5094500, 0, 2547250, 2547250, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101287', '', '', '', 506000, NULL, '2026-11-21 09:18:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01288', 'PRD-A-AKS-0054', 'Batre Samsung J1', 1, 40000, 40000, 30000, 0, 10000, 'pcs'),
  ('TRX-A01288', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A01288', 'PRD-A-KEL-0026', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01288', 'PRD-A-KEL-0130', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01288', 'PRD-A-KEL-0079', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A01288', 'PRD-A-KEL-0172', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00741', '2026-11-21 09:15:01+07:00', 'Umum', 'Admin', 8548000, 0, 8548000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100740', '', '', '', 864000, NULL, '2026-11-21 09:15:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00741', 'PRD-A-HP-0005', 'HP VIVO Y53 8/256 91381', 2, 2720000, 5440000, 2500000, 0, 440000, 'pcs'),
  ('TRX-A00741', 'PRD-A-AKS-0193', 'Case Oppo A57', 2, 25000, 50000, 21000, 0, 8000, 'pcs'),
  ('TRX-A00741', 'PRD-A-AKS-0224', 'Case Samsung A03', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A00741', 'PRD-A-KEL-0132', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00741', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 2, 1500000, 3000000, 1300000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01890', '2026-11-21 09:12:55+07:00', 'Agus Wijaya', 'Admin', 6206000, 0, 3103000, 3103000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101889', '', '', '', 160000, NULL, '2026-11-21 09:12:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01890', 'PRD-A-KEL-0024', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01890', 'PRD-A-KEL-0131', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01890', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 3, 2050000, 6150000, 2000000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00659', '2026-11-21 09:05:11+07:00', 'Budi Santoso 2', 'Admin', 2540000, 0, 2540000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100658', '', '', '', 140000, NULL, '2026-11-21 09:05:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00659', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 1, 2540000, 2540000, 2400000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00110', '2026-11-21 08:16:44+07:00', 'Rina Marlina 4', 'Admin', 13166000, 0, 13166000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100109', '', '', '', 945000, NULL, '2026-11-21 08:16:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00110', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 3, 2300000, 6900000, 2200000, 0, 300000, 'pcs'),
  ('TRX-A00110', 'PRD-A-HP-0070', 'HP SAMSUNG 9A 4/128 90887', 1, 2070000, 2070000, 1900000, 0, 170000, 'pcs'),
  ('TRX-A00110', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 2, 1900000, 3800000, 1700000, 0, 400000, 'pcs'),
  ('TRX-A00110', 'PRD-A-AKS-0064', 'Case Redmi 9A', 2, 38000, 76000, 25000, 0, 26000, 'pcs'),
  ('TRX-A00110', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00110', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 2, 41000, 82000, 30000, 0, 22000, 'pcs'),
  ('TRX-A00110', 'PRD-A-AKS-0153', 'Memory Card 32GB', 2, 92000, 184000, 86000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01285', '2026-11-20 20:54:14+07:00', 'Hendra Gunawan 3', 'Admin', 30000, 0, 15000, 15000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101284', '', '', '', 6000, NULL, '2026-11-20 20:54:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01285', 'PRD-A-KEL-0017', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00465', '2026-11-20 20:51:59+07:00', 'Fitri Rahmawati 2', 'Admin', 1264000, 0, 0, 1264000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100464', '', '', '', 414000, NULL, '2026-11-20 20:51:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00465', 'PRD-A-AKS-0166', 'Case Redmi 9A', 2, 25000, 50000, 10000, 0, 30000, 'pcs'),
  ('TRX-A00465', 'PRD-A-HP-0231', 'HP REALME A03 4/128 26346', 2, 580000, 1160000, 400000, 0, 360000, 'pcs'),
  ('TRX-A00465', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 3, 18000, 54000, 10000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00180', '2026-11-20 20:44:18+07:00', 'Umum', 'Admin', 1132000, 0, 1132000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100179', '', '', '', 339000, NULL, '2026-11-20 20:44:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00180', 'PRD-A-HP-0292', 'HP VIVO C3 4/64 55632', 1, 850000, 850000, 600000, 0, 250000, 'pcs'),
  ('TRX-A00180', 'PRD-A-AKS-0125', 'Handsfree Samsung', 2, 52000, 104000, 37000, 0, 30000, 'pcs'),
  ('TRX-A00180', 'PRD-A-AKS-0235', 'Handsfree Xiaomi', 2, 32000, 64000, 22000, 0, 20000, 'pcs'),
  ('TRX-A00180', 'PRD-A-AKS-0064', 'Case Redmi 9A', 3, 38000, 114000, 25000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00221', '2026-11-20 20:28:01+07:00', 'Agus Wijaya 3', 'Admin', 2248000, 0, 2248000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100220', '', '', '', 430000, NULL, '2026-11-20 20:28:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00221', 'PRD-A-KEL-0040', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00221', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 3, 740000, 2220000, 600000, 0, 420000, 'pcs'),
  ('TRX-A00221', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00221', 'PRD-A-KEL-0128', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01589', '2026-11-20 20:26:59+07:00', 'Umum', 'Admin', 961000, 0, 961000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101588', '', '', '', 185000, NULL, '2026-11-20 20:26:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01589', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A01589', 'PRD-A-KEL-0024', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01589', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 1, 34000, 34000, 20000, 0, 14000, 'pcs'),
  ('TRX-A01589', 'PRD-A-KEL-0023', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01263', '2026-11-20 20:00:55+07:00', 'Dedi Supriadi 3', 'Admin', 4050000, 0, 4050000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101262', '', '', '', 629000, NULL, '2026-11-20 20:00:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01263', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 2, 940000, 1880000, 700000, 0, 480000, 'pcs'),
  ('TRX-A01263', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs'),
  ('TRX-A01263', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00128', '2026-11-20 19:44:06+07:00', 'Umum', 'Admin', 14985500, 0, 14985500, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100127', '', '', '', 1323000, NULL, '2026-11-20 19:44:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00128', 'PRD-A-KEL-0186', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A00128', 'PRD-A-KEL-0009', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A00128', 'PRD-A-HP-0351', 'HP REDMI V5S 3/32 54249', 3, 2700000, 8100000, 2500000, 0, 600000, 'pcs'),
  ('TRX-A00128', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 2, 2550000, 5100000, 2300000, 0, 500000, 'pcs'),
  ('TRX-A00128', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 1, 1710000, 1710000, 1500000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00087', '2026-11-20 19:42:51+07:00', 'Budi Santoso 4', 'Admin', 5732000, 0, 5732000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100086', '', '', '', 402400, NULL, '2026-11-20 19:42:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00087', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 2, 2770000, 5540000, 2600000, 0, 340000, 'pcs'),
  ('TRX-A00087', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 2, 36000, 72000, 26000, 0, 20000, 'pcs'),
  ('TRX-A00087', 'PRD-A-KEL-0083', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00087', 'PRD-A-AKS-0186', 'Case Redmi 9A', 3, 25000, 75000, 14000, 0, 33000, 'pcs'),
  ('TRX-A00087', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00965', '2026-11-20 19:34:11+07:00', 'Umum', 'Admin', 8412000, 0, 8412000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100964', '', '', '', 604000, NULL, '2026-11-20 19:34:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00965', 'PRD-A-KEL-0057', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00965', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00831', '2026-11-20 19:22:17+07:00', 'Maya Putri', 'Admin', 15210000, 0, 0, 15210000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100830', '', '', '', 916500, NULL, '2026-11-20 19:22:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00831', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A00831', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00831', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 3, 2010000, 6030000, 1800000, 0, 630000, 'pcs'),
  ('TRX-A00831', 'PRD-A-KEL-0194', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00831', 'PRD-A-KEL-0144', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00831', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 1, 2560000, 2560000, 2500000, 0, 60000, 'pcs'),
  ('TRX-A00831', 'PRD-A-KEL-0018', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00831', 'PRD-A-AKS-0197', 'Case Vivo Y20', 2, 24000, 48000, 11000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01529', '2026-11-20 19:18:55+07:00', 'Umum', 'Admin', 2340000, 0, 1170000, 1170000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101528', '', '', '', 189000, NULL, '2026-11-20 19:18:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01529', 'PRD-A-HP-0017', 'HP SAMSUNG Y91C 2/32 91420', 3, 760000, 2280000, 700000, 0, 180000, 'pcs'),
  ('TRX-A01529', 'PRD-A-KEL-0024', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00327', '2026-11-20 19:12:13+07:00', 'Sri Wahyuni 3', 'Admin', 1789000, 0, 0, 1789000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100326', '', '', '', 575000, NULL, '2026-11-20 19:12:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00327', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 3, 590000, 1770000, 400000, 0, 570000, 'pcs'),
  ('TRX-A00327', 'PRD-A-AKS-0198', 'Batre Oppo A57', 1, 19000, 19000, 14000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01792', '2026-11-20 18:33:29+07:00', 'Umum', 'Admin', 8850000, 0, 8850000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101791', '', '', '', 450000, NULL, '2026-11-20 18:33:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01792', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00387', '2026-11-20 18:17:28+07:00', 'Umum', 'Admin', 111000, 0, 111000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100386', '', '', '', 41000, NULL, '2026-11-20 18:17:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00387', 'PRD-A-AKS-0030', 'Case Samsung A03', 1, 25000, 25000, 20000, 0, 5000, 'pcs'),
  ('TRX-A00387', 'PRD-A-AKS-0043', 'Case Oppo A57', 2, 28000, 56000, 13000, 0, 30000, 'pcs'),
  ('TRX-A00387', 'PRD-A-KEL-0136', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01559', '2026-11-20 18:17:16+07:00', 'Yusuf Maulana 3', 'Admin', 18022000, 0, 18022000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101558', '', '', '', 1490000, NULL, '2026-11-20 18:17:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01559', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 2, 2370000, 4740000, 2300000, 0, 140000, 'pcs'),
  ('TRX-A01559', 'PRD-A-AKS-0128', 'Batre Vivo Y91', 2, 41000, 82000, 36000, 0, 10000, 'pcs'),
  ('TRX-A01559', 'PRD-A-AKS-0054', 'Batre Samsung J1', 2, 40000, 80000, 30000, 0, 20000, 'pcs'),
  ('TRX-A01559', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A01559', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs'),
  ('TRX-A01559', 'PRD-A-HP-0348', 'HP REALME C15 8/256 21999', 3, 910000, 2730000, 700000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00294', '2026-11-20 18:10:40+07:00', 'Rina Marlina 5', 'Admin', 24028000, 0, 0, 24028000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100293', '', '', '', 1848000, NULL, '2026-11-20 18:10:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00294', 'PRD-A-KEL-0095', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00294', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 3, 73000, 219000, 58000, 0, 45000, 'pcs'),
  ('TRX-A00294', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 2, 2780000, 5560000, 2600000, 0, 360000, 'pcs'),
  ('TRX-A00294', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 3, 2920000, 8760000, 2700000, 0, 660000, 'pcs'),
  ('TRX-A00294', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A00294', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 3, 1570000, 4710000, 1500000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00845', '2026-11-20 17:53:27+07:00', 'Rudi Hartono', 'Admin', 16018000, 0, 16018000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100844', '', '', '', 1561500, NULL, '2026-11-20 17:53:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00845', 'PRD-A-AKS-0071', 'Case Oppo A57', 1, 31000, 31000, 19000, 0, 12000, 'pcs'),
  ('TRX-A00845', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 3, 2550000, 7650000, 2300000, 0, 750000, 'pcs'),
  ('TRX-A00845', 'PRD-A-KEL-0008', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00845', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 1, 1200000, 1200000, 1100000, 0, 100000, 'pcs'),
  ('TRX-A00845', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 2, 2680000, 5360000, 2500000, 0, 360000, 'pcs'),
  ('TRX-A00845', 'PRD-A-HP-0291', 'HP ITEL Y16 3/64 82632', 2, 860000, 1720000, 700000, 0, 320000, 'pcs'),
  ('TRX-A00845', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 3, 15000, 45000, 10000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01553', '2026-11-20 17:40:56+07:00', 'Rudi Hartono 2', 'Admin', 1990000, 0, 1990000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101552', '', '', '', 90000, NULL, '2026-11-20 17:40:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01553', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 1, 1990000, 1990000, 1900000, 0, 90000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01220', '2026-11-20 17:38:12+07:00', 'Sri Wahyuni 4', 'Admin', 58000, 0, 58000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101219', '', '', '', 11400, NULL, '2026-11-20 17:38:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01220', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01220', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A01220', 'PRD-A-KEL-0076', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01407', '2026-11-20 17:34:48+07:00', 'Fitri Rahmawati 3', 'Admin', 2100000, 0, 2100000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101406', '', '', '', 600000, NULL, '2026-11-20 17:34:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01407', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 3, 700000, 2100000, 500000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01920', '2026-11-20 17:30:39+07:00', 'Yusuf Maulana 4', 'Admin', 17211000, 0, 0, 17211000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101919', '', '', '', 1573000, NULL, '2026-11-20 17:30:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01920', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 3, 2590000, 7770000, 2400000, 0, 570000, 'pcs'),
  ('TRX-A01920', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 3, 1870000, 5610000, 1800000, 0, 210000, 'pcs'),
  ('TRX-A01920', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A01920', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 21000, 0, 30000, 'pcs'),
  ('TRX-A01920', 'PRD-A-AKS-0224', 'Case Samsung A03', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A01920', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 2, 35000, 70000, 20000, 0, 30000, 'pcs'),
  ('TRX-A01920', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 1, 740000, 740000, 500000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00784', '2026-11-20 17:17:18+07:00', 'Intan Permata', 'Admin', 13352500, 0, 13352500, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100783', '', '', '', 1624700, NULL, '2026-11-20 17:17:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00784', 'PRD-A-KEL-0045', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A00784', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 1, 1670000, 1670000, 1600000, 0, 70000, 'pcs'),
  ('TRX-A00784', 'PRD-A-HP-0030', 'HP NOKIA 9A 4/128 49838', 3, 700000, 2100000, 500000, 0, 600000, 'pcs'),
  ('TRX-A00784', 'PRD-A-AKS-0165', 'Case Vivo Y20', 2, 43000, 86000, 31000, 0, 24000, 'pcs'),
  ('TRX-A00784', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs'),
  ('TRX-A00784', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 3, 2000000, 6000000, 1800000, 0, 600000, 'pcs'),
  ('TRX-A00784', 'PRD-A-KEL-0070', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00061', '2026-11-20 16:51:18+07:00', 'Umum', 'Admin', 5692000, 0, 5692000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100060', '', '', '', 235000, NULL, '2026-11-20 16:51:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00061', 'PRD-A-KEL-0132', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00061', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 2, 36000, 72000, 25000, 0, 22000, 'pcs'),
  ('TRX-A00061', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 3, 1870000, 5610000, 1800000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00726', '2026-11-20 16:43:40+07:00', 'Fitri Rahmawati 3', 'Admin', 5210000, 0, 5210000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100725', '', '', '', 810000, NULL, '2026-11-20 16:43:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00726', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs'),
  ('TRX-A00726', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01945', '2026-11-20 16:37:32+07:00', 'Umum', 'Admin', 5698000, 0, 5698000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101944', '', '', '', 746000, NULL, '2026-11-20 16:37:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01945', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 1, 520000, 520000, 400000, 0, 120000, 'pcs'),
  ('TRX-A01945', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 2, 1510000, 3020000, 1300000, 0, 420000, 'pcs'),
  ('TRX-A01945', 'PRD-A-AKS-0148', 'Case Vivo Y20', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A01945', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 1, 2090000, 2090000, 1900000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01729', '2026-11-20 16:21:00+07:00', 'Intan Permata 5', 'Admin', 2420000, 0, 0, 2420000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101728', '', '', '', 536000, NULL, '2026-11-20 16:21:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01729', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 1, 39000, 39000, 35000, 0, 4000, 'pcs'),
  ('TRX-A01729', 'PRD-A-KEL-0185', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01729', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 2, 1150000, 2300000, 900000, 0, 500000, 'pcs'),
  ('TRX-A01729', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A01729', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 1, 28000, 28000, 21000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00708', '2026-11-20 16:09:05+07:00', 'Joko Prasetyo', 'Admin', 36000, 0, 36000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100707', '', '', '', 4000, NULL, '2026-11-20 16:09:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00708', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00924', '2026-11-20 16:08:17+07:00', 'Umum', 'Admin', 8590000, 0, 8590000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100923', '', '', '', 1023500, NULL, '2026-11-20 16:08:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00924', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 1, 590000, 590000, 400000, 0, 190000, 'pcs'),
  ('TRX-A00924', 'PRD-A-AKS-0188', 'Batre Oppo A57', 1, 52000, 52000, 40000, 0, 12000, 'pcs'),
  ('TRX-A00924', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A00924', 'PRD-A-AKS-0138', 'Tempered Glass Oppo', 1, 16000, 16000, 11000, 0, 5000, 'pcs'),
  ('TRX-A00924', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 1, 1610000, 1610000, 1400000, 0, 210000, 'pcs'),
  ('TRX-A00924', 'PRD-A-KEL-0074', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00924', 'PRD-A-KEL-0018', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00924', 'PRD-A-KEL-0003', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01701', '2026-11-20 15:37:09+07:00', 'Agus Wijaya 3', 'Admin', 10032000, 0, 10032000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101700', '', '', '', 1260000, NULL, '2026-11-20 15:37:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01701', 'PRD-A-AKS-0236', 'Memory Card 64GB', 2, 72000, 144000, 63000, 0, 18000, 'pcs'),
  ('TRX-A01701', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A01701', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 1, 1110000, 1110000, 1000000, 0, 110000, 'pcs'),
  ('TRX-A01701', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 2, 31000, 62000, 17000, 0, 28000, 'pcs'),
  ('TRX-A01701', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 2, 1540000, 3080000, 1400000, 0, 280000, 'pcs'),
  ('TRX-A01701', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 2, 1370000, 2740000, 1200000, 0, 340000, 'pcs'),
  ('TRX-A01701', 'PRD-A-KEL-0174', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00133', '2026-11-20 15:32:48+07:00', 'Sri Wahyuni 3', 'Admin', 11934000, 0, 11934000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100132', '', '', '', 825500, NULL, '2026-11-20 15:32:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00133', 'PRD-A-KEL-0008', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00133', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00133', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 3, 1050000, 3150000, 900000, 0, 450000, 'pcs'),
  ('TRX-A00133', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 1, 1670000, 1670000, 1600000, 0, 70000, 'pcs'),
  ('TRX-A00133', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A00133', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 2, 2150000, 4300000, 2100000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01345', '2026-11-20 15:28:26+07:00', 'Umum', 'Admin', 49000, 0, 49000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101344', '', '', '', 12000, NULL, '2026-11-20 15:28:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01345', 'PRD-A-KEL-0151', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01345', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 1, 39000, 39000, 30000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01932', '2026-11-20 15:05:30+07:00', 'Andi Kurnia 5', 'Admin', 6306000, 0, 6306000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101931', '', '', '', 847000, NULL, '2026-11-20 15:05:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01932', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01932', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs'),
  ('TRX-A01932', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A01932', 'PRD-A-KEL-0033', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01932', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 2, 780000, 1560000, 700000, 0, 160000, 'pcs'),
  ('TRX-A01932', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00913', '2026-11-20 14:54:11+07:00', 'Sri Wahyuni 5', 'Admin', 2233000, 0, 2233000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100912', '', '', '', 230000, NULL, '2026-11-20 14:54:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00913', 'PRD-A-AKS-0023', 'Memory Card 32GB', 2, 53000, 106000, 45000, 0, 16000, 'pcs'),
  ('TRX-A00913', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A00913', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 1, 2100000, 2100000, 1900000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00175', '2026-11-20 14:50:33+07:00', 'Rina Marlina 3', 'Admin', 18691000, 0, 18691000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100174', '', '', '', 1168000, NULL, '2026-11-20 14:50:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00175', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 2, 2270000, 4540000, 2100000, 0, 340000, 'pcs'),
  ('TRX-A00175', 'PRD-A-KEL-0044', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00175', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 3, 2350000, 7050000, 2300000, 0, 150000, 'pcs'),
  ('TRX-A00175', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 3, 2310000, 6930000, 2100000, 0, 630000, 'pcs'),
  ('TRX-A00175', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 2, 42000, 84000, 27000, 0, 30000, 'pcs'),
  ('TRX-A00175', 'PRD-A-KEL-0164', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00175', 'PRD-A-KEL-0040', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00175', 'PRD-A-KEL-0180', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01294', '2026-11-20 14:42:45+07:00', 'Umum', 'Admin', 16039000, 0, 8019500, 8019500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101293', '', '', '', 715500, NULL, '2026-11-20 14:42:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01294', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 1, 38000, 38000, 23000, 0, 15000, 'pcs'),
  ('TRX-A01294', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01294', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 3, 2580000, 7740000, 2500000, 0, 240000, 'pcs'),
  ('TRX-A01294', 'PRD-A-KEL-0154', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01294', 'PRD-A-HP-0150', 'HP OPPO Y55S 8/256 41252', 3, 1300000, 3900000, 1200000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00634', '2026-11-20 14:37:34+07:00', 'Lilis Suryani 5', 'Admin', 1700500, 0, 1700500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100633', '', '', '', 189700, NULL, '2026-11-20 14:37:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00634', 'PRD-A-KEL-0024', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00634', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 1, 1520000, 1520000, 1400000, 0, 120000, 'pcs'),
  ('TRX-A00634', 'PRD-A-KEL-0094', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00634', 'PRD-A-KEL-0005', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00634', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00567', '2026-11-20 14:28:23+07:00', 'Dedi Supriadi 4', 'Admin', 1742000, 0, 1742000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100566', '', '', '', 222000, NULL, '2026-11-20 14:28:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00567', 'PRD-A-AKS-0216', 'Memory Card 16GB', 1, 41000, 41000, 33000, 0, 8000, 'pcs'),
  ('TRX-A00567', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 1, 1560000, 1560000, 1400000, 0, 160000, 'pcs'),
  ('TRX-A00567', 'PRD-A-AKS-0183', 'Kabel Charger 2m', 3, 14000, 42000, 10000, 0, 12000, 'pcs'),
  ('TRX-A00567', 'PRD-A-KEL-0159', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00567', 'PRD-A-AKS-0098', 'Tempered Glass Oppo', 3, 23000, 69000, 11000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01555', '2026-11-20 14:20:49+07:00', 'Yusuf Maulana 5', 'Admin', 2458000, 0, 2458000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101554', '', '', '', 87000, NULL, '2026-11-20 14:20:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01555', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A01555', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 1, 2370000, 2370000, 2300000, 0, 70000, 'pcs'),
  ('TRX-A01555', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01103', '2026-11-20 14:12:31+07:00', 'Ayu Lestari 2', 'Admin', 6787000, 0, 3393500, 3393500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101102', '', '', '', 486000, NULL, '2026-11-20 14:12:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01103', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 1, 2480000, 2480000, 2300000, 0, 180000, 'pcs'),
  ('TRX-A01103', 'PRD-A-AKS-0050', 'Case Redmi 9A', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A01103', 'PRD-A-AKS-0150', 'Memory Card 16GB', 3, 55000, 165000, 41000, 0, 42000, 'pcs'),
  ('TRX-A01103', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 2, 2020000, 4040000, 1900000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00211', '2026-11-20 13:59:20+07:00', 'Intan Permata', 'Admin', 5920000, 0, 0, 5920000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100210', '', '', '', 982000, NULL, '2026-11-20 13:59:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00211', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00211', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 2, 590000, 1180000, 400000, 0, 380000, 'pcs'),
  ('TRX-A00211', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 2, 1610000, 3220000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A00211', 'PRD-A-AKS-0071', 'Case Oppo A57', 2, 31000, 62000, 19000, 0, 24000, 'pcs'),
  ('TRX-A00211', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00211', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 1, 1330000, 1330000, 1200000, 0, 130000, 'pcs'),
  ('TRX-A00211', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01540', '2026-11-20 13:47:09+07:00', 'Joko Prasetyo 4', 'Admin', 78000, 0, 39000, 39000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101539', '', '', '', 10000, NULL, '2026-11-20 13:47:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01540', 'PRD-A-AKS-0177', 'Case Samsung A03', 2, 39000, 78000, 34000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01916', '2026-11-20 13:30:32+07:00', 'Umum', 'Admin', 7662000, 0, 7662000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101915', '', '', '', 833000, NULL, '2026-11-20 13:30:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01916', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01916', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 2, 1390000, 2780000, 1200000, 0, 380000, 'pcs'),
  ('TRX-A01916', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 2, 36000, 72000, 26000, 0, 20000, 'pcs'),
  ('TRX-A01916', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs'),
  ('TRX-A01916', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 1, 430000, 430000, 300000, 0, 130000, 'pcs'),
  ('TRX-A01916', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 3, 29000, 87000, 25000, 0, 12000, 'pcs'),
  ('TRX-A01916', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 3, 41000, 123000, 34000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01261', '2026-11-20 13:20:50+07:00', 'Umum', 'Admin', 70000, 0, 70000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101260', '', '', '', 40000, NULL, '2026-11-20 13:20:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01261', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00704', '2026-11-20 13:09:26+07:00', 'Maya Putri 2', 'Admin', 2506000, 0, 0, 2506000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100703', '', '', '', 244000, NULL, '2026-11-20 13:09:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00704', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00704', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 2, 18000, 36000, 14000, 0, 8000, 'pcs'),
  ('TRX-A00704', 'PRD-A-AKS-0226', 'Memory Card 32GB', 2, 85000, 170000, 78000, 0, 14000, 'pcs'),
  ('TRX-A00704', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 2, 35000, 70000, 21000, 0, 28000, 'pcs'),
  ('TRX-A00704', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00259', '2026-11-20 12:54:30+07:00', 'Umum', 'Admin', 6634000, 0, 6634000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100258', '', '', '', 559000, NULL, '2026-11-20 12:54:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00259', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 1, 960000, 960000, 800000, 0, 160000, 'pcs'),
  ('TRX-A00259', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 2, 2780000, 5560000, 2600000, 0, 360000, 'pcs'),
  ('TRX-A00259', 'PRD-A-KEL-0093', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00259', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 3, 18000, 54000, 8000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01073', '2026-11-20 12:39:27+07:00', 'Eko Saputra 3', 'Admin', 7275000, 0, 7275000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101072', '', '', '', 553000, NULL, '2026-11-20 12:39:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01073', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 1, 2500000, 2500000, 2300000, 0, 200000, 'pcs'),
  ('TRX-A01073', 'PRD-A-AKS-0120', 'Batre Oppo A57', 2, 33000, 66000, 22000, 0, 22000, 'pcs'),
  ('TRX-A01073', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 2, 970000, 1940000, 900000, 0, 140000, 'pcs'),
  ('TRX-A01073', 'PRD-A-AKS-0045', 'Memory Card 16GB', 3, 58000, 174000, 53000, 0, 15000, 'pcs'),
  ('TRX-A01073', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A01073', 'PRD-A-KEL-0052', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01073', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00148', '2026-11-20 12:28:20+07:00', 'Rudi Hartono 4', 'Admin', 1752000, 0, 1752000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100147', '', '', '', 328000, NULL, '2026-11-20 12:28:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00148', 'PRD-A-AKS-0198', 'Batre Oppo A57', 2, 19000, 38000, 14000, 0, 10000, 'pcs'),
  ('TRX-A00148', 'PRD-A-KEL-0149', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00148', 'PRD-A-AKS-0153', 'Memory Card 32GB', 2, 92000, 184000, 86000, 0, 12000, 'pcs'),
  ('TRX-A00148', 'PRD-A-HP-0002', 'HP REALME A16 2/16 79012', 3, 500000, 1500000, 400000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01471', '2026-11-20 12:27:42+07:00', 'Umum', 'Admin', 7799500, 0, 7799500, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101470', '', '', '', 686100, NULL, '2026-11-20 12:27:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01471', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01471', 'PRD-A-KEL-0038', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A01471', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 1, 64000, 64000, 51000, 0, 13000, 'pcs'),
  ('TRX-A01471', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 3, 1910000, 5730000, 1800000, 0, 330000, 'pcs'),
  ('TRX-A01471', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A01471', 'PRD-A-KEL-0056', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00245', '2026-11-20 11:57:50+07:00', 'Umum', 'Admin', 11290500, 0, 11290500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100244', '', '', '', 1083000, NULL, '2026-11-20 11:57:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00245', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 3, 1220000, 3660000, 1000000, 0, 660000, 'pcs'),
  ('TRX-A00245', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A00245', 'PRD-A-KEL-0079', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00164', '2026-11-20 11:54:59+07:00', 'Umum', 'Admin', 2600000, 0, 1300000, 1300000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100163', '', '', '', 100000, NULL, '2026-11-20 11:54:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00164', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 1, 2600000, 2600000, 2500000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00689', '2026-11-20 11:53:59+07:00', 'Hendra Gunawan 5', 'Admin', 25000, 0, 25000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100688', '', '', '', 9000, NULL, '2026-11-20 11:53:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00689', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A00689', 'PRD-A-KEL-0077', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00041', '2026-11-20 11:38:05+07:00', 'Umum', 'Admin', 7346000, 0, 7346000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100040', '', '', '', 986000, NULL, '2026-11-20 11:38:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00041', 'PRD-A-AKS-0168', 'Memory Card 32GB', 1, 40000, 40000, 32000, 0, 8000, 'pcs'),
  ('TRX-A00041', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 2, 1670000, 3340000, 1500000, 0, 340000, 'pcs'),
  ('TRX-A00041', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 2, 18000, 36000, 14000, 0, 8000, 'pcs'),
  ('TRX-A00041', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 3, 1310000, 3930000, 1100000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00036', '2026-11-20 11:30:38+07:00', 'Umum', 'Admin', 9777000, 0, 9777000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100035', '', '', '', 999000, NULL, '2026-11-20 11:30:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00036', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A00036', 'PRD-A-AKS-0084', 'Memory Card 64GB', 2, 95000, 190000, 82000, 0, 26000, 'pcs'),
  ('TRX-A00036', 'PRD-A-AKS-0149', 'Case Samsung A03', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00036', 'PRD-A-HP-0070', 'HP SAMSUNG 9A 4/128 90887', 2, 2070000, 4140000, 1900000, 0, 340000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00161', '2026-11-20 11:09:19+07:00', 'Intan Permata 5', 'Admin', 12390000, 0, 6195000, 6195000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100160', '', '', '', 673000, NULL, '2026-11-20 11:09:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00161', 'PRD-A-KEL-0047', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00161', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 1, 960000, 960000, 800000, 0, 160000, 'pcs'),
  ('TRX-A00161', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A00161', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 3, 2190000, 6570000, 2100000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01938', '2026-11-20 11:06:05+07:00', 'Umum', 'Admin', 3646000, 0, 3646000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101937', '', '', '', 296000, NULL, '2026-11-20 11:06:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01938', 'PRD-A-AKS-0141', 'Batre Oppo A57', 3, 62000, 186000, 50000, 0, 36000, 'pcs'),
  ('TRX-A01938', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 2, 1730000, 3460000, 1600000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01436', '2026-11-20 11:04:13+07:00', 'Umum', 'Admin', 5690000, 0, 2845000, 2845000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101435', '', '', '', 506000, NULL, '2026-11-20 11:04:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01436', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 2, 35000, 70000, 20000, 0, 30000, 'pcs'),
  ('TRX-A01436', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs'),
  ('TRX-A01436', 'PRD-A-KEL-0111', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01436', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 2, 26000, 52000, 16000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01167', '2026-11-20 10:57:38+07:00', 'Hendra Gunawan 2', 'Admin', 183000, 0, 183000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101166', '', '', '', 51000, NULL, '2026-11-20 10:57:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01167', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A01167', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 3, 27000, 81000, 18000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01958', '2026-11-20 10:57:24+07:00', 'Dedi Supriadi 4', 'Admin', 10074000, 0, 5037000, 5037000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101957', '', '', '', 1048000, NULL, '2026-11-20 10:57:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01958', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs'),
  ('TRX-A01958', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 2, 27000, 54000, 13000, 0, 28000, 'pcs'),
  ('TRX-A01958', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 3, 1730000, 5190000, 1600000, 0, 390000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01771', '2026-11-20 10:38:07+07:00', 'Andi Kurnia 4', 'Admin', 5328000, 0, 5328000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101770', '', '', '', 729000, NULL, '2026-11-20 10:38:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01771', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 1, 2610000, 2610000, 2500000, 0, 110000, 'pcs'),
  ('TRX-A01771', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01771', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 1, 1180000, 1180000, 1100000, 0, 80000, 'pcs'),
  ('TRX-A01771', 'PRD-A-AKS-0055', 'Memory Card 16GB', 3, 66000, 198000, 56000, 0, 30000, 'pcs'),
  ('TRX-A01771', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 2, 540000, 1080000, 300000, 0, 480000, 'pcs'),
  ('TRX-A01771', 'PRD-A-KEL-0068', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01771', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01889', '2026-11-20 10:24:08+07:00', 'Umum', 'Admin', 5276000, 0, 2638000, 2638000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101888', '', '', '', 342000, NULL, '2026-11-20 10:24:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01889', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 2, 18000, 36000, 13000, 0, 10000, 'pcs'),
  ('TRX-A01889', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 2, 2560000, 5120000, 2400000, 0, 320000, 'pcs'),
  ('TRX-A01889', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01033', '2026-11-20 10:13:01+07:00', 'Umum', 'Admin', 2220000, 0, 2220000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101032', '', '', '', 92000, NULL, '2026-11-20 10:13:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01033', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A01033', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 2, 20000, 40000, 14000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01052', '2026-11-20 09:41:14+07:00', 'Ayu Lestari', 'Admin', 2515000, 0, 1257500, 1257500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101051', '', '', '', 386000, NULL, '2026-11-20 09:41:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01052', 'PRD-A-KEL-0170', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01052', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs'),
  ('TRX-A01052', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 1, 46000, 46000, 35000, 0, 11000, 'pcs'),
  ('TRX-A01052', 'PRD-A-AKS-0043', 'Case Oppo A57', 3, 28000, 84000, 13000, 0, 45000, 'pcs'),
  ('TRX-A01052', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00236', '2026-11-20 09:36:29+07:00', 'Rudi Hartono 3', 'Admin', 24000, 0, 24000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100235', '', '', '', 6000, NULL, '2026-11-20 09:36:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00236', 'PRD-A-KEL-0163', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01705', '2026-11-20 09:30:01+07:00', 'Ayu Lestari 4', 'Admin', 771000, 0, 771000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101704', '', '', '', 274000, NULL, '2026-11-20 09:30:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01705', 'PRD-A-HP-0245', 'HP NOKIA C11 4/64 32903', 1, 640000, 640000, 400000, 0, 240000, 'pcs'),
  ('TRX-A01705', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 1, 43000, 43000, 35000, 0, 8000, 'pcs'),
  ('TRX-A01705', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 2, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A01705', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 1, 22000, 22000, 15000, 0, 7000, 'pcs'),
  ('TRX-A01705', 'PRD-A-KEL-0054', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01705', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 3, 18000, 54000, 13000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01374', '2026-11-20 09:17:39+07:00', 'Lilis Suryani 3', 'Admin', 3779000, 0, 3779000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101373', '', '', '', 344000, NULL, '2026-11-20 09:17:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01374', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 2, 1870000, 3740000, 1700000, 0, 340000, 'pcs'),
  ('TRX-A01374', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 1, 39000, 39000, 35000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00024', '2026-11-20 08:50:26+07:00', 'Umum', 'Admin', 14600000, 0, 0, 14600000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100023', '', '', '', 1767000, NULL, '2026-11-20 08:50:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00024', 'PRD-A-AKS-0221', 'Memory Card 32GB', 2, 88000, 176000, 76000, 0, 24000, 'pcs'),
  ('TRX-A00024', 'PRD-A-AKS-0049', 'Memory Card 32GB', 1, 84000, 84000, 81000, 0, 3000, 'pcs'),
  ('TRX-A00024', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 3, 1680000, 5040000, 1500000, 0, 540000, 'pcs'),
  ('TRX-A00024', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 3, 2600000, 7800000, 2400000, 0, 600000, 'pcs'),
  ('TRX-A00024', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 3, 500000, 1500000, 300000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00414', '2026-11-20 08:47:55+07:00', 'Umum', 'Admin', 5942000, 0, 5942000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100413', '', '', '', 315000, NULL, '2026-11-20 08:47:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00414', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 2, 2950000, 5900000, 2800000, 0, 300000, 'pcs'),
  ('TRX-A00414', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 3, 14000, 42000, 9000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00808', '2026-11-20 08:16:26+07:00', 'Andi Kurnia 2', 'Admin', 65000, 0, 65000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100807', '', '', '', 5000, NULL, '2026-11-20 08:16:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00808', 'PRD-A-AKS-0144', 'Voucher Telkomsel 10GB', 1, 65000, 65000, 60000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01388', '2026-11-20 08:00:04+07:00', 'Ayu Lestari 4', 'Admin', 11671000, 0, 11671000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101387', '', '', '', 1018000, NULL, '2026-11-20 08:00:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01388', 'PRD-A-HP-0271', 'HP REDMI A15 2/32 43955', 2, 2480000, 4960000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A01388', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 3, 42000, 126000, 27000, 0, 45000, 'pcs'),
  ('TRX-A01388', 'PRD-A-KEL-0062', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01388', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01388', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A01388', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs'),
  ('TRX-A01388', 'PRD-A-AKS-0073', 'Memory Card 64GB', 3, 35000, 105000, 31000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00356', '2026-11-19 20:57:15+07:00', 'Umum', 'Admin', 1380000, 0, 1380000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100355', '', '', '', 180000, NULL, '2026-11-19 20:57:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00356', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 3, 460000, 1380000, 400000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01577', '2026-11-19 20:52:10+07:00', 'Umum', 'Admin', 4224000, 0, 0, 4224000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101576', '', '', '', 609000, NULL, '2026-11-19 20:52:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01577', 'PRD-A-KEL-0119', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01577', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 1, 2700000, 2700000, 2600000, 0, 100000, 'pcs'),
  ('TRX-A01577', 'PRD-A-KEL-0102', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01577', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 2, 750000, 1500000, 500000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00692', '2026-11-19 20:49:11+07:00', 'Umum', 'Admin', 15923500, 0, 15923500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100691', '', '', '', 805100, NULL, '2026-11-19 20:49:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00692', 'PRD-A-HP-0050', 'HP REALME S23 2/16 76169', 3, 2860000, 8580000, 2700000, 0, 480000, 'pcs'),
  ('TRX-A00692', 'PRD-A-KEL-0083', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00692', 'PRD-A-KEL-0053', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00692', 'PRD-A-AKS-0104', 'Memory Card 64GB', 2, 43000, 86000, 40000, 0, 6000, 'pcs'),
  ('TRX-A00692', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 2, 18000, 36000, 11000, 0, 14000, 'pcs'),
  ('TRX-A00692', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 3, 2400000, 7200000, 2300000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01077', '2026-11-19 20:43:22+07:00', 'Joko Prasetyo 4', 'Admin', 3840000, 0, 3840000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101076', '', '', '', 240000, NULL, '2026-11-19 20:43:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01077', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00669', '2026-11-19 20:20:34+07:00', 'Umum', 'Admin', 2709000, 0, 2709000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100668', '', '', '', 508000, NULL, '2026-11-19 20:20:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00669', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 3, 860000, 2580000, 700000, 0, 480000, 'pcs'),
  ('TRX-A00669', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 3, 9000, 27000, 6000, 0, 9000, 'pcs'),
  ('TRX-A00669', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 3, 33000, 99000, 27000, 0, 18000, 'pcs'),
  ('TRX-A00669', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 1, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A00669', 'PRD-A-KEL-0141', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00899', '2026-11-19 20:19:46+07:00', 'Agus Wijaya 3', 'Admin', 261000, 0, 130500, 130500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100898', '', '', '', 102000, NULL, '2026-11-19 20:19:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00899', 'PRD-A-AKS-0230', 'Handsfree Oppo', 3, 52000, 156000, 38000, 0, 42000, 'pcs'),
  ('TRX-A00899', 'PRD-A-KEL-0090', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00705', '2026-11-19 20:11:47+07:00', 'Rudi Hartono 4', 'Admin', 2616000, 0, 2616000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100704', '', '', '', 176000, NULL, '2026-11-19 20:11:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00705', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A00705', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 1, 36000, 36000, 26000, 0, 10000, 'pcs'),
  ('TRX-A00705', 'PRD-A-KEL-0194', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00908', '2026-11-19 20:11:37+07:00', 'Umum', 'Admin', 5748000, 0, 5748000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100907', '', '', '', 387000, NULL, '2026-11-19 20:11:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00908', 'PRD-A-AKS-0108', 'Memory Card 16GB', 3, 96000, 288000, 87000, 0, 27000, 'pcs'),
  ('TRX-A00908', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 3, 1820000, 5460000, 1700000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00823', '2026-11-19 20:09:07+07:00', 'Rina Marlina 2', 'Admin', 821000, 0, 821000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100822', '', '', '', 86000, NULL, '2026-11-19 20:09:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00823', 'PRD-A-AKS-0120', 'Batre Oppo A57', 1, 33000, 33000, 22000, 0, 11000, 'pcs'),
  ('TRX-A00823', 'PRD-A-AKS-0043', 'Case Oppo A57', 1, 28000, 28000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00823', 'PRD-A-HP-0017', 'HP SAMSUNG Y91C 2/32 91420', 1, 760000, 760000, 700000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00471', '2026-11-19 20:06:53+07:00', 'Joko Prasetyo 4', 'Admin', 11613000, 0, 11613000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100470', '', '', '', 1311000, NULL, '2026-11-19 20:06:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00471', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 2, 1810000, 3620000, 1600000, 0, 420000, 'pcs'),
  ('TRX-A00471', 'PRD-A-HP-0291', 'HP ITEL Y16 3/64 82632', 2, 860000, 1720000, 700000, 0, 320000, 'pcs'),
  ('TRX-A00471', 'PRD-A-KEL-0016', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A00471', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 3, 2090000, 6270000, 1900000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00644', '2026-11-19 19:59:37+07:00', 'Umum', 'Admin', 3364000, 0, 3364000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100643', '', '', '', 337500, NULL, '2026-11-19 19:59:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00644', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 3, 1110000, 3330000, 1000000, 0, 330000, 'pcs'),
  ('TRX-A00644', 'PRD-A-KEL-0159', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00644', 'PRD-A-KEL-0088', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01131', '2026-11-19 19:49:53+07:00', 'Umum', 'Admin', 2740000, 0, 0, 2740000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101130', '', '', '', 140000, NULL, '2026-11-19 19:49:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01131', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 2, 1370000, 2740000, 1300000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01466', '2026-11-19 19:38:02+07:00', 'Umum', 'Admin', 13442000, 0, 6721000, 6721000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101465', '', '', '', 957500, NULL, '2026-11-19 19:38:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01466', 'PRD-A-KEL-0031', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01466', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 1, 31000, 31000, 21000, 0, 10000, 'pcs'),
  ('TRX-A01466', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 1, 2000000, 2000000, 1900000, 0, 100000, 'pcs'),
  ('TRX-A01466', 'PRD-A-AKS-0071', 'Case Oppo A57', 2, 31000, 62000, 19000, 0, 24000, 'pcs'),
  ('TRX-A01466', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A01466', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A01466', 'PRD-A-KEL-0148', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01014', '2026-11-19 19:31:51+07:00', 'Fitri Rahmawati 2', 'Admin', 5414000, 0, 5414000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101013', '', '', '', 498000, NULL, '2026-11-19 19:31:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01014', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 3, 52000, 156000, 46000, 0, 18000, 'pcs'),
  ('TRX-A01014', 'PRD-A-AKS-0191', 'Batre Samsung J1', 2, 54000, 108000, 39000, 0, 30000, 'pcs'),
  ('TRX-A01014', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 1, 950000, 950000, 900000, 0, 50000, 'pcs'),
  ('TRX-A01014', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 2, 2100000, 4200000, 1900000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00690', '2026-11-19 19:16:18+07:00', 'Maya Putri', 'Admin', 12410000, 0, 6205000, 6205000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100689', '', '', '', 910000, NULL, '2026-11-19 19:16:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00690', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs'),
  ('TRX-A00690', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A00690', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 1, 31000, 31000, 17000, 0, 14000, 'pcs'),
  ('TRX-A00690', 'PRD-A-AKS-0201', 'Memory Card 32GB', 2, 38000, 76000, 27000, 0, 22000, 'pcs'),
  ('TRX-A00690', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 3, 74000, 222000, 59000, 0, 45000, 'pcs'),
  ('TRX-A00690', 'PRD-A-KEL-0186', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A00690', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs'),
  ('TRX-A00690', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 1, 56000, 56000, 45000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00440', '2026-11-19 19:01:32+07:00', 'Umum', 'Admin', 3100000, 0, 3100000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100439', '', '', '', 300000, NULL, '2026-11-19 19:01:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00440', 'PRD-A-HP-0098', 'HP INFINIX 9A 3/64 25641', 2, 1550000, 3100000, 1400000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00232', '2026-11-19 18:16:22+07:00', 'Umum', 'Admin', 940000, 0, 940000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100231', '', '', '', 272000, NULL, '2026-11-19 18:16:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00232', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 2, 430000, 860000, 300000, 0, 260000, 'pcs'),
  ('TRX-A00232', 'PRD-A-AKS-0160', 'Memory Card 32GB', 2, 40000, 80000, 34000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01606', '2026-11-19 18:02:27+07:00', 'Umum', 'Admin', 19576000, 0, 19576000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101605', '', '', '', 846000, NULL, '2026-11-19 18:02:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01606', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 3, 2350000, 7050000, 2300000, 0, 150000, 'pcs'),
  ('TRX-A01606', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs'),
  ('TRX-A01606', 'PRD-A-KEL-0057', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01606', 'PRD-A-AKS-0091', 'Case Oppo A57', 2, 22000, 44000, 11000, 0, 22000, 'pcs'),
  ('TRX-A01606', 'PRD-A-HP-0334', 'HP SAMSUNG Y16 3/64 17970', 3, 2690000, 8070000, 2600000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01292', '2026-11-19 18:00:41+07:00', 'Agus Wijaya 4', 'Admin', 5059000, 0, 2529500, 2529500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101291', '', '', '', 753000, NULL, '2026-11-19 18:00:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01292', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 3, 27000, 81000, 13000, 0, 42000, 'pcs'),
  ('TRX-A01292', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 2, 740000, 1480000, 600000, 0, 280000, 'pcs'),
  ('TRX-A01292', 'PRD-A-AKS-0064', 'Case Redmi 9A', 2, 38000, 76000, 25000, 0, 26000, 'pcs'),
  ('TRX-A01292', 'PRD-A-HP-0454', 'HP INFINIX A16 4/128 75084', 1, 1160000, 1160000, 1000000, 0, 160000, 'pcs'),
  ('TRX-A01292', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 1, 2100000, 2100000, 1900000, 0, 200000, 'pcs'),
  ('TRX-A01292', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 3, 54000, 162000, 39000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01018', '2026-11-19 17:35:03+07:00', 'Budi Santoso 5', 'Admin', 9361000, 0, 4680500, 4680500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101017', '', '', '', 422000, NULL, '2026-11-19 17:35:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01018', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 3, 2420000, 7260000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A01018', 'PRD-A-KEL-0029', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A01018', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 1, 2050000, 2050000, 2000000, 0, 50000, 'pcs'),
  ('TRX-A01018', 'PRD-A-AKS-0067', 'Case Redmi 9A', 1, 39000, 39000, 30000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00832', '2026-11-19 17:23:37+07:00', 'Fajar Nugroho 4', 'Admin', 3463000, 0, 3463000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100831', '', '', '', 248000, NULL, '2026-11-19 17:23:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00832', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 1, 29000, 29000, 25000, 0, 4000, 'pcs'),
  ('TRX-A00832', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs'),
  ('TRX-A00832', 'PRD-A-KEL-0029', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A00832', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 3, 1070000, 3210000, 1000000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01999', '2026-11-19 17:17:24+07:00', 'Lilis Suryani 5', 'Admin', 1590000, 0, 1590000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101998', '', '', '', 190000, NULL, '2026-11-19 17:17:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01999', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01962', '2026-11-19 17:15:14+07:00', 'Umum', 'Admin', 18087000, 0, 0, 18087000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101961', '', '', '', 1484000, NULL, '2026-11-19 17:15:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01962', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 3, 1260000, 3780000, 1100000, 0, 480000, 'pcs'),
  ('TRX-A01962', 'PRD-A-KEL-0057', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01962', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs'),
  ('TRX-A01962', 'PRD-A-AKS-0013', 'Case Samsung A03', 3, 41000, 123000, 29000, 0, 36000, 'pcs'),
  ('TRX-A01962', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 3, 2780000, 8340000, 2600000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01135', '2026-11-19 17:04:52+07:00', 'Nur Halimah 5', 'Admin', 6007000, 0, 6007000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101134', '', '', '', 1809500, NULL, '2026-11-19 17:04:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01135', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 3, 690000, 2070000, 500000, 0, 570000, 'pcs'),
  ('TRX-A01135', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 2, 650000, 1300000, 400000, 0, 500000, 'pcs'),
  ('TRX-A01135', 'PRD-A-KEL-0094', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01135', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 3, 830000, 2490000, 600000, 0, 690000, 'pcs'),
  ('TRX-A01135', 'PRD-A-AKS-0144', 'Voucher Telkomsel 10GB', 1, 65000, 65000, 60000, 0, 5000, 'pcs'),
  ('TRX-A01135', 'PRD-A-KEL-0088', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01536', '2026-11-19 16:27:04+07:00', 'Umum', 'Admin', 5617000, 0, 5617000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101535', '', '', '', 454000, NULL, '2026-11-19 16:27:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01536', 'PRD-A-KEL-0087', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A01536', 'PRD-A-AKS-0158', 'Kabel Charger 2m', 2, 24000, 48000, 11000, 0, 26000, 'pcs'),
  ('TRX-A01536', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 27000, 0, 24000, 'pcs'),
  ('TRX-A01536', 'PRD-A-KEL-0074', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01536', 'PRD-A-AKS-0230', 'Handsfree Oppo', 3, 52000, 156000, 38000, 0, 42000, 'pcs'),
  ('TRX-A01536', 'PRD-A-KEL-0063', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01536', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 2, 2540000, 5080000, 2400000, 0, 280000, 'pcs'),
  ('TRX-A01536', 'PRD-A-KEL-0047', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01656', '2026-11-19 16:24:53+07:00', 'Umum', 'Admin', 8861000, 0, 8861000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101655', '', '', '', 1520000, NULL, '2026-11-19 16:24:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01656', 'PRD-A-AKS-0220', 'Tempered Glass Samsung', 2, 23000, 46000, 20000, 0, 6000, 'pcs'),
  ('TRX-A01656', 'PRD-A-KEL-0085', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01656', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 3, 2250000, 6750000, 2000000, 0, 750000, 'pcs'),
  ('TRX-A01656', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 3, 650000, 1950000, 400000, 0, 750000, 'pcs'),
  ('TRX-A01656', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 1, 55000, 55000, 50000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01350', '2026-11-19 16:24:18+07:00', 'Fitri Rahmawati 3', 'Admin', 15690000, 0, 15690000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101349', '', '', '', 1590000, NULL, '2026-11-19 16:24:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01350', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs'),
  ('TRX-A01350', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 3, 590000, 1770000, 400000, 0, 570000, 'pcs'),
  ('TRX-A01350', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A01350', 'PRD-A-HP-0334', 'HP SAMSUNG Y16 3/64 17970', 1, 2690000, 2690000, 2600000, 0, 90000, 'pcs'),
  ('TRX-A01350', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 3, 1200000, 3600000, 1100000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01093', '2026-11-19 16:10:11+07:00', 'Umum', 'Admin', 944000, 0, 944000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101092', '', '', '', 272000, NULL, '2026-11-19 16:10:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01093', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 1, 34000, 34000, 26000, 0, 8000, 'pcs'),
  ('TRX-A01093', 'PRD-A-HP-0175', 'HP REALME S23 4/64 80825', 2, 410000, 820000, 300000, 0, 220000, 'pcs'),
  ('TRX-A01093', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs'),
  ('TRX-A01093', 'PRD-A-KEL-0022', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01346', '2026-11-19 16:00:38+07:00', 'Umum', 'Admin', 8291000, 0, 8291000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101345', '', '', '', 762000, NULL, '2026-11-19 16:00:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01346', 'PRD-A-KEL-0077', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01346', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 3, 2610000, 7830000, 2400000, 0, 630000, 'pcs'),
  ('TRX-A01346', 'PRD-A-KEL-0175', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A01346', 'PRD-A-AKS-0013', 'Case Samsung A03', 2, 41000, 82000, 29000, 0, 24000, 'pcs'),
  ('TRX-A01346', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 3, 61000, 183000, 46000, 0, 45000, 'pcs'),
  ('TRX-A01346', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A01346', 'PRD-A-AKS-0114', 'Memory Card 16GB', 2, 44000, 88000, 30000, 0, 28000, 'pcs'),
  ('TRX-A01346', 'PRD-A-KEL-0092', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00377', '2026-11-19 15:52:51+07:00', 'Nur Halimah 3', 'Admin', 8941000, 0, 0, 8941000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100376', '', '', '', 976400, NULL, '2026-11-19 15:52:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00377', 'PRD-A-KEL-0038', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00377', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 3, 1040000, 3120000, 900000, 0, 420000, 'pcs'),
  ('TRX-A00377', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A00377', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 2, 1540000, 3080000, 1400000, 0, 280000, 'pcs'),
  ('TRX-A00377', 'PRD-A-AKS-0201', 'Memory Card 32GB', 1, 38000, 38000, 27000, 0, 11000, 'pcs'),
  ('TRX-A00377', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 2, 30000, 60000, 18000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00687', '2026-11-19 15:33:44+07:00', 'Umum', 'Admin', 57000, 0, 57000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100686', '', '', '', 22000, NULL, '2026-11-19 15:33:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00687', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 2, 25000, 50000, 15000, 0, 20000, 'pcs'),
  ('TRX-A00687', 'PRD-A-KEL-0186', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01148', '2026-11-19 15:28:35+07:00', 'Fitri Rahmawati', 'Admin', 105000, 0, 105000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101147', '', '', '', 45000, NULL, '2026-11-19 15:28:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01148', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 3, 35000, 105000, 20000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00982', '2026-11-19 15:28:08+07:00', 'Umum', 'Admin', 341000, 0, 341000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100981', '', '', '', 57000, NULL, '2026-11-19 15:28:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00982', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 1, 31000, 31000, 21000, 0, 10000, 'pcs'),
  ('TRX-A00982', 'PRD-A-AKS-0084', 'Memory Card 64GB', 3, 95000, 285000, 82000, 0, 39000, 'pcs'),
  ('TRX-A00982', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 1, 25000, 25000, 17000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01088', '2026-11-19 15:27:19+07:00', 'Nur Halimah', 'Admin', 2101500, 0, 2101500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101087', '', '', '', 500700, NULL, '2026-11-19 15:27:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01088', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 2, 1050000, 2100000, 800000, 0, 500000, 'pcs'),
  ('TRX-A01088', 'PRD-A-KEL-0005', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01357', '2026-11-19 15:14:48+07:00', 'Rina Marlina 2', 'Admin', 20935000, 0, 20935000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101356', '', '', '', 1219000, NULL, '2026-11-19 15:14:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01357', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 3, 2780000, 8340000, 2600000, 0, 540000, 'pcs'),
  ('TRX-A01357', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A01357', 'PRD-A-KEL-0020', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01357', 'PRD-A-KEL-0165', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01357', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 2, 28000, 56000, 24000, 0, 8000, 'pcs'),
  ('TRX-A01357', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A01357', 'PRD-A-AKS-0104', 'Memory Card 64GB', 2, 43000, 86000, 40000, 0, 6000, 'pcs'),
  ('TRX-A01357', 'PRD-A-KEL-0009', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01029', '2026-11-19 15:13:49+07:00', 'Dewi Lestari 3', 'Admin', 9075000, 0, 0, 9075000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101028', '', '', '', 536000, NULL, '2026-11-19 15:13:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01029', 'PRD-A-AKS-0023', 'Memory Card 32GB', 3, 53000, 159000, 45000, 0, 24000, 'pcs'),
  ('TRX-A01029', 'PRD-A-KEL-0130', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01029', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00255', '2026-11-19 15:13:28+07:00', 'Hendra Gunawan 5', 'Admin', 18850000, 0, 18850000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100254', '', '', '', 2153000, NULL, '2026-11-19 15:13:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00255', 'PRD-A-KEL-0060', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00255', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 2, 1170000, 2340000, 1100000, 0, 140000, 'pcs'),
  ('TRX-A00255', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A00255', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 1, 2540000, 2540000, 2400000, 0, 140000, 'pcs'),
  ('TRX-A00255', 'PRD-A-KEL-0124', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00255', 'PRD-A-HP-0291', 'HP ITEL Y16 3/64 82632', 3, 860000, 2580000, 700000, 0, 480000, 'pcs'),
  ('TRX-A00255', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 3, 1420000, 4260000, 1200000, 0, 660000, 'pcs'),
  ('TRX-A00255', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 3, 36000, 108000, 25000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01431', '2026-11-19 15:13:11+07:00', 'Dewi Lestari', 'Admin', 8910000, 0, 8910000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101430', '', '', '', 510000, NULL, '2026-11-19 15:13:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01431', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00323', '2026-11-19 15:05:11+07:00', 'Siti Aisyah 4', 'Admin', 3050000, 0, 3050000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100322', '', '', '', 650000, NULL, '2026-11-19 15:05:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00323', 'PRD-A-HP-0292', 'HP VIVO C3 4/64 55632', 1, 850000, 850000, 600000, 0, 250000, 'pcs'),
  ('TRX-A00323', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 2, 1100000, 2200000, 900000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01676', '2026-11-19 14:54:29+07:00', 'Dedi Supriadi 4', 'Admin', 11913000, 0, 11913000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101675', '', '', '', 764000, NULL, '2026-11-19 14:54:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01676', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 3, 2870000, 8610000, 2700000, 0, 510000, 'pcs'),
  ('TRX-A01676', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 1, 33000, 33000, 27000, 0, 6000, 'pcs'),
  ('TRX-A01676', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 1, 2600000, 2600000, 2500000, 0, 100000, 'pcs'),
  ('TRX-A01676', 'PRD-A-AKS-0113', 'Tempered Glass Samsung', 2, 15000, 30000, 7000, 0, 16000, 'pcs'),
  ('TRX-A01676', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 1, 520000, 520000, 400000, 0, 120000, 'pcs'),
  ('TRX-A01676', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01923', '2026-11-19 14:49:24+07:00', 'Umum', 'Admin', 226000, 0, 226000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101922', '', '', '', 51000, NULL, '2026-11-19 14:49:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01923', 'PRD-A-AKS-0172', 'Case Samsung A03', 2, 24000, 48000, 20000, 0, 8000, 'pcs'),
  ('TRX-A01923', 'PRD-A-KEL-0123', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01923', 'PRD-A-AKS-0153', 'Memory Card 32GB', 1, 92000, 92000, 86000, 0, 6000, 'pcs'),
  ('TRX-A01923', 'PRD-A-AKS-0242', 'Handsfree Samsung', 3, 28000, 84000, 16000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00322', '2026-11-19 14:47:26+07:00', 'Umum', 'Admin', 5432000, 0, 5432000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100321', '', '', '', 904000, NULL, '2026-11-19 14:47:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00322', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 2, 790000, 1580000, 600000, 0, 380000, 'pcs'),
  ('TRX-A00322', 'PRD-A-KEL-0139', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00322', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 1, 2490000, 2490000, 2300000, 0, 190000, 'pcs'),
  ('TRX-A00322', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 2, 660000, 1320000, 500000, 0, 320000, 'pcs'),
  ('TRX-A00322', 'PRD-A-KEL-0030', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01299', '2026-11-19 14:43:13+07:00', 'Agus Wijaya 4', 'Admin', 8385000, 0, 8385000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101298', '', '', '', 763000, NULL, '2026-11-19 14:43:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01299', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 3, 1520000, 4560000, 1400000, 0, 360000, 'pcs'),
  ('TRX-A01299', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 1, 55000, 55000, 50000, 0, 5000, 'pcs'),
  ('TRX-A01299', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 1, 1590000, 1590000, 1500000, 0, 90000, 'pcs'),
  ('TRX-A01299', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01299', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 2, 1050000, 2100000, 900000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01258', '2026-11-19 14:22:59+07:00', 'Budi Santoso 4', 'Admin', 12000, 0, 12000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101257', '', '', '', 4500, NULL, '2026-11-19 14:22:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01258', 'PRD-A-KEL-0043', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00263', '2026-11-19 14:15:09+07:00', 'Rudi Hartono 4', 'Admin', 18890000, 0, 18890000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100262', '', '', '', 2958500, NULL, '2026-11-19 14:15:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00263', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 3, 1090000, 3270000, 900000, 0, 570000, 'pcs'),
  ('TRX-A00263', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 3, 550000, 1650000, 400000, 0, 450000, 'pcs'),
  ('TRX-A00263', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 3, 700000, 2100000, 500000, 0, 600000, 'pcs'),
  ('TRX-A00263', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs'),
  ('TRX-A00263', 'PRD-A-KEL-0140', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00263', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 1, 31000, 31000, 18000, 0, 13000, 'pcs'),
  ('TRX-A00263', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A00263', 'PRD-A-KEL-0052', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01156', '2026-11-19 14:14:51+07:00', 'Ayu Lestari 2', 'Admin', 102000, 0, 51000, 51000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101155', '', '', '', 24000, NULL, '2026-11-19 14:14:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01156', 'PRD-A-AKS-0148', 'Case Vivo Y20', 3, 34000, 102000, 26000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01133', '2026-11-19 14:11:34+07:00', 'Fitri Rahmawati 4', 'Admin', 3742000, 0, 3742000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101132', '', '', '', 300000, NULL, '2026-11-19 14:11:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01133', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 2, 1150000, 2300000, 1100000, 0, 100000, 'pcs'),
  ('TRX-A01133', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 2, 31000, 62000, 21000, 0, 20000, 'pcs'),
  ('TRX-A01133', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 3, 460000, 1380000, 400000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01776', '2026-11-19 13:50:08+07:00', 'Umum', 'Admin', 22834000, 0, 11417000, 11417000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101775', '', '', '', 1896500, NULL, '2026-11-19 13:50:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01776', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 3, 1510000, 4530000, 1300000, 0, 630000, 'pcs'),
  ('TRX-A01776', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs'),
  ('TRX-A01776', 'PRD-A-AKS-0168', 'Memory Card 32GB', 1, 40000, 40000, 32000, 0, 8000, 'pcs'),
  ('TRX-A01776', 'PRD-A-AKS-0052', 'Memory Card 32GB', 2, 95000, 190000, 89000, 0, 12000, 'pcs'),
  ('TRX-A01776', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A01776', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 3, 21000, 63000, 9000, 0, 36000, 'pcs'),
  ('TRX-A01776', 'PRD-A-KEL-0123', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01776', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 2, 740000, 1480000, 600000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01516', '2026-11-19 13:28:50+07:00', 'Siti Aisyah', 'Admin', 4736000, 0, 4736000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101515', '', '', '', 842500, NULL, '2026-11-19 13:28:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01516', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 1, 1520000, 1520000, 1400000, 0, 120000, 'pcs'),
  ('TRX-A01516', 'PRD-A-KEL-0089', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01516', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 3, 600000, 1800000, 400000, 0, 600000, 'pcs'),
  ('TRX-A01516', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 3, 18000, 54000, 11000, 0, 21000, 'pcs'),
  ('TRX-A01516', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01516', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 1, 1280000, 1280000, 1200000, 0, 80000, 'pcs'),
  ('TRX-A01516', 'PRD-A-KEL-0188', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01516', 'PRD-A-KEL-0015', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00115', '2026-11-19 13:22:52+07:00', 'Ayu Lestari 5', 'Admin', 14168000, 0, 14168000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100114', '', '', '', 1240000, NULL, '2026-11-19 13:22:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00115', 'PRD-A-KEL-0182', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00115', 'PRD-A-AKS-0150', 'Memory Card 16GB', 2, 55000, 110000, 41000, 0, 28000, 'pcs'),
  ('TRX-A00115', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 1, 2540000, 2540000, 2400000, 0, 140000, 'pcs'),
  ('TRX-A00115', 'PRD-A-KEL-0047', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00115', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 2, 2730000, 5460000, 2500000, 0, 460000, 'pcs'),
  ('TRX-A00115', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 3, 2000000, 6000000, 1800000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00007', '2026-11-19 13:21:49+07:00', 'Rina Marlina 3', 'Admin', 10594000, 0, 0, 10594000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100006', '', '', '', 1278000, NULL, '2026-11-19 13:21:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00007', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 1, 2950000, 2950000, 2800000, 0, 150000, 'pcs'),
  ('TRX-A00007', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs'),
  ('TRX-A00007', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 2, 600000, 1200000, 400000, 0, 400000, 'pcs'),
  ('TRX-A00007', 'PRD-A-AKS-0163', 'Kartu Perdana XL', 1, 24000, 24000, 16000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01560', '2026-11-19 13:12:08+07:00', 'Dedi Supriadi', 'Admin', 10569000, 0, 10569000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101559', '', '', '', 1951000, NULL, '2026-11-19 13:12:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01560', 'PRD-A-KEL-0114', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01560', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 2, 2010000, 4020000, 1800000, 0, 420000, 'pcs'),
  ('TRX-A01560', 'PRD-A-AKS-0076', 'Handsfree Samsung', 3, 58000, 174000, 45000, 0, 39000, 'pcs'),
  ('TRX-A01560', 'PRD-A-HP-0111', 'HP OPPO A57 4/128 32620', 1, 2120000, 2120000, 1900000, 0, 220000, 'pcs'),
  ('TRX-A01560', 'PRD-A-AKS-0239', 'Batre Samsung J1', 1, 43000, 43000, 30000, 0, 13000, 'pcs'),
  ('TRX-A01560', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 2, 940000, 1880000, 700000, 0, 480000, 'pcs'),
  ('TRX-A01560', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 2, 26000, 52000, 16000, 0, 20000, 'pcs'),
  ('TRX-A01560', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 3, 750000, 2250000, 500000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00604', '2026-11-19 13:10:33+07:00', 'Agus Wijaya 4', 'Admin', 13622000, 0, 13622000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100603', '', '', '', 1064000, NULL, '2026-11-19 13:10:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00604', 'PRD-A-KEL-0174', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00604', 'PRD-A-AKS-0197', 'Case Vivo Y20', 2, 24000, 48000, 11000, 0, 26000, 'pcs'),
  ('TRX-A00604', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 2, 1060000, 2120000, 900000, 0, 320000, 'pcs'),
  ('TRX-A00604', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 3, 1330000, 3990000, 1200000, 0, 390000, 'pcs'),
  ('TRX-A00604', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A00604', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 3, 22000, 66000, 10000, 0, 36000, 'pcs'),
  ('TRX-A00604', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 2, 2770000, 5540000, 2700000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00374', '2026-11-19 13:09:39+07:00', 'Andi Kurnia 3', 'Admin', 451000, 0, 451000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100373', '', '', '', 67000, NULL, '2026-11-19 13:09:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00374', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 3, 25000, 75000, 17000, 0, 24000, 'pcs'),
  ('TRX-A00374', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 3, 18000, 54000, 11000, 0, 21000, 'pcs'),
  ('TRX-A00374', 'PRD-A-AKS-0049', 'Memory Card 32GB', 3, 84000, 252000, 81000, 0, 9000, 'pcs'),
  ('TRX-A00374', 'PRD-A-KEL-0142', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00374', 'PRD-A-KEL-0068', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01178', '2026-11-19 13:08:32+07:00', 'Yusuf Maulana 4', 'Admin', 15354000, 0, 7677000, 7677000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101177', '', '', '', 1415000, NULL, '2026-11-19 13:08:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01178', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 27000, 0, 24000, 'pcs'),
  ('TRX-A01178', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 1, 69000, 69000, 58000, 0, 11000, 'pcs'),
  ('TRX-A01178', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 3, 2920000, 8760000, 2700000, 0, 660000, 'pcs'),
  ('TRX-A01178', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01992', '2026-11-19 13:02:57+07:00', 'Andi Kurnia', 'Admin', 6412000, 0, 0, 6412000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101991', '', '', '', 474000, NULL, '2026-11-19 13:02:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01992', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 2, 2560000, 5120000, 2500000, 0, 120000, 'pcs'),
  ('TRX-A01992', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 3, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A01992', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 3, 410000, 1230000, 300000, 0, 330000, 'pcs'),
  ('TRX-A01992', 'PRD-A-AKS-0071', 'Case Oppo A57', 2, 31000, 62000, 19000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01016', '2026-11-19 12:51:05+07:00', 'Siti Aisyah 5', 'Admin', 6895000, 0, 6895000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101015', '', '', '', 653000, NULL, '2026-11-19 12:51:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01016', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 1, 2560000, 2560000, 2500000, 0, 60000, 'pcs'),
  ('TRX-A01016', 'PRD-A-AKS-0186', 'Case Redmi 9A', 3, 25000, 75000, 14000, 0, 33000, 'pcs'),
  ('TRX-A01016', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A01016', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 3, 860000, 2580000, 700000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00109', '2026-11-19 12:43:31+07:00', 'Fitri Rahmawati 2', 'Admin', 6113500, 0, 3056750, 3056750, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100108', '', '', '', 401200, NULL, '2026-11-19 12:43:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00109', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A00109', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 21000, 0, 30000, 'pcs'),
  ('TRX-A00109', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 2, 2970000, 5940000, 2800000, 0, 340000, 'pcs'),
  ('TRX-A00109', 'PRD-A-KEL-0077', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00109', 'PRD-A-KEL-0088', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00109', 'PRD-A-KEL-0070', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00109', 'PRD-A-KEL-0048', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01399', '2026-11-19 12:43:20+07:00', 'Ayu Lestari', 'Admin', 2220000, 0, 0, 2220000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101398', '', '', '', 420000, NULL, '2026-11-19 12:43:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01399', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 3, 740000, 2220000, 600000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01852', '2026-11-19 12:34:56+07:00', 'Umum', 'Admin', 4922000, 0, 0, 4922000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101851', '', '', '', 596000, NULL, '2026-11-19 12:34:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01852', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs'),
  ('TRX-A01852', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 2, 1560000, 3120000, 1400000, 0, 320000, 'pcs'),
  ('TRX-A01852', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A01852', 'PRD-A-KEL-0098', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01505', '2026-11-19 12:22:15+07:00', 'Andi Kurnia 5', 'Admin', 2133000, 0, 2133000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101504', '', '', '', 169000, NULL, '2026-11-19 12:22:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01505', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A01505', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01505', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 1, 18000, 18000, 8000, 0, 10000, 'pcs'),
  ('TRX-A01505', 'PRD-A-KEL-0073', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01505', 'PRD-A-KEL-0120', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01505', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 1, 1910000, 1910000, 1800000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01017', '2026-11-19 12:20:59+07:00', 'Umum', 'Admin', 3070000, 0, 0, 3070000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101016', '', '', '', 162000, NULL, '2026-11-19 12:20:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01017', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01017', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 1, 2950000, 2950000, 2800000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01061', '2026-11-19 12:16:01+07:00', 'Umum', 'Admin', 202000, 0, 101000, 101000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101060', '', '', '', 24000, NULL, '2026-11-19 12:16:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01061', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 2, 54000, 108000, 47000, 0, 14000, 'pcs'),
  ('TRX-A01061', 'PRD-A-AKS-0217', 'Batre Samsung J1', 2, 47000, 94000, 42000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01283', '2026-11-19 12:03:52+07:00', 'Umum', 'Admin', 18000, 0, 9000, 9000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101282', '', '', '', 5000, NULL, '2026-11-19 12:03:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01283', 'PRD-A-KEL-0039', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01283', 'PRD-A-KEL-0041', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01654', '2026-11-19 11:55:53+07:00', 'Ayu Lestari', 'Admin', 4550000, 0, 4550000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101653', '', '', '', 615000, NULL, '2026-11-19 11:55:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01654', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 3, 1490000, 4470000, 1300000, 0, 570000, 'pcs'),
  ('TRX-A01654', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs'),
  ('TRX-A01654', 'PRD-A-KEL-0194', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00333', '2026-11-19 11:17:53+07:00', 'Dewi Lestari', 'Admin', 5080000, 0, 5080000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100332', '', '', '', 280000, NULL, '2026-11-19 11:17:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00333', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 2, 2540000, 5080000, 2400000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00212', '2026-11-19 11:11:41+07:00', 'Fitri Rahmawati 3', 'Admin', 22588000, 0, 22588000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100211', '', '', '', 1445000, NULL, '2026-11-19 11:11:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00212', 'PRD-A-AKS-0054', 'Batre Samsung J1', 2, 40000, 80000, 30000, 0, 20000, 'pcs'),
  ('TRX-A00212', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A00212', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 2, 41000, 82000, 28000, 0, 26000, 'pcs'),
  ('TRX-A00212', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A00212', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 3, 2680000, 8040000, 2500000, 0, 540000, 'pcs'),
  ('TRX-A00212', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 3, 1820000, 5460000, 1700000, 0, 360000, 'pcs'),
  ('TRX-A00212', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01693', '2026-11-19 10:46:02+07:00', 'Dewi Lestari 2', 'Admin', 3630000, 0, 3630000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101692', '', '', '', 222000, NULL, '2026-11-19 10:46:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01693', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01693', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00888', '2026-11-19 10:42:30+07:00', 'Umum', 'Admin', 8137000, 0, 8137000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100887', '', '', '', 903500, NULL, '2026-11-19 10:42:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00888', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 2, 1050000, 2100000, 900000, 0, 300000, 'pcs'),
  ('TRX-A00888', 'PRD-A-KEL-0176', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00888', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 1, 1770000, 1770000, 1700000, 0, 70000, 'pcs'),
  ('TRX-A00888', 'PRD-A-AKS-0201', 'Memory Card 32GB', 3, 38000, 114000, 27000, 0, 33000, 'pcs'),
  ('TRX-A00888', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 1, 2770000, 2770000, 2600000, 0, 170000, 'pcs'),
  ('TRX-A00888', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 2, 660000, 1320000, 500000, 0, 320000, 'pcs'),
  ('TRX-A00888', 'PRD-A-KEL-0123', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00065', '2026-11-19 10:42:25+07:00', 'Umum', 'Admin', 87000, 0, 43500, 43500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100064', '', '', '', 12000, NULL, '2026-11-19 10:42:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00065', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 3, 29000, 87000, 25000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01541', '2026-11-19 10:30:07+07:00', 'Maya Putri 3', 'Admin', 14464000, 0, 0, 14464000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101540', '', '', '', 1318000, NULL, '2026-11-19 10:30:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01541', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 2, 2330000, 4660000, 2100000, 0, 460000, 'pcs'),
  ('TRX-A01541', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A01541', 'PRD-A-KEL-0165', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01541', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 2, 2190000, 4380000, 2000000, 0, 380000, 'pcs'),
  ('TRX-A01541', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 1, 1850000, 1850000, 1600000, 0, 250000, 'pcs'),
  ('TRX-A01541', 'PRD-A-AKS-0191', 'Batre Samsung J1', 1, 54000, 54000, 39000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00383', '2026-11-19 10:19:01+07:00', 'Umum', 'Admin', 1159000, 0, 0, 1159000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100382', '', '', '', 324000, NULL, '2026-11-19 10:19:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00383', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 1, 39000, 39000, 35000, 0, 4000, 'pcs'),
  ('TRX-A00383', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 2, 560000, 1120000, 400000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00312', '2026-11-19 10:18:24+07:00', 'Rudi Hartono 5', 'Admin', 92000, 0, 46000, 46000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100311', '', '', '', 26000, NULL, '2026-11-19 10:18:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00312', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 2, 46000, 92000, 33000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00574', '2026-11-19 10:03:54+07:00', 'Joko Prasetyo 4', 'Admin', 4466000, 0, 4466000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100573', '', '', '', 457000, NULL, '2026-11-19 10:03:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00574', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs'),
  ('TRX-A00574', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs'),
  ('TRX-A00574', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 1, 830000, 830000, 600000, 0, 230000, 'pcs'),
  ('TRX-A00574', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 1, 33000, 33000, 25000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01724', '2026-11-19 09:50:39+07:00', 'Intan Permata 2', 'Admin', 11587000, 0, 5793500, 5793500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101723', '', '', '', 973000, NULL, '2026-11-19 09:50:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01724', 'PRD-A-KEL-0035', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01724', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs'),
  ('TRX-A01724', 'PRD-A-HP-0098', 'HP INFINIX 9A 3/64 25641', 2, 1550000, 3100000, 1400000, 0, 300000, 'pcs'),
  ('TRX-A01724', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 1, 2920000, 2920000, 2700000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00546', '2026-11-19 09:47:41+07:00', 'Umum', 'Admin', 1440000, 0, 1440000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100545', '', '', '', 240000, NULL, '2026-11-19 09:47:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00546', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 3, 480000, 1440000, 400000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00102', '2026-11-19 09:37:39+07:00', 'Umum', 'Admin', 10000, 0, 10000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100101', '', '', '', 4000, NULL, '2026-11-19 09:37:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00102', 'PRD-A-KEL-0129', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00927', '2026-11-19 09:16:34+07:00', 'Hendra Gunawan 2', 'Admin', 2021000, 0, 0, 2021000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100926', '', '', '', 322000, NULL, '2026-11-19 09:16:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00927', 'PRD-A-KEL-0193', 'Snack wafer', 1, 10000, 10000, 8000, 0, 2000, 'pcs'),
  ('TRX-A00927', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs'),
  ('TRX-A00927', 'PRD-A-AKS-0245', 'Batre Samsung J1', 3, 57000, 171000, 43000, 0, 42000, 'pcs'),
  ('TRX-A00927', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A00927', 'PRD-A-KEL-0116', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01265', '2026-11-19 09:15:07+07:00', 'Yusuf Maulana 5', 'Admin', 980000, 0, 980000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101264', '', '', '', 253000, NULL, '2026-11-19 09:15:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01265', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 1, 790000, 790000, 600000, 0, 190000, 'pcs'),
  ('TRX-A01265', 'PRD-A-AKS-0139', 'Case Samsung A03', 3, 34000, 102000, 21000, 0, 39000, 'pcs'),
  ('TRX-A01265', 'PRD-A-KEL-0148', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01265', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01255', '2026-11-19 09:09:47+07:00', 'Umum', 'Admin', 3260000, 0, 0, 3260000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101254', '', '', '', 260000, NULL, '2026-11-19 09:09:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01255', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 2, 1630000, 3260000, 1500000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01413', '2026-11-19 09:07:35+07:00', 'Intan Permata 3', 'Admin', 2760000, 0, 2760000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101412', '', '', '', 639000, NULL, '2026-11-19 09:07:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01413', 'PRD-A-KEL-0032', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01413', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 3, 910000, 2730000, 700000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01863', '2026-11-19 08:27:54+07:00', 'Umum', 'Admin', 7628000, 0, 3814000, 3814000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101862', '', '', '', 1065000, NULL, '2026-11-19 08:27:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01863', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 2, 1500000, 3000000, 1300000, 0, 400000, 'pcs'),
  ('TRX-A01863', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 1, 2780000, 2780000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A01863', 'PRD-A-KEL-0125', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01863', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 2, 820000, 1640000, 600000, 0, 440000, 'pcs'),
  ('TRX-A01863', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01863', 'PRD-A-KEL-0093', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01863', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 1, 61000, 61000, 46000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01025', '2026-11-19 08:27:21+07:00', 'Intan Permata 2', 'Admin', 7066000, 0, 7066000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101024', '', '', '', 247500, NULL, '2026-11-19 08:27:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01025', 'PRD-A-HP-0094', 'HP INFINIX Y20 8/256 25072', 1, 2390000, 2390000, 2300000, 0, 90000, 'pcs'),
  ('TRX-A01025', 'PRD-A-KEL-0078', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01025', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 1, 1880000, 1880000, 1800000, 0, 80000, 'pcs'),
  ('TRX-A01025', 'PRD-A-KEL-0088', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01025', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 1, 2770000, 2770000, 2700000, 0, 70000, 'pcs'),
  ('TRX-A01025', 'PRD-A-KEL-0109', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00244', '2026-11-19 08:19:20+07:00', 'Umum', 'Admin', 6000, 0, 0, 6000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100243', '', '', '', 2000, NULL, '2026-11-19 08:19:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00244', 'PRD-A-KEL-0111', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00612', '2026-11-19 08:11:54+07:00', 'Dedi Supriadi 3', 'Admin', 11905000, 0, 5952500, 5952500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100611', '', '', '', 1088000, NULL, '2026-11-19 08:11:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00612', 'PRD-A-KEL-0034', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A00612', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 1, 740000, 740000, 600000, 0, 140000, 'pcs'),
  ('TRX-A00612', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 2, 2950000, 5900000, 2800000, 0, 300000, 'pcs'),
  ('TRX-A00612', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 2, 1330000, 2660000, 1200000, 0, 260000, 'pcs'),
  ('TRX-A00612', 'PRD-A-KEL-0165', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00612', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01497', '2026-11-19 08:11:21+07:00', 'Umum', 'Admin', 205000, 0, 0, 205000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101496', '', '', '', 57500, NULL, '2026-11-19 08:11:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01497', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 1, 21000, 21000, 9000, 0, 12000, 'pcs'),
  ('TRX-A01497', 'PRD-A-KEL-0008', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01497', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01497', 'PRD-A-AKS-0188', 'Batre Oppo A57', 3, 52000, 156000, 40000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01037', '2026-11-18 20:49:10+07:00', 'Umum', 'Admin', 4351000, 0, 0, 4351000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101036', '', '', '', 513000, NULL, '2026-11-18 20:49:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01037', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 1, 1260000, 1260000, 1100000, 0, 160000, 'pcs'),
  ('TRX-A01037', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 1, 520000, 520000, 400000, 0, 120000, 'pcs'),
  ('TRX-A01037', 'PRD-A-AKS-0186', 'Case Redmi 9A', 1, 25000, 25000, 14000, 0, 11000, 'pcs'),
  ('TRX-A01037', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 1, 2510000, 2510000, 2300000, 0, 210000, 'pcs'),
  ('TRX-A01037', 'PRD-A-KEL-0145', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01344', '2026-11-18 20:45:16+07:00', 'Joko Prasetyo', 'Admin', 6584000, 0, 6584000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101343', '', '', '', 1125500, NULL, '2026-11-18 20:45:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01344', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 3, 650000, 1950000, 400000, 0, 750000, 'pcs'),
  ('TRX-A01344', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 1, 2700000, 2700000, 2600000, 0, 100000, 'pcs'),
  ('TRX-A01344', 'PRD-A-AKS-0134', 'Case Oppo A57', 2, 35000, 70000, 28000, 0, 14000, 'pcs'),
  ('TRX-A01344', 'PRD-A-KEL-0119', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01344', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 2, 930000, 1860000, 800000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01137', '2026-11-18 20:06:00+07:00', 'Umum', 'Admin', 169000, 0, 169000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101136', '', '', '', 31000, NULL, '2026-11-18 20:06:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01137', 'PRD-A-AKS-0088', 'Case Redmi 9A', 3, 43000, 129000, 34000, 0, 27000, 'pcs'),
  ('TRX-A01137', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01563', '2026-11-18 20:05:41+07:00', 'Umum', 'Admin', 13709000, 0, 13709000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101562', '', '', '', 668500, NULL, '2026-11-18 20:05:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01563', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 1, 2480000, 2480000, 2300000, 0, 180000, 'pcs'),
  ('TRX-A01563', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 1, 15000, 15000, 8000, 0, 7000, 'pcs'),
  ('TRX-A01563', 'PRD-A-KEL-0099', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01563', 'PRD-A-KEL-0068', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01563', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 3, 2610000, 7830000, 2500000, 0, 330000, 'pcs'),
  ('TRX-A01563', 'PRD-A-KEL-0019', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01563', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 2, 1670000, 3340000, 1600000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01730', '2026-11-18 20:04:44+07:00', 'Intan Permata 3', 'Admin', 21000, 0, 21000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101729', '', '', '', 12000, NULL, '2026-11-18 20:04:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01730', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 1, 21000, 21000, 9000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00967', '2026-11-18 19:54:59+07:00', 'Andi Kurnia 5', 'Admin', 6739000, 0, 0, 6739000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100966', '', '', '', 1013000, NULL, '2026-11-18 19:54:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00967', 'PRD-A-KEL-0020', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00967', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs'),
  ('TRX-A00967', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 2, 560000, 1120000, 400000, 0, 320000, 'pcs'),
  ('TRX-A00967', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A00967', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 2, 380000, 760000, 300000, 0, 160000, 'pcs'),
  ('TRX-A00967', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 2, 1350000, 2700000, 1200000, 0, 300000, 'pcs'),
  ('TRX-A00967', 'PRD-A-AKS-0046', 'Case Samsung A03', 1, 38000, 38000, 35000, 0, 3000, 'pcs'),
  ('TRX-A00967', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 1, 21000, 21000, 17000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01745', '2026-11-18 19:48:53+07:00', 'Dewi Lestari', 'Admin', 548000, 0, 548000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101744', '', '', '', 143000, NULL, '2026-11-18 19:48:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01745', 'PRD-A-HP-0175', 'HP REALME S23 4/64 80825', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A01745', 'PRD-A-KEL-0037', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A01745', 'PRD-A-AKS-0050', 'Case Redmi 9A', 3, 34000, 102000, 26000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01102', '2026-11-18 19:43:08+07:00', 'Fajar Nugroho 4', 'Admin', 8223000, 0, 8223000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101101', '', '', '', 1315000, NULL, '2026-11-18 19:43:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01102', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 3, 820000, 2460000, 600000, 0, 660000, 'pcs'),
  ('TRX-A01102', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A01102', 'PRD-A-KEL-0023', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01102', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A01102', 'PRD-A-AKS-0239', 'Batre Samsung J1', 3, 43000, 129000, 30000, 0, 39000, 'pcs'),
  ('TRX-A01102', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 3, 1520000, 4560000, 1400000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01187', '2026-11-18 19:17:42+07:00', 'Budi Santoso 2', 'Admin', 105000, 0, 105000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101186', '', '', '', 39000, NULL, '2026-11-18 19:17:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01187', 'PRD-A-AKS-0090', 'Kartu Perdana XL', 3, 35000, 105000, 22000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01534', '2026-11-18 18:59:35+07:00', 'Umum', 'Admin', 1720000, 0, 1720000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101533', '', '', '', 320000, NULL, '2026-11-18 18:59:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01534', 'PRD-A-HP-0194', 'HP REALME C15 2/16 38996', 1, 940000, 940000, 700000, 0, 240000, 'pcs'),
  ('TRX-A01534', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 1, 780000, 780000, 700000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00545', '2026-11-18 18:52:03+07:00', 'Umum', 'Admin', 2336000, 0, 2336000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100544', '', '', '', 111000, NULL, '2026-11-18 18:52:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00545', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 1, 2300000, 2300000, 2200000, 0, 100000, 'pcs'),
  ('TRX-A00545', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 1, 36000, 36000, 25000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00026', '2026-11-18 18:31:54+07:00', 'Umum', 'Admin', 6773000, 0, 3386500, 3386500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100025', '', '', '', 281500, NULL, '2026-11-18 18:31:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00026', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 1, 9000, 9000, 6000, 0, 3000, 'pcs'),
  ('TRX-A00026', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00026', 'PRD-A-KEL-0128', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00026', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A00026', 'PRD-A-AKS-0222', 'Case Redmi 9A', 2, 46000, 92000, 35000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00636', '2026-11-18 18:25:53+07:00', 'Dewi Lestari 4', 'Admin', 9287000, 0, 4643500, 4643500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100635', '', '', '', 1137000, NULL, '2026-11-18 18:25:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00636', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 2, 2770000, 5540000, 2600000, 0, 340000, 'pcs'),
  ('TRX-A00636', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 2, 33000, 66000, 28000, 0, 10000, 'pcs'),
  ('TRX-A00636', 'PRD-A-AKS-0217', 'Batre Samsung J1', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A00636', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 1, 1800000, 1800000, 1600000, 0, 200000, 'pcs'),
  ('TRX-A00636', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 3, 590000, 1770000, 400000, 0, 570000, 'pcs'),
  ('TRX-A00636', 'PRD-A-KEL-0172', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00636', 'PRD-A-KEL-0024', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01489', '2026-11-18 18:18:28+07:00', 'Dedi Supriadi 2', 'Admin', 23730000, 0, 23730000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101488', '', '', '', 1797000, NULL, '2026-11-18 18:18:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01489', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs'),
  ('TRX-A01489', 'PRD-A-KEL-0031', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01489', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A01489', 'PRD-A-AKS-0171', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A01489', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A01489', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 3, 1290000, 3870000, 1200000, 0, 270000, 'pcs'),
  ('TRX-A01489', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 3, 2500000, 7500000, 2300000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01147', '2026-11-18 18:16:44+07:00', 'Umum', 'Admin', 12118000, 0, 12118000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101146', '', '', '', 754000, NULL, '2026-11-18 18:16:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01147', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01147', 'PRD-A-AKS-0055', 'Memory Card 16GB', 1, 66000, 66000, 56000, 0, 10000, 'pcs'),
  ('TRX-A01147', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A01147', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 3, 2960000, 8880000, 2800000, 0, 480000, 'pcs'),
  ('TRX-A01147', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 1, 1570000, 1570000, 1500000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;
