-- ============================================================================
-- TEST BERAT TOKORAFI — Dataset A (1.000 produk + 2.000 transaksi)
-- File: A-03-transaksi-07.sql  (bagian 7 dari 7 langkah ini — jalankan berurutan)
-- Isi: transaksi: 65, transaksi_detail: 288
-- Transaksi 28 hari terakhir + detail (induk & detail satu unit).
-- Semua INSERT memakai ON CONFLICT DO NOTHING — aman dijalankan 2x dan
-- tidak bentrok dengan seed bawaan tokorafi (TES Kopi, TRX-8250237222,
-- CBG-UTAMA, PLG-UMUM). Dibuat oleh gen-tokorafi.js (deterministik).
-- ============================================================================

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00893', '2026-10-31 17:37:25+07:00', 'Ayu Lestari 3', 'Admin', 21610000, 0, 21610000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100892', '', '', '', 1975500, NULL, '2026-10-31 17:37:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00893', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 3, 1750000, 5250000, 1500000, 0, 750000, 'pcs'),
  ('TRX-A00893', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A00893', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A00893', 'PRD-A-KEL-0008', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00893', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 2, 2870000, 5740000, 2700000, 0, 340000, 'pcs'),
  ('TRX-A00893', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01663', '2026-10-31 17:32:10+07:00', 'Budi Santoso 4', 'Admin', 9150000, 0, 9150000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101662', '', '', '', 845000, NULL, '2026-10-31 17:32:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01663', 'PRD-A-AKS-0064', 'Case Redmi 9A', 3, 38000, 114000, 25000, 0, 39000, 'pcs'),
  ('TRX-A01663', 'PRD-A-HP-0030', 'HP NOKIA 9A 4/128 49838', 1, 700000, 700000, 500000, 0, 200000, 'pcs'),
  ('TRX-A01663', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 2, 1320000, 2640000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A01663', 'PRD-A-HP-0508', 'HP REDMI 9C 4/128 88002', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A01663', 'PRD-A-AKS-0102', 'Case Vivo Y20', 1, 36000, 36000, 30000, 0, 6000, 'pcs'),
  ('TRX-A01663', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 1, 1520000, 1520000, 1300000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00586', '2026-10-31 17:28:04+07:00', 'Maya Putri 5', 'Admin', 9253000, 0, 9253000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100585', '', '', '', 694000, NULL, '2026-10-31 17:28:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00586', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 1, 65000, 65000, 53000, 0, 12000, 'pcs'),
  ('TRX-A00586', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00586', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 3, 2000000, 6000000, 1900000, 0, 300000, 'pcs'),
  ('TRX-A00586', 'PRD-A-KEL-0184', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00586', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01223', '2026-10-31 17:10:41+07:00', 'Andi Kurnia 2', 'Admin', 141000, 0, 141000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101222', '', '', '', 19000, NULL, '2026-10-31 17:10:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01223', 'PRD-A-KEL-0102', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01223', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01223', 'PRD-A-AKS-0023', 'Memory Card 32GB', 1, 53000, 53000, 45000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00714', '2026-10-31 16:42:47+07:00', 'Eko Saputra 3', 'Admin', 7010000, 0, 7010000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100713', '', '', '', 759000, NULL, '2026-10-31 16:42:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00714', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 2, 830000, 1660000, 600000, 0, 460000, 'pcs'),
  ('TRX-A00714', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 3, 1680000, 5040000, 1600000, 0, 240000, 'pcs'),
  ('TRX-A00714', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 1, 28000, 28000, 24000, 0, 4000, 'pcs'),
  ('TRX-A00714', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 3, 18000, 54000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00714', 'PRD-A-AKS-0236', 'Memory Card 64GB', 3, 72000, 216000, 63000, 0, 27000, 'pcs'),
  ('TRX-A00714', 'PRD-A-KEL-0177', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01244', '2026-10-31 16:37:39+07:00', 'Umum', 'Admin', 1420000, 0, 1420000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101243', '', '', '', 318000, NULL, '2026-10-31 16:37:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01244', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A01244', 'PRD-A-AKS-0001', 'Case Oppo A57', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A01244', 'PRD-A-AKS-0214', 'Memory Card 64GB', 3, 100000, 300000, 86000, 0, 42000, 'pcs'),
  ('TRX-A01244', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01849', '2026-10-31 16:32:56+07:00', 'Umum', 'Admin', 118000, 0, 59000, 59000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101848', '', '', '', 40000, NULL, '2026-10-31 16:32:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01849', 'PRD-A-AKS-0115', 'Tempered Glass Samsung', 2, 20000, 40000, 9000, 0, 22000, 'pcs'),
  ('TRX-A01849', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 2, 39000, 78000, 30000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00072', '2026-10-31 16:30:16+07:00', 'Umum', 'Admin', 7620000, 0, 0, 7620000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100071', '', '', '', 720000, NULL, '2026-10-31 16:30:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00072', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 3, 2540000, 7620000, 2300000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00825', '2026-10-31 16:16:01+07:00', 'Umum', 'Admin', 2822000, 0, 2822000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100824', '', '', '', 352000, NULL, '2026-10-31 16:16:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00825', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 2, 1370000, 2740000, 1200000, 0, 340000, 'pcs'),
  ('TRX-A00825', 'PRD-A-KEL-0120', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00825', 'PRD-A-AKS-0236', 'Memory Card 64GB', 1, 72000, 72000, 63000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01963', '2026-10-31 16:11:42+07:00', 'Lilis Suryani 5', 'Admin', 2070000, 0, 2070000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101962', '', '', '', 570000, NULL, '2026-10-31 16:11:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01963', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 3, 690000, 2070000, 500000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00509', '2026-10-31 15:58:38+07:00', 'Joko Prasetyo 5', 'Admin', 22493000, 0, 22493000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100508', '', '', '', 1406000, NULL, '2026-10-31 15:58:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00509', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 1, 3030000, 3030000, 2800000, 0, 230000, 'pcs'),
  ('TRX-A00509', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00509', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 2, 2100000, 4200000, 1900000, 0, 400000, 'pcs'),
  ('TRX-A00509', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 1, 1910000, 1910000, 1800000, 0, 110000, 'pcs'),
  ('TRX-A00509', 'PRD-A-AKS-0074', 'Handsfree Oppo', 1, 49000, 49000, 39000, 0, 10000, 'pcs'),
  ('TRX-A00509', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 2, 2590000, 5180000, 2400000, 0, 380000, 'pcs'),
  ('TRX-A00509', 'PRD-A-HP-0334', 'HP SAMSUNG Y16 3/64 17970', 3, 2690000, 8070000, 2600000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01065', '2026-10-31 15:47:48+07:00', 'Intan Permata 3', 'Admin', 12440000, 0, 12440000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101064', '', '', '', 1683000, NULL, '2026-10-31 15:47:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01065', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01065', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 3, 1700000, 5100000, 1600000, 0, 300000, 'pcs'),
  ('TRX-A01065', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A01065', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 1, 2070000, 2070000, 2000000, 0, 70000, 'pcs'),
  ('TRX-A01065', 'PRD-A-KEL-0132', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01065', 'PRD-A-HP-0075', 'HP VIVO Y53 2/16 24312', 1, 520000, 520000, 300000, 0, 220000, 'pcs'),
  ('TRX-A01065', 'PRD-A-KEL-0104', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01065', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 3, 600000, 1800000, 400000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01020', '2026-10-31 15:29:52+07:00', 'Joko Prasetyo 3', 'Admin', 16294000, 0, 16294000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101019', '', '', '', 1014000, NULL, '2026-10-31 15:29:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01020', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01020', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A01020', 'PRD-A-AKS-0153', 'Memory Card 32GB', 2, 92000, 184000, 86000, 0, 12000, 'pcs'),
  ('TRX-A01020', 'PRD-A-HP-0334', 'HP SAMSUNG Y16 3/64 17970', 3, 2690000, 8070000, 2600000, 0, 270000, 'pcs'),
  ('TRX-A01020', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01465', '2026-10-31 15:21:35+07:00', 'Eko Saputra 4', 'Admin', 5318000, 0, 5318000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101464', '', '', '', 371000, NULL, '2026-10-31 15:21:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01465', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 2, 1570000, 3140000, 1500000, 0, 140000, 'pcs'),
  ('TRX-A01465', 'PRD-A-AKS-0088', 'Case Redmi 9A', 1, 43000, 43000, 34000, 0, 9000, 'pcs'),
  ('TRX-A01465', 'PRD-A-HP-0449', 'HP REALME HOT30i 2/32 56128', 1, 570000, 570000, 500000, 0, 70000, 'pcs'),
  ('TRX-A01465', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 1, 25000, 25000, 13000, 0, 12000, 'pcs'),
  ('TRX-A01465', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 1, 1540000, 1540000, 1400000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00227', '2026-10-31 15:20:46+07:00', 'Maya Putri 2', 'Admin', 19565000, 0, 19565000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100226', '', '', '', 1722500, NULL, '2026-10-31 15:20:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00227', 'PRD-A-KEL-0122', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00227', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 3, 2220000, 6660000, 2000000, 0, 660000, 'pcs'),
  ('TRX-A00227', 'PRD-A-KEL-0136', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00227', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 3, 2610000, 7830000, 2400000, 0, 630000, 'pcs'),
  ('TRX-A00227', 'PRD-A-KEL-0139', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00227', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 2, 2510000, 5020000, 2300000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01184', '2026-10-31 15:04:35+07:00', 'Andi Kurnia 5', 'Admin', 82000, 0, 82000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101183', '', '', '', 24000, NULL, '2026-10-31 15:04:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01184', 'PRD-A-KEL-0111', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01184', 'PRD-A-AKS-0021', 'Handsfree Samsung', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A01184', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00995', '2026-10-31 15:01:32+07:00', 'Dedi Supriadi 3', 'Admin', 6170000, 0, 0, 6170000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100994', '', '', '', 854500, NULL, '2026-10-31 15:01:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00995', 'PRD-A-KEL-0018', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00995', 'PRD-A-HP-0017', 'HP SAMSUNG Y91C 2/32 91420', 2, 760000, 1520000, 700000, 0, 120000, 'pcs'),
  ('TRX-A00995', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 3, 1540000, 4620000, 1300000, 0, 720000, 'pcs'),
  ('TRX-A00995', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 1, 18000, 18000, 8000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01504', '2026-10-31 14:57:06+07:00', 'Umum', 'Admin', 5324000, 0, 0, 5324000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101503', '', '', '', 322000, NULL, '2026-10-31 14:57:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01504', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01504', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 3, 1680000, 5040000, 1600000, 0, 240000, 'pcs'),
  ('TRX-A01504', 'PRD-A-AKS-0178', 'Case Vivo Y20', 3, 36000, 108000, 24000, 0, 36000, 'pcs'),
  ('TRX-A01504', 'PRD-A-AKS-0216', 'Memory Card 16GB', 3, 41000, 123000, 33000, 0, 24000, 'pcs'),
  ('TRX-A01504', 'PRD-A-KEL-0094', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00404', '2026-10-31 14:53:27+07:00', 'Fajar Nugroho 5', 'Admin', 60000, 0, 60000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100403', '', '', '', 9000, NULL, '2026-10-31 14:53:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00404', 'PRD-A-KEL-0085', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01910', '2026-10-31 14:40:38+07:00', 'Umum', 'Admin', 19915000, 0, 9957500, 9957500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101909', '', '', '', 1369000, NULL, '2026-10-31 14:40:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01910', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 2, 2560000, 5120000, 2500000, 0, 120000, 'pcs'),
  ('TRX-A01910', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 3, 2560000, 7680000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A01910', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 3, 2350000, 7050000, 2100000, 0, 750000, 'pcs'),
  ('TRX-A01910', 'PRD-A-KEL-0136', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01910', 'PRD-A-KEL-0130', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01910', 'PRD-A-AKS-0235', 'Handsfree Xiaomi', 1, 32000, 32000, 22000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01351', '2026-10-31 14:39:59+07:00', 'Umum', 'Admin', 10147000, 0, 10147000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101350', '', '', '', 805000, NULL, '2026-10-31 14:39:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01351', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 1, 1370000, 1370000, 1200000, 0, 170000, 'pcs'),
  ('TRX-A01351', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 3, 2910000, 8730000, 2700000, 0, 630000, 'pcs'),
  ('TRX-A01351', 'PRD-A-AKS-0217', 'Batre Samsung J1', 1, 47000, 47000, 42000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00663', '2026-10-31 14:36:53+07:00', 'Ayu Lestari 3', 'Admin', 4238000, 0, 0, 4238000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100662', '', '', '', 813000, NULL, '2026-10-31 14:36:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00663', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 3, 690000, 2070000, 500000, 0, 570000, 'pcs'),
  ('TRX-A00663', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 1, 1200000, 1200000, 1100000, 0, 100000, 'pcs'),
  ('TRX-A00663', 'PRD-A-AKS-0224', 'Case Samsung A03', 3, 48000, 144000, 35000, 0, 39000, 'pcs'),
  ('TRX-A00663', 'PRD-A-AKS-0001', 'Case Oppo A57', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00663', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 1, 780000, 780000, 700000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00421', '2026-10-31 14:31:35+07:00', 'Eko Saputra', 'Admin', 4880000, 0, 4880000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100420', '', '', '', 280000, NULL, '2026-10-31 14:31:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00421', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A00421', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00163', '2026-10-31 14:21:40+07:00', 'Joko Prasetyo', 'Admin', 4366000, 0, 4366000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100162', '', '', '', 418000, NULL, '2026-10-31 14:21:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00163', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A00163', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 1, 1700000, 1700000, 1500000, 0, 200000, 'pcs'),
  ('TRX-A00163', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 1, 2600000, 2600000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A00163', 'PRD-A-KEL-0132', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00779', '2026-10-31 14:21:00+07:00', 'Rina Marlina 5', 'Admin', 11955000, 0, 11955000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100778', '', '', '', 825000, NULL, '2026-10-31 14:21:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00779', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 3, 15000, 45000, 10000, 0, 15000, 'pcs'),
  ('TRX-A00779', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 3, 2320000, 6960000, 2200000, 0, 360000, 'pcs'),
  ('TRX-A00779', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 3, 1650000, 4950000, 1500000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01884', '2026-10-31 14:04:14+07:00', 'Andi Kurnia', 'Admin', 1861000, 0, 1861000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101883', '', '', '', 768000, NULL, '2026-10-31 14:04:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01884', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 1, 650000, 650000, 400000, 0, 250000, 'pcs'),
  ('TRX-A01884', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01884', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 3, 25000, 75000, 16000, 0, 27000, 'pcs'),
  ('TRX-A01884', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs'),
  ('TRX-A01884', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 2, 520000, 1040000, 300000, 0, 440000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01458', '2026-10-31 14:00:35+07:00', 'Umum', 'Admin', 4954000, 0, 4954000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101457', '', '', '', 638000, NULL, '2026-10-31 14:00:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01458', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A01458', 'PRD-A-KEL-0193', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A01458', 'PRD-A-KEL-0196', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01458', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 1, 34000, 34000, 20000, 0, 14000, 'pcs'),
  ('TRX-A01458', 'PRD-A-KEL-0021', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01458', 'PRD-A-HP-0477', 'HP INFINIX C15 3/32 90452', 1, 650000, 650000, 400000, 0, 250000, 'pcs'),
  ('TRX-A01458', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 1, 2500000, 2500000, 2300000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01893', '2026-10-31 13:23:47+07:00', 'Umum', 'Admin', 69000, 0, 34500, 34500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101892', '', '', '', 36000, NULL, '2026-10-31 13:23:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01893', 'PRD-A-AKS-0098', 'Tempered Glass Oppo', 3, 23000, 69000, 11000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00444', '2026-10-31 13:14:32+07:00', 'Umum', 'Admin', 2398000, 0, 2398000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100443', '', '', '', 245000, NULL, '2026-10-31 13:14:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00444', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 3, 780000, 2340000, 700000, 0, 240000, 'pcs'),
  ('TRX-A00444', 'PRD-A-AKS-0045', 'Memory Card 16GB', 1, 58000, 58000, 53000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00010', '2026-10-31 13:13:14+07:00', 'Budi Santoso 5', 'Admin', 6131000, 0, 6131000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100009', '', '', '', 854000, NULL, '2026-10-31 13:13:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00010', 'PRD-A-AKS-0053', 'Memory Card 16GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs'),
  ('TRX-A00010', 'PRD-A-AKS-0052', 'Memory Card 32GB', 3, 95000, 285000, 89000, 0, 18000, 'pcs'),
  ('TRX-A00010', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00010', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 2, 33000, 66000, 22000, 0, 22000, 'pcs'),
  ('TRX-A00010', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 2, 940000, 1880000, 700000, 0, 480000, 'pcs'),
  ('TRX-A00010', 'PRD-A-AKS-0067', 'Case Redmi 9A', 1, 39000, 39000, 30000, 0, 9000, 'pcs'),
  ('TRX-A00010', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 2, 1850000, 3700000, 1700000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00293', '2026-10-31 13:11:23+07:00', 'Umum', 'Admin', 6577000, 0, 6577000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100292', '', '', '', 435000, NULL, '2026-10-31 13:11:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00293', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 1, 2810000, 2810000, 2700000, 0, 110000, 'pcs'),
  ('TRX-A00293', 'PRD-A-AKS-0149', 'Case Samsung A03', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00293', 'PRD-A-KEL-0053', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00293', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs'),
  ('TRX-A00293', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00293', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01829', '2026-10-31 12:58:06+07:00', 'Umum', 'Admin', 7892000, 0, 3946000, 3946000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101828', '', '', '', 1293000, NULL, '2026-10-31 12:58:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01829', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 1, 1680000, 1680000, 1500000, 0, 180000, 'pcs'),
  ('TRX-A01829', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01829', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 2, 1040000, 2080000, 800000, 0, 480000, 'pcs'),
  ('TRX-A01829', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A01829', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 3, 1050000, 3150000, 900000, 0, 450000, 'pcs'),
  ('TRX-A01829', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 3, 14000, 42000, 9000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01188', '2026-10-31 12:44:42+07:00', 'Umum', 'Admin', 7068000, 0, 7068000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101187', '', '', '', 306000, NULL, '2026-10-31 12:44:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01188', 'PRD-A-AKS-0049', 'Memory Card 32GB', 2, 84000, 168000, 81000, 0, 6000, 'pcs'),
  ('TRX-A01188', 'PRD-A-HP-0491', 'HP REDMI V7 2/32 86419', 3, 2300000, 6900000, 2200000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00427', '2026-10-31 12:36:27+07:00', 'Budi Santoso 3', 'Admin', 21503000, 0, 21503000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100426', '', '', '', 1101500, NULL, '2026-10-31 12:36:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00427', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 2, 2960000, 5920000, 2800000, 0, 320000, 'pcs'),
  ('TRX-A00427', 'PRD-A-KEL-0091', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00427', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A00427', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 3, 2500000, 7500000, 2400000, 0, 300000, 'pcs'),
  ('TRX-A00427', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01704', '2026-10-31 12:34:41+07:00', 'Ayu Lestari 4', 'Admin', 7900000, 0, 7900000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101703', '', '', '', 770000, NULL, '2026-10-31 12:34:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01704', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A01704', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 1, 2350000, 2350000, 2100000, 0, 250000, 'pcs'),
  ('TRX-A01704', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 2, 1900000, 3800000, 1700000, 0, 400000, 'pcs'),
  ('TRX-A01704', 'PRD-A-KEL-0094', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00527', '2026-10-31 12:33:13+07:00', 'Rina Marlina 2', 'Admin', 6964000, 0, 6964000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100526', '', '', '', 601000, NULL, '2026-10-31 12:33:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00527', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A00527', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 3, 380000, 1140000, 300000, 0, 240000, 'pcs'),
  ('TRX-A00527', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 3, 25000, 75000, 17000, 0, 24000, 'pcs'),
  ('TRX-A00527', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00527', 'PRD-A-KEL-0141', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00527', 'PRD-A-KEL-0142', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00747', '2026-10-31 12:08:17+07:00', 'Ayu Lestari', 'Admin', 1708000, 0, 854000, 854000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100746', '', '', '', 502000, NULL, '2026-10-31 12:08:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00747', 'PRD-A-KEL-0131', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00747', 'PRD-A-HP-0292', 'HP VIVO C3 4/64 55632', 2, 850000, 1700000, 600000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00321', '2026-10-31 12:02:12+07:00', 'Siti Aisyah 4', 'Admin', 8809000, 0, 8809000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100320', '', '', '', 764000, NULL, '2026-10-31 12:02:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00321', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 2, 2300000, 4600000, 2200000, 0, 200000, 'pcs'),
  ('TRX-A00321', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 3, 38000, 114000, 33000, 0, 15000, 'pcs'),
  ('TRX-A00321', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 3, 1270000, 3810000, 1100000, 0, 510000, 'pcs'),
  ('TRX-A00321', 'PRD-A-AKS-0084', 'Memory Card 64GB', 3, 95000, 285000, 82000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00517', '2026-10-31 11:32:43+07:00', 'Budi Santoso', 'Admin', 4472000, 0, 4472000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100516', '', '', '', 407000, NULL, '2026-10-31 11:32:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00517', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs'),
  ('TRX-A00517', 'PRD-A-AKS-0150', 'Memory Card 16GB', 2, 55000, 110000, 41000, 0, 28000, 'pcs'),
  ('TRX-A00517', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00517', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 3, 41000, 123000, 34000, 0, 21000, 'pcs'),
  ('TRX-A00517', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 1, 1610000, 1610000, 1400000, 0, 210000, 'pcs'),
  ('TRX-A00517', 'PRD-A-KEL-0058', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00517', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 2, 65000, 130000, 53000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00547', '2026-10-31 11:17:36+07:00', 'Rudi Hartono 3', 'Admin', 16416000, 0, 0, 16416000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100546', '', '', '', 2124000, NULL, '2026-10-31 11:17:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00547', 'PRD-A-AKS-0201', 'Memory Card 32GB', 2, 38000, 76000, 27000, 0, 22000, 'pcs'),
  ('TRX-A00547', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 3, 700000, 2100000, 500000, 0, 600000, 'pcs'),
  ('TRX-A00547', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 2, 1880000, 3760000, 1800000, 0, 160000, 'pcs'),
  ('TRX-A00547', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 3, 540000, 1620000, 300000, 0, 720000, 'pcs'),
  ('TRX-A00547', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs'),
  ('TRX-A00547', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs'),
  ('TRX-A00547', 'PRD-A-AKS-0128', 'Batre Vivo Y91', 2, 41000, 82000, 36000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01751', '2026-10-31 10:54:41+07:00', 'Dedi Supriadi', 'Admin', 40000, 0, 20000, 20000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101750', '', '', '', 12000, NULL, '2026-10-31 10:54:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01751', 'PRD-A-KEL-0131', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01751', 'PRD-A-KEL-0057', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01954', '2026-10-31 10:53:11+07:00', 'Umum', 'Admin', 6910000, 0, 6910000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101953', '', '', '', 910000, NULL, '2026-10-31 10:53:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01954', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 2, 740000, 1480000, 600000, 0, 280000, 'pcs'),
  ('TRX-A01954', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00059', '2026-10-31 10:46:49+07:00', 'Budi Santoso 4', 'Admin', 4336000, 0, 2168000, 2168000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100058', '', '', '', 481000, NULL, '2026-10-31 10:46:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00059', 'PRD-A-KEL-0194', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00059', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 1, 1610000, 1610000, 1400000, 0, 210000, 'pcs'),
  ('TRX-A00059', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 3, 18000, 54000, 11000, 0, 21000, 'pcs'),
  ('TRX-A00059', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A00059', 'PRD-A-KEL-0074', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01460', '2026-10-31 10:29:19+07:00', 'Umum', 'Admin', 6220000, 0, 6220000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101459', '', '', '', 548000, NULL, '2026-10-31 10:29:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01460', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A01460', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01460', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 2, 1630000, 3260000, 1500000, 0, 260000, 'pcs'),
  ('TRX-A01460', 'PRD-A-AKS-0214', 'Memory Card 64GB', 1, 100000, 100000, 86000, 0, 14000, 'pcs'),
  ('TRX-A01460', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01460', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 2, 56000, 112000, 45000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01665', '2026-10-31 10:28:59+07:00', 'Maya Putri 2', 'Admin', 5280500, 0, 5280500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101664', '', '', '', 316700, NULL, '2026-10-31 10:28:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01665', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 1, 9000, 9000, 6000, 0, 3000, 'pcs'),
  ('TRX-A01665', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 2, 2540000, 5080000, 2400000, 0, 280000, 'pcs'),
  ('TRX-A01665', 'PRD-A-KEL-0054', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01665', 'PRD-A-KEL-0072', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01665', 'PRD-A-KEL-0005', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A01665', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 3, 38000, 114000, 33000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01078', '2026-10-31 10:11:00+07:00', 'Umum', 'Admin', 340000, 0, 340000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101077', '', '', '', 163000, NULL, '2026-10-31 10:11:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01078', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 3, 27000, 81000, 13000, 0, 42000, 'pcs'),
  ('TRX-A01078', 'PRD-A-KEL-0075', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01078', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 1, 38000, 38000, 23000, 0, 15000, 'pcs'),
  ('TRX-A01078', 'PRD-A-KEL-0193', 'Snack wafer', 2, 10000, 20000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01078', 'PRD-A-AKS-0167', 'Tempered Glass Oppo', 3, 32000, 96000, 18000, 0, 42000, 'pcs'),
  ('TRX-A01078', 'PRD-A-KEL-0097', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01476', '2026-10-31 09:55:51+07:00', 'Umum', 'Admin', 3687000, 0, 1843500, 1843500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101475', '', '', '', 264000, NULL, '2026-10-31 09:55:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01476', 'PRD-A-KEL-0172', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01476', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 2, 75000, 150000, 50000, 0, 50000, 'pcs'),
  ('TRX-A01476', 'PRD-A-KEL-0007', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01476', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 2, 21000, 42000, 9000, 0, 24000, 'pcs'),
  ('TRX-A01476', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 3, 47000, 141000, 42000, 0, 15000, 'pcs'),
  ('TRX-A01476', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 2, 1570000, 3140000, 1500000, 0, 140000, 'pcs'),
  ('TRX-A01476', 'PRD-A-KEL-0073', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00521', '2026-10-31 09:55:24+07:00', 'Lilis Suryani 4', 'Admin', 2510000, 0, 1255000, 1255000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100520', '', '', '', 210000, NULL, '2026-10-31 09:55:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00521', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 1, 2510000, 2510000, 2300000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00386', '2026-10-31 09:46:15+07:00', 'Dedi Supriadi 2', 'Admin', 8426000, 0, 4213000, 4213000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100385', '', '', '', 693000, NULL, '2026-10-31 09:46:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00386', 'PRD-A-HP-0229', 'HP REDMI Y55S 3/32 33051', 3, 1520000, 4560000, 1400000, 0, 360000, 'pcs'),
  ('TRX-A00386', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 1, 2560000, 2560000, 2500000, 0, 60000, 'pcs'),
  ('TRX-A00386', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00386', 'PRD-A-AKS-0195', 'Memory Card 16GB', 1, 70000, 70000, 65000, 0, 5000, 'pcs'),
  ('TRX-A00386', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 1, 1150000, 1150000, 900000, 0, 250000, 'pcs'),
  ('TRX-A00386', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 2, 23000, 46000, 16000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00506', '2026-10-31 09:31:11+07:00', 'Umum', 'Admin', 210000, 0, 210000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100505', '', '', '', 45000, NULL, '2026-10-31 09:31:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00506', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs'),
  ('TRX-A00506', 'PRD-A-KEL-0176', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00506', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 2, 65000, 130000, 53000, 0, 24000, 'pcs'),
  ('TRX-A00506', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 1, 18000, 18000, 8000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00375', '2026-10-31 09:27:39+07:00', 'Sri Wahyuni', 'Admin', 6854000, 0, 6854000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100374', '', '', '', 1135000, NULL, '2026-10-31 09:27:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00375', 'PRD-A-HP-0510', 'HP SAMSUNG Y91C 2/32 52223', 2, 350000, 700000, 300000, 0, 100000, 'pcs'),
  ('TRX-A00375', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 2, 1050000, 2100000, 800000, 0, 500000, 'pcs'),
  ('TRX-A00375', 'PRD-A-AKS-0197', 'Case Vivo Y20', 1, 24000, 24000, 11000, 0, 13000, 'pcs'),
  ('TRX-A00375', 'PRD-A-KEL-0193', 'Snack wafer', 1, 10000, 10000, 8000, 0, 2000, 'pcs'),
  ('TRX-A00375', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A00375', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 1, 2100000, 2100000, 1900000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00740', '2026-10-31 09:24:02+07:00', 'Umum', 'Admin', 11591000, 0, 11591000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100739', '', '', '', 1961000, NULL, '2026-10-31 09:24:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00740', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 3, 520000, 1560000, 300000, 0, 660000, 'pcs'),
  ('TRX-A00740', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00740', 'PRD-A-KEL-0026', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00740', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A00740', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01171', '2026-10-31 09:21:33+07:00', 'Fajar Nugroho 5', 'Admin', 8430000, 0, 8430000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101170', '', '', '', 330000, NULL, '2026-10-31 09:21:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01171', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 3, 2810000, 8430000, 2700000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01930', '2026-10-31 09:18:01+07:00', 'Umum', 'Admin', 12570000, 0, 0, 12570000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101929', '', '', '', 904000, NULL, '2026-10-31 09:18:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01930', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 2, 74000, 148000, 59000, 0, 30000, 'pcs'),
  ('TRX-A01930', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A01930', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 1, 1290000, 1290000, 1200000, 0, 90000, 'pcs'),
  ('TRX-A01930', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A01930', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A01930', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 1, 2290000, 2290000, 2100000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00706', '2026-10-31 09:14:35+07:00', 'Eko Saputra 4', 'Admin', 132000, 0, 66000, 66000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100705', '', '', '', 20000, NULL, '2026-10-31 09:14:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00706', 'PRD-A-AKS-0055', 'Memory Card 16GB', 2, 66000, 132000, 56000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01455', '2026-10-31 09:06:52+07:00', 'Umum', 'Admin', 6526000, 0, 6526000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101454', '', '', '', 706500, NULL, '2026-10-31 09:06:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01455', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01455', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 1, 2230000, 2230000, 2000000, 0, 230000, 'pcs'),
  ('TRX-A01455', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 2, 2010000, 4020000, 1800000, 0, 420000, 'pcs'),
  ('TRX-A01455', 'PRD-A-KEL-0040', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01455', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 3, 52000, 156000, 46000, 0, 18000, 'pcs'),
  ('TRX-A01455', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 2, 27000, 54000, 13000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00540', '2026-10-31 08:59:01+07:00', 'Budi Santoso 5', 'Admin', 17115000, 0, 17115000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100539', '', '', '', 1495000, NULL, '2026-10-31 08:59:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00540', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 2, 2290000, 4580000, 2200000, 0, 180000, 'pcs'),
  ('TRX-A00540', 'PRD-A-HP-0194', 'HP REALME C15 2/16 38996', 2, 940000, 1880000, 700000, 0, 480000, 'pcs'),
  ('TRX-A00540', 'PRD-A-KEL-0166', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00540', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 3, 3030000, 9090000, 2800000, 0, 690000, 'pcs'),
  ('TRX-A00540', 'PRD-A-KEL-0125', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00540', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 1, 1540000, 1540000, 1400000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01722', '2026-10-31 08:58:54+07:00', 'Umum', 'Admin', 5866000, 0, 5866000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101721', '', '', '', 638500, NULL, '2026-10-31 08:58:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01722', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A01722', 'PRD-A-KEL-0154', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01722', 'PRD-A-KEL-0190', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01722', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 1, 51000, 51000, 47000, 0, 4000, 'pcs'),
  ('TRX-A01722', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 3, 1900000, 5700000, 1700000, 0, 600000, 'pcs'),
  ('TRX-A01722', 'PRD-A-AKS-0105', 'Case Samsung A03', 1, 36000, 36000, 21000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00998', '2026-10-31 08:43:38+07:00', 'Agus Wijaya', 'Admin', 12790000, 0, 12790000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100997', '', '', '', 877000, NULL, '2026-10-31 08:43:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00998', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 1, 2590000, 2590000, 2500000, 0, 90000, 'pcs'),
  ('TRX-A00998', 'PRD-A-KEL-0108', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A00998', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A00998', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 3, 25000, 75000, 16000, 0, 27000, 'pcs'),
  ('TRX-A00998', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 2, 1570000, 3140000, 1500000, 0, 140000, 'pcs'),
  ('TRX-A00998', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 3, 1290000, 3870000, 1200000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01846', '2026-10-31 08:24:49+07:00', 'Ayu Lestari', 'Admin', 6913000, 0, 3456500, 3456500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101845', '', '', '', 583000, NULL, '2026-10-31 08:24:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01846', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A01846', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 2, 20000, 40000, 14000, 0, 12000, 'pcs'),
  ('TRX-A01846', 'PRD-A-KEL-0139', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00249', '2026-10-31 08:17:06+07:00', 'Fajar Nugroho 5', 'Admin', 12230000, 0, 12230000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100248', '', '', '', 958000, NULL, '2026-10-31 08:17:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00249', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs'),
  ('TRX-A00249', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 3, 1210000, 3630000, 1100000, 0, 330000, 'pcs'),
  ('TRX-A00249', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00622', '2026-10-31 08:14:27+07:00', 'Maya Putri 2', 'Admin', 9459000, 0, 4729500, 4729500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100621', '', '', '', 615000, NULL, '2026-10-31 08:14:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00622', 'PRD-A-AKS-0076', 'Handsfree Samsung', 2, 58000, 116000, 45000, 0, 26000, 'pcs'),
  ('TRX-A00622', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 18000, 0, 39000, 'pcs'),
  ('TRX-A00622', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00622', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 1, 2540000, 2540000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A00622', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 2, 2560000, 5120000, 2500000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01683', '2026-10-31 08:12:30+07:00', 'Dedi Supriadi 2', 'Admin', 7477000, 0, 7477000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101682', '', '', '', 1032000, NULL, '2026-10-31 08:12:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01683', 'PRD-A-AKS-0156', 'Handsfree Oppo', 1, 39000, 39000, 33000, 0, 6000, 'pcs'),
  ('TRX-A01683', 'PRD-A-KEL-0150', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01683', 'PRD-A-HP-0449', 'HP REALME HOT30i 2/32 56128', 3, 570000, 1710000, 500000, 0, 210000, 'pcs'),
  ('TRX-A01683', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A01683', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 1, 940000, 940000, 700000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00952', '2026-10-31 08:11:49+07:00', 'Umum', 'Admin', 1756000, 0, 1756000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100951', '', '', '', 255500, NULL, '2026-10-31 08:11:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00952', 'PRD-A-KEL-0068', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00952', 'PRD-A-AKS-0160', 'Memory Card 32GB', 2, 40000, 80000, 34000, 0, 12000, 'pcs'),
  ('TRX-A00952', 'PRD-A-KEL-0110', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00952', 'PRD-A-KEL-0156', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A00952', 'PRD-A-AKS-0064', 'Case Redmi 9A', 3, 38000, 114000, 25000, 0, 39000, 'pcs'),
  ('TRX-A00952', 'PRD-A-AKS-0108', 'Memory Card 16GB', 1, 96000, 96000, 87000, 0, 9000, 'pcs'),
  ('TRX-A00952', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 3, 460000, 1380000, 400000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00900', '2026-10-31 08:07:00+07:00', 'Umum', 'Admin', 8100000, 0, 0, 8100000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100899', '', '', '', 900000, NULL, '2026-10-31 08:07:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00900', 'PRD-A-HP-0483', 'HP REALME Y20 2/16 63302', 3, 1690000, 5070000, 1600000, 0, 270000, 'pcs'),
  ('TRX-A00900', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 3, 1010000, 3030000, 800000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;
