-- ============================================================================
-- TEST BERAT TOKORAFI — Dataset A (1.000 produk + 2.000 transaksi)
-- File: A-03-transaksi-06.sql  (bagian 6 dari 7 langkah ini — jalankan berurutan)
-- Isi: transaksi: 324, transaksi_detail: 1436
-- Transaksi 28 hari terakhir + detail (induk & detail satu unit).
-- Semua INSERT memakai ON CONFLICT DO NOTHING — aman dijalankan 2x dan
-- tidak bentrok dengan seed bawaan tokorafi (TES Kopi, TRX-8250237222,
-- CBG-UTAMA, PLG-UMUM). Dibuat oleh gen-tokorafi.js (deterministik).
-- ============================================================================

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01483', '2026-11-05 10:15:05+07:00', 'Rina Marlina', 'Admin', 227000, 0, 113500, 113500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101482', '', '', '', 37000, NULL, '2026-11-05 10:15:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01483', 'PRD-A-KEL-0130', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01483', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 3, 52000, 156000, 46000, 0, 18000, 'pcs'),
  ('TRX-A01483', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A01483', 'PRD-A-AKS-0198', 'Batre Oppo A57', 1, 19000, 19000, 14000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00563', '2026-11-05 10:07:55+07:00', 'Umum', 'Admin', 1272000, 0, 1272000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100562', '', '', '', 525000, NULL, '2026-11-05 10:07:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00563', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 2, 33000, 66000, 28000, 0, 10000, 'pcs'),
  ('TRX-A00563', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 2, 540000, 1080000, 300000, 0, 480000, 'pcs'),
  ('TRX-A00563', 'PRD-A-AKS-0160', 'Memory Card 32GB', 1, 40000, 40000, 34000, 0, 6000, 'pcs'),
  ('TRX-A00563', 'PRD-A-AKS-0082', 'Case Redmi 9A', 1, 26000, 26000, 23000, 0, 3000, 'pcs'),
  ('TRX-A00563', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 2, 30000, 60000, 17000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00066', '2026-11-05 09:56:31+07:00', 'Fajar Nugroho 4', 'Admin', 2156000, 0, 2156000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100065', '', '', '', 225500, NULL, '2026-11-05 09:56:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00066', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 1, 2100000, 2100000, 1900000, 0, 200000, 'pcs'),
  ('TRX-A00066', 'PRD-A-KEL-0081', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A00066', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 2, 25000, 50000, 13000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01472', '2026-11-05 09:45:10+07:00', 'Yusuf Maulana 5', 'Admin', 1669000, 0, 1669000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101471', '', '', '', 109000, NULL, '2026-11-05 09:45:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01472', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A01472', 'PRD-A-AKS-0160', 'Memory Card 32GB', 3, 40000, 120000, 34000, 0, 18000, 'pcs'),
  ('TRX-A01472', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 1, 1450000, 1450000, 1400000, 0, 50000, 'pcs'),
  ('TRX-A01472', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 2, 15000, 30000, 8000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00051', '2026-11-05 09:41:31+07:00', 'Toko O''Brien', 'Admin', 6123000, 0, 6123000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100050', '', '', '', 348000, NULL, '2026-11-05 09:41:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00051', 'PRD-A-KEL-0052', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00051', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 3, 950000, 2850000, 900000, 0, 150000, 'pcs'),
  ('TRX-A00051', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 3, 1050000, 3150000, 1000000, 0, 150000, 'pcs'),
  ('TRX-A00051', 'PRD-A-AKS-0098', 'Tempered Glass Oppo', 3, 23000, 69000, 11000, 0, 36000, 'pcs'),
  ('TRX-A00051', 'PRD-A-KEL-0161', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00489', '2026-11-05 09:41:02+07:00', 'Umum', 'Admin', 9152000, 0, 0, 9152000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100488', '', '', '', 544000, NULL, '2026-11-05 09:41:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00489', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs'),
  ('TRX-A00489', 'PRD-A-HP-0483', 'HP REALME Y20 2/16 63302', 2, 1690000, 3380000, 1600000, 0, 180000, 'pcs'),
  ('TRX-A00489', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00230', '2026-11-05 09:15:44+07:00', 'Lilis Suryani 4', 'Admin', 5615000, 0, 5615000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100229', '', '', '', 1121500, NULL, '2026-11-05 09:15:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00230', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 3, 1390000, 4170000, 1200000, 0, 570000, 'pcs'),
  ('TRX-A00230', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00230', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 2, 650000, 1300000, 400000, 0, 500000, 'pcs'),
  ('TRX-A00230', 'PRD-A-KEL-0114', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00230', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 2, 27000, 54000, 13000, 0, 28000, 'pcs'),
  ('TRX-A00230', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 1, 43000, 43000, 35000, 0, 8000, 'pcs'),
  ('TRX-A00230', 'PRD-A-KEL-0044', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00297', '2026-11-05 08:45:54+07:00', 'Siti Aisyah', 'Admin', 13139000, 0, 13139000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100296', '', '', '', 849000, NULL, '2026-11-05 08:45:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00297', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 1, 41000, 41000, 30000, 0, 11000, 'pcs'),
  ('TRX-A00297', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 2, 1760000, 3520000, 1700000, 0, 120000, 'pcs'),
  ('TRX-A00297', 'PRD-A-HP-0485', 'HP ITEL Y91C 3/64 10965', 2, 2820000, 5640000, 2600000, 0, 440000, 'pcs'),
  ('TRX-A00297', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 1, 2300000, 2300000, 2200000, 0, 100000, 'pcs'),
  ('TRX-A00297', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 1, 1560000, 1560000, 1400000, 0, 160000, 'pcs'),
  ('TRX-A00297', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 2, 39000, 78000, 30000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00870', '2026-11-05 08:43:40+07:00', 'Eko Saputra 4', 'Admin', 17732000, 0, 0, 17732000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100869', '', '', '', 1116000, NULL, '2026-11-05 08:43:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00870', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 3, 2150000, 6450000, 2100000, 0, 150000, 'pcs'),
  ('TRX-A00870', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs'),
  ('TRX-A00870', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00870', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 3, 950000, 2850000, 900000, 0, 150000, 'pcs'),
  ('TRX-A00870', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 3, 890000, 2670000, 800000, 0, 270000, 'pcs'),
  ('TRX-A00870', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00870', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00734', '2026-11-05 08:43:37+07:00', 'Umum', 'Admin', 1747000, 0, 1747000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100733', '', '', '', 171000, NULL, '2026-11-05 08:43:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00734', 'PRD-A-AKS-0154', 'Memory Card 16GB', 2, 101000, 202000, 86000, 0, 30000, 'pcs'),
  ('TRX-A00734', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 3, 23000, 69000, 16000, 0, 21000, 'pcs'),
  ('TRX-A00734', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00734', 'PRD-A-AKS-0134', 'Case Oppo A57', 2, 35000, 70000, 28000, 0, 14000, 'pcs'),
  ('TRX-A00734', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 2, 18000, 36000, 14000, 0, 8000, 'pcs'),
  ('TRX-A00734', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 1, 1290000, 1290000, 1200000, 0, 90000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01779', '2026-11-05 08:26:12+07:00', 'Fitri Rahmawati 5', 'Admin', 118000, 0, 59000, 59000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101778', '', '', '', 31000, NULL, '2026-11-05 08:26:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01779', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 1, 72000, 72000, 59000, 0, 13000, 'pcs'),
  ('TRX-A01779', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 2, 23000, 46000, 14000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01249', '2026-11-05 08:08:13+07:00', 'Umum', 'Admin', 13385000, 0, 6692500, 6692500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101248', '', '', '', 1107500, NULL, '2026-11-05 08:08:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01249', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 2, 1510000, 3020000, 1300000, 0, 420000, 'pcs'),
  ('TRX-A01249', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 2, 2700000, 5400000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01249', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs'),
  ('TRX-A01249', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 1, 2500000, 2500000, 2300000, 0, 200000, 'pcs'),
  ('TRX-A01249', 'PRD-A-AKS-0224', 'Case Samsung A03', 3, 48000, 144000, 35000, 0, 39000, 'pcs'),
  ('TRX-A01249', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 1, 2120000, 2120000, 1900000, 0, 220000, 'pcs'),
  ('TRX-A01249', 'PRD-A-KEL-0123', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00938', '2026-11-04 20:50:30+07:00', 'Umum', 'Admin', 4690000, 0, 4690000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100937', '', '', '', 493000, NULL, '2026-11-04 20:50:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00938', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 1, 2090000, 2090000, 1900000, 0, 190000, 'pcs'),
  ('TRX-A00938', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 3, 28000, 84000, 24000, 0, 12000, 'pcs'),
  ('TRX-A00938', 'PRD-A-KEL-0192', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00938', 'PRD-A-KEL-0129', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A00938', 'PRD-A-AKS-0134', 'Case Oppo A57', 3, 35000, 105000, 28000, 0, 21000, 'pcs'),
  ('TRX-A00938', 'PRD-A-AKS-0001', 'Case Oppo A57', 1, 22000, 22000, 10000, 0, 12000, 'pcs'),
  ('TRX-A00938', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 1, 2350000, 2350000, 2100000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01269', '2026-11-04 20:31:35+07:00', 'Maya Putri 3', 'Admin', 14674000, 0, 7337000, 7337000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101268', '', '', '', 1526000, NULL, '2026-11-04 20:31:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01269', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs'),
  ('TRX-A01269', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs'),
  ('TRX-A01269', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 2, 18000, 36000, 13000, 0, 10000, 'pcs'),
  ('TRX-A01269', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A01269', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 2, 590000, 1180000, 400000, 0, 380000, 'pcs'),
  ('TRX-A01269', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 2, 43000, 86000, 32000, 0, 22000, 'pcs'),
  ('TRX-A01269', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01269', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 3, 2960000, 8880000, 2800000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01425', '2026-11-04 20:28:20+07:00', 'Lilis Suryani 4', 'Admin', 11091000, 0, 5545500, 5545500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101424', '', '', '', 1017000, NULL, '2026-11-04 20:28:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01425', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 1, 1910000, 1910000, 1800000, 0, 110000, 'pcs'),
  ('TRX-A01425', 'PRD-A-HP-0044', 'HP OPPO HOT30i 3/64 35099', 1, 1220000, 1220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01425', 'PRD-A-AKS-0148', 'Case Vivo Y20', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A01425', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs'),
  ('TRX-A01425', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs'),
  ('TRX-A01425', 'PRD-A-HP-0491', 'HP REDMI V7 2/32 86419', 1, 2300000, 2300000, 2200000, 0, 100000, 'pcs'),
  ('TRX-A01425', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 3, 64000, 192000, 51000, 0, 39000, 'pcs'),
  ('TRX-A01425', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 2, 500000, 1000000, 300000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01157', '2026-11-04 20:10:00+07:00', 'Agus Wijaya 3', 'Admin', 12090000, 0, 6045000, 6045000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101156', '', '', '', 935000, NULL, '2026-11-04 20:10:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01157', 'PRD-A-KEL-0196', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01157', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A01157', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A01157', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 2, 25000, 50000, 17000, 0, 16000, 'pcs'),
  ('TRX-A01157', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 2, 950000, 1900000, 900000, 0, 100000, 'pcs'),
  ('TRX-A01157', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00848', '2026-11-04 20:05:39+07:00', 'Agus Wijaya 5', 'Admin', 2740000, 0, 2740000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100847', '', '', '', 140000, NULL, '2026-11-04 20:05:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00848', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 2, 1370000, 2740000, 1300000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00921', '2026-11-04 19:34:16+07:00', 'Umum', 'Admin', 2485000, 0, 2485000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100920', '', '', '', 141000, NULL, '2026-11-04 19:34:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00921', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A00921', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00073', '2026-11-04 19:30:10+07:00', 'Maya Putri 2', 'Admin', 1298000, 0, 1298000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100072', '', '', '', 104000, NULL, '2026-11-04 19:30:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00073', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00073', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 1, 1170000, 1170000, 1100000, 0, 70000, 'pcs'),
  ('TRX-A00073', 'PRD-A-AKS-0197', 'Case Vivo Y20', 2, 24000, 48000, 11000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00827', '2026-11-04 19:00:16+07:00', 'Umum', 'Admin', 10814000, 0, 10814000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100826', '', '', '', 1159000, NULL, '2026-11-04 19:00:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00827', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 3, 1210000, 3630000, 1000000, 0, 630000, 'pcs'),
  ('TRX-A00827', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 2, 1040000, 2080000, 900000, 0, 280000, 'pcs'),
  ('TRX-A00827', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 2, 2400000, 4800000, 2300000, 0, 200000, 'pcs'),
  ('TRX-A00827', 'PRD-A-KEL-0093', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00827', 'PRD-A-AKS-0172', 'Case Samsung A03', 1, 24000, 24000, 20000, 0, 4000, 'pcs'),
  ('TRX-A00827', 'PRD-A-AKS-0154', 'Memory Card 16GB', 2, 101000, 202000, 86000, 0, 30000, 'pcs'),
  ('TRX-A00827', 'PRD-A-KEL-0171', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00943', '2026-11-04 19:00:11+07:00', 'Ayu Lestari 4', 'Admin', 7805500, 0, 0, 7805500, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100942', '', '', '', 1094700, NULL, '2026-11-04 19:00:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00943', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 1, 33000, 33000, 28000, 0, 5000, 'pcs'),
  ('TRX-A00943', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 2, 2020000, 4040000, 1800000, 0, 440000, 'pcs'),
  ('TRX-A00943', 'PRD-A-KEL-0154', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00943', 'PRD-A-KEL-0076', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00943', 'PRD-A-AKS-0071', 'Case Oppo A57', 1, 31000, 31000, 19000, 0, 12000, 'pcs'),
  ('TRX-A00943', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 3, 1210000, 3630000, 1000000, 0, 630000, 'pcs'),
  ('TRX-A00943', 'PRD-A-KEL-0088', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00943', 'PRD-A-AKS-0144', 'Voucher Telkomsel 10GB', 1, 65000, 65000, 60000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01439', '2026-11-04 18:47:35+07:00', 'Dewi Lestari 5', 'Admin', 897000, 0, 0, 897000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101438', '', '', '', 234000, NULL, '2026-11-04 18:47:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01439', 'PRD-A-KEL-0196', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01439', 'PRD-A-HP-0330', 'HP REDMI C15 4/64 69727', 1, 810000, 810000, 600000, 0, 210000, 'pcs'),
  ('TRX-A01439', 'PRD-A-AKS-0198', 'Batre Oppo A57', 3, 19000, 57000, 14000, 0, 15000, 'pcs'),
  ('TRX-A01439', 'PRD-A-KEL-0062', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00433', '2026-11-04 18:41:54+07:00', 'Umum', 'Admin', 4820000, 0, 4820000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100432', '', '', '', 920000, NULL, '2026-11-04 18:41:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00433', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 2, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A00433', 'PRD-A-HP-0075', 'HP VIVO Y53 2/16 24312', 2, 520000, 1040000, 300000, 0, 440000, 'pcs'),
  ('TRX-A00433', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 3, 1260000, 3780000, 1100000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00879', '2026-11-04 18:15:42+07:00', 'Sri Wahyuni', 'Admin', 14340000, 0, 14340000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100878', '', '', '', 1040000, NULL, '2026-11-04 18:15:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00879', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 1, 2870000, 2870000, 2700000, 0, 170000, 'pcs'),
  ('TRX-A00879', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A00879', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 2, 2560000, 5120000, 2400000, 0, 320000, 'pcs'),
  ('TRX-A00879', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 1, 2320000, 2320000, 2200000, 0, 120000, 'pcs'),
  ('TRX-A00879', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 1, 520000, 520000, 300000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01727', '2026-11-04 18:14:50+07:00', 'Maya Putri 2', 'Admin', 36000, 0, 36000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101726', '', '', '', 12000, NULL, '2026-11-04 18:14:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01727', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00854', '2026-11-04 17:58:07+07:00', 'Umum', 'Admin', 9833000, 0, 9833000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100853', '', '', '', 875500, NULL, '2026-11-04 17:58:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00854', 'PRD-A-AKS-0141', 'Batre Oppo A57', 1, 62000, 62000, 50000, 0, 12000, 'pcs'),
  ('TRX-A00854', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 1, 2950000, 2950000, 2800000, 0, 150000, 'pcs'),
  ('TRX-A00854', 'PRD-A-KEL-0156', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A00854', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 3, 1650000, 4950000, 1500000, 0, 450000, 'pcs'),
  ('TRX-A00854', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 2, 930000, 1860000, 800000, 0, 260000, 'pcs'),
  ('TRX-A00854', 'PRD-A-KEL-0095', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00697', '2026-11-04 17:50:01+07:00', 'Umum', 'Admin', 15185000, 0, 0, 15185000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100696', '', '', '', 1727000, NULL, '2026-11-04 17:50:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00697', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 3, 2020000, 6060000, 1800000, 0, 660000, 'pcs'),
  ('TRX-A00697', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 1, 57000, 57000, 45000, 0, 12000, 'pcs'),
  ('TRX-A00697', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 3, 1180000, 3540000, 1100000, 0, 240000, 'pcs'),
  ('TRX-A00697', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 3, 1540000, 4620000, 1300000, 0, 720000, 'pcs'),
  ('TRX-A00697', 'PRD-A-AKS-0019', 'Kartu Perdana Telkomsel', 1, 18000, 18000, 13000, 0, 5000, 'pcs'),
  ('TRX-A00697', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 1, 890000, 890000, 800000, 0, 90000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00673', '2026-11-04 17:37:05+07:00', 'Dewi Lestari 5', 'Admin', 24000, 0, 12000, 12000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100672', '', '', '', 6000, NULL, '2026-11-04 17:37:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00673', 'PRD-A-KEL-0029', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01881', '2026-11-04 17:21:00+07:00', 'Andi Kurnia 5', 'Admin', 6659000, 0, 6659000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101880', '', '', '', 884500, NULL, '2026-11-04 17:21:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01881', 'PRD-A-KEL-0085', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01881', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 3, 780000, 2340000, 700000, 0, 240000, 'pcs'),
  ('TRX-A01881', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01881', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01881', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 3, 1410000, 4230000, 1200000, 0, 630000, 'pcs'),
  ('TRX-A01881', 'PRD-A-KEL-0040', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01228', '2026-11-04 16:53:01+07:00', 'Dewi Lestari', 'Admin', 84000, 0, 84000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101227', '', '', '', 37000, NULL, '2026-11-04 16:53:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01228', 'PRD-A-AKS-0113', 'Tempered Glass Samsung', 2, 15000, 30000, 7000, 0, 16000, 'pcs'),
  ('TRX-A01228', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 3, 18000, 54000, 11000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01202', '2026-11-04 16:51:59+07:00', 'Dedi Supriadi 3', 'Admin', 17820000, 0, 17820000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101201', '', '', '', 1006000, NULL, '2026-11-04 16:51:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01202', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs'),
  ('TRX-A01202', 'PRD-A-KEL-0072', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01202', 'PRD-A-KEL-0125', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01202', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 1, 2730000, 2730000, 2500000, 0, 230000, 'pcs'),
  ('TRX-A01202', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 2, 2770000, 5540000, 2700000, 0, 140000, 'pcs'),
  ('TRX-A01202', 'PRD-A-AKS-0221', 'Memory Card 32GB', 2, 88000, 176000, 76000, 0, 24000, 'pcs'),
  ('TRX-A01202', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01857', '2026-11-04 16:26:36+07:00', 'Dedi Supriadi 3', 'Admin', 5223000, 0, 2611500, 2611500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101856', '', '', '', 265000, NULL, '2026-11-04 16:26:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01857', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 1, 2580000, 2580000, 2500000, 0, 80000, 'pcs'),
  ('TRX-A01857', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 2, 25000, 50000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01857', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A01857', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01857', 'PRD-A-KEL-0161', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01898', '2026-11-04 16:15:54+07:00', 'Eko Saputra 2', 'Admin', 11831000, 0, 0, 11831000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101897', '', '', '', 1092000, NULL, '2026-11-04 16:15:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01898', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 2, 410000, 820000, 300000, 0, 220000, 'pcs'),
  ('TRX-A01898', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 2, 18000, 36000, 14000, 0, 8000, 'pcs'),
  ('TRX-A01898', 'PRD-A-KEL-0175', 'Snack wafer', 1, 10000, 10000, 8000, 0, 2000, 'pcs'),
  ('TRX-A01898', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 1, 2230000, 2230000, 2000000, 0, 230000, 'pcs'),
  ('TRX-A01898', 'PRD-A-KEL-0198', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A01898', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 3, 2910000, 8730000, 2700000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01856', '2026-11-04 16:11:07+07:00', 'Umum', 'Admin', 5537500, 0, 5537500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101855', '', '', '', 650000, NULL, '2026-11-04 16:11:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01856', 'PRD-A-AKS-0143', 'Batre Samsung J1', 3, 34000, 102000, 23000, 0, 33000, 'pcs'),
  ('TRX-A01856', 'PRD-A-KEL-0110', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01856', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 1, 590000, 590000, 400000, 0, 190000, 'pcs'),
  ('TRX-A01856', 'PRD-A-KEL-0185', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01856', 'PRD-A-HP-0150', 'HP OPPO Y55S 8/256 41252', 2, 1300000, 2600000, 1200000, 0, 200000, 'pcs'),
  ('TRX-A01856', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 2, 1110000, 2220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01856', 'PRD-A-KEL-0137', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00468', '2026-11-04 16:08:35+07:00', 'Agus Wijaya 3', 'Admin', 138000, 0, 69000, 69000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100467', '', '', '', 36000, NULL, '2026-11-04 16:08:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00468', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01944', '2026-11-04 16:05:45+07:00', 'Rudi Hartono 3', 'Admin', 14200000, 0, 7100000, 7100000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101943', '', '', '', 1219000, NULL, '2026-11-04 16:05:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01944', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 3, 1650000, 4950000, 1400000, 0, 750000, 'pcs'),
  ('TRX-A01944', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 3, 1990000, 5970000, 1900000, 0, 270000, 'pcs'),
  ('TRX-A01944', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 2, 1450000, 2900000, 1400000, 0, 100000, 'pcs'),
  ('TRX-A01944', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 1, 69000, 69000, 58000, 0, 11000, 'pcs'),
  ('TRX-A01944', 'PRD-A-AKS-0230', 'Handsfree Oppo', 2, 52000, 104000, 38000, 0, 28000, 'pcs'),
  ('TRX-A01944', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 1, 21000, 21000, 9000, 0, 12000, 'pcs'),
  ('TRX-A01944', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 2, 39000, 78000, 30000, 0, 18000, 'pcs'),
  ('TRX-A01944', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 2, 54000, 108000, 39000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00835', '2026-11-04 15:44:09+07:00', 'Rudi Hartono 4', 'Admin', 5770500, 0, 2885250, 2885250, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100834', '', '', '', 624100, NULL, '2026-11-04 15:44:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00835', 'PRD-A-KEL-0005', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00835', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 2, 33000, 66000, 22000, 0, 22000, 'pcs'),
  ('TRX-A00835', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 3, 1900000, 5700000, 1700000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00004', '2026-11-04 15:28:46+07:00', 'Umum', 'Admin', 34000, 0, 34000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100003', '', '', '', 14000, NULL, '2026-11-04 15:28:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00004', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 1, 34000, 34000, 20000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00082', '2026-11-04 15:14:05+07:00', 'Umum', 'Admin', 6519000, 0, 0, 6519000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100081', '', '', '', 839000, NULL, '2026-11-04 15:14:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00082', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 2, 410000, 820000, 300000, 0, 220000, 'pcs'),
  ('TRX-A00082', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 3, 1370000, 4110000, 1200000, 0, 510000, 'pcs'),
  ('TRX-A00082', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 3, 43000, 129000, 35000, 0, 24000, 'pcs'),
  ('TRX-A00082', 'PRD-A-KEL-0161', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00082', 'PRD-A-KEL-0047', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00082', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01700', '2026-11-04 15:13:16+07:00', 'Umum', 'Admin', 6500000, 0, 3250000, 3250000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101699', '', '', '', 600000, NULL, '2026-11-04 15:13:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01700', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 1, 2580000, 2580000, 2500000, 0, 80000, 'pcs'),
  ('TRX-A01700', 'PRD-A-HP-0254', 'HP VIVO J5 2/16 85377', 1, 1000000, 1000000, 800000, 0, 200000, 'pcs'),
  ('TRX-A01700', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00577', '2026-11-04 15:12:23+07:00', 'Sri Wahyuni 3', 'Admin', 7702000, 0, 7702000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100576', '', '', '', 785000, NULL, '2026-11-04 15:12:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00577', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00577', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 2, 830000, 1660000, 600000, 0, 460000, 'pcs'),
  ('TRX-A00577', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 1, 2700000, 2700000, 2600000, 0, 100000, 'pcs'),
  ('TRX-A00577', 'PRD-A-KEL-0085', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00577', 'PRD-A-AKS-0171', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A00577', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 1, 2870000, 2870000, 2700000, 0, 170000, 'pcs'),
  ('TRX-A00577', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00577', 'PRD-A-AKS-0195', 'Memory Card 16GB', 3, 70000, 210000, 65000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00751', '2026-11-04 15:11:31+07:00', 'Dewi Lestari 2', 'Admin', 120000, 0, 120000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100750', '', '', '', 12000, NULL, '2026-11-04 15:11:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00751', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00277', '2026-11-04 15:06:33+07:00', 'Fajar Nugroho 2', 'Admin', 2060000, 0, 2060000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100276', '', '', '', 439000, NULL, '2026-11-04 15:06:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00277', 'PRD-A-KEL-0131', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00277', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 1, 1490000, 1490000, 1300000, 0, 190000, 'pcs'),
  ('TRX-A00277', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 1, 540000, 540000, 300000, 0, 240000, 'pcs'),
  ('TRX-A00277', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 1, 14000, 14000, 9000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01625', '2026-11-04 15:03:56+07:00', 'Lilis Suryani 5', 'Admin', 10219000, 0, 10219000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101624', '', '', '', 1153000, NULL, '2026-11-04 15:03:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01625', 'PRD-A-AKS-0120', 'Batre Oppo A57', 3, 33000, 99000, 22000, 0, 33000, 'pcs'),
  ('TRX-A01625', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 2, 1290000, 2580000, 1200000, 0, 180000, 'pcs'),
  ('TRX-A01625', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 3, 1750000, 5250000, 1500000, 0, 750000, 'pcs'),
  ('TRX-A01625', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 1, 2290000, 2290000, 2100000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01959', '2026-11-04 14:53:27+07:00', 'Ayu Lestari 4', 'Admin', 11903000, 0, 5951500, 5951500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101958', '', '', '', 1277500, NULL, '2026-11-04 14:53:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01959', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 1, 1570000, 1570000, 1500000, 0, 70000, 'pcs'),
  ('TRX-A01959', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 3, 1850000, 5550000, 1600000, 0, 750000, 'pcs'),
  ('TRX-A01959', 'PRD-A-KEL-0027', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A01959', 'PRD-A-AKS-0155', 'Handsfree Samsung', 1, 40000, 40000, 31000, 0, 9000, 'pcs'),
  ('TRX-A01959', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 3, 39000, 117000, 30000, 0, 27000, 'pcs'),
  ('TRX-A01959', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 2, 2310000, 4620000, 2100000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00977', '2026-11-04 14:39:49+07:00', 'Umum', 'Admin', 12958500, 0, 12958500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100976', '', '', '', 1440100, NULL, '2026-11-04 14:39:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00977', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs'),
  ('TRX-A00977', 'PRD-A-KEL-0040', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00977', 'PRD-A-HP-0485', 'HP ITEL Y91C 3/64 10965', 2, 2820000, 5640000, 2600000, 0, 440000, 'pcs'),
  ('TRX-A00977', 'PRD-A-KEL-0110', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00977', 'PRD-A-KEL-0128', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00977', 'PRD-A-KEL-0006', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00977', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 3, 580000, 1740000, 400000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01586', '2026-11-04 14:28:15+07:00', 'Eko Saputra 2', 'Admin', 8340000, 0, 4170000, 4170000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101585', '', '', '', 440000, NULL, '2026-11-04 14:28:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01586', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A01586', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 2, 930000, 1860000, 800000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00399', '2026-11-04 14:26:19+07:00', 'Budi Santoso 3', 'Admin', 11578000, 0, 5789000, 5789000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100398', '', '', '', 1293000, NULL, '2026-11-04 14:26:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00399', 'PRD-A-KEL-0085', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00399', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 3, 1370000, 4110000, 1200000, 0, 510000, 'pcs'),
  ('TRX-A00399', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 1, 2700000, 2700000, 2600000, 0, 100000, 'pcs'),
  ('TRX-A00399', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 1, 1960000, 1960000, 1900000, 0, 60000, 'pcs'),
  ('TRX-A00399', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 2, 600000, 1200000, 400000, 0, 400000, 'pcs'),
  ('TRX-A00399', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 2, 39000, 78000, 30000, 0, 18000, 'pcs'),
  ('TRX-A00399', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs'),
  ('TRX-A00399', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01642', '2026-11-04 14:24:33+07:00', 'Umum', 'Admin', 1689000, 0, 1689000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101641', '', '', '', 550000, NULL, '2026-11-04 14:24:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01642', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 1, 46000, 46000, 35000, 0, 11000, 'pcs'),
  ('TRX-A01642', 'PRD-A-AKS-0168', 'Memory Card 32GB', 1, 40000, 40000, 32000, 0, 8000, 'pcs'),
  ('TRX-A01642', 'PRD-A-AKS-0084', 'Memory Card 64GB', 1, 95000, 95000, 82000, 0, 13000, 'pcs'),
  ('TRX-A01642', 'PRD-A-AKS-0153', 'Memory Card 32GB', 2, 92000, 184000, 86000, 0, 12000, 'pcs'),
  ('TRX-A01642', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 2, 650000, 1300000, 400000, 0, 500000, 'pcs'),
  ('TRX-A01642', 'PRD-A-KEL-0098', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01591', '2026-11-04 14:02:48+07:00', 'Umum', 'Admin', 285000, 0, 142500, 142500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101590', '', '', '', 54000, NULL, '2026-11-04 14:02:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01591', 'PRD-A-KEL-0131', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01591', 'PRD-A-KEL-0063', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A01591', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 2, 41000, 82000, 30000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01562', '2026-11-04 14:00:49+07:00', 'Umum', 'Admin', 17000, 0, 17000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101561', '', '', '', 3000, NULL, '2026-11-04 14:00:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01562', 'PRD-A-KEL-0026', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00635', '2026-11-04 13:33:17+07:00', 'Umum', 'Admin', 5522500, 0, 5522500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100634', '', '', '', 664100, NULL, '2026-11-04 13:33:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00635', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A00635', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A00635', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00635', 'PRD-A-KEL-0083', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01810', '2026-11-04 13:29:42+07:00', 'Ayu Lestari 3', 'Admin', 10722000, 0, 5361000, 5361000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101809', '', '', '', 1020000, NULL, '2026-11-04 13:29:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01810', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01810', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 2, 1520000, 3040000, 1300000, 0, 440000, 'pcs'),
  ('TRX-A01810', 'PRD-A-KEL-0144', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01810', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 3, 42000, 126000, 30000, 0, 36000, 'pcs'),
  ('TRX-A01810', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01419', '2026-11-04 13:06:36+07:00', 'Eko Saputra 5', 'Admin', 27269000, 0, 27269000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101418', '', '', '', 2303000, NULL, '2026-11-04 13:06:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01419', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 3, 33000, 99000, 22000, 0, 33000, 'pcs'),
  ('TRX-A01419', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 3, 2780000, 8340000, 2600000, 0, 540000, 'pcs'),
  ('TRX-A01419', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 1, 950000, 950000, 900000, 0, 50000, 'pcs'),
  ('TRX-A01419', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 3, 2600000, 7800000, 2500000, 0, 300000, 'pcs'),
  ('TRX-A01419', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 3, 2610000, 7830000, 2400000, 0, 630000, 'pcs'),
  ('TRX-A01419', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 3, 750000, 2250000, 500000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01743', '2026-11-04 13:04:27+07:00', 'Andi Kurnia 5', 'Admin', 3330000, 0, 3330000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101742', '', '', '', 630000, NULL, '2026-11-04 13:04:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01743', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 3, 1110000, 3330000, 900000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00337', '2026-11-04 12:58:26+07:00', 'Umum', 'Admin', 9353000, 0, 9353000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100336', '', '', '', 667500, NULL, '2026-11-04 12:58:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00337', 'PRD-A-KEL-0031', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00337', 'PRD-A-KEL-0158', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00337', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 2, 72000, 144000, 59000, 0, 26000, 'pcs'),
  ('TRX-A00337', 'PRD-A-HP-0491', 'HP REDMI V7 2/32 86419', 1, 2300000, 2300000, 2200000, 0, 100000, 'pcs'),
  ('TRX-A00337', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 1, 500000, 500000, 300000, 0, 200000, 'pcs'),
  ('TRX-A00337', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A00337', 'PRD-A-AKS-0236', 'Memory Card 64GB', 1, 72000, 72000, 63000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01150', '2026-11-04 12:49:10+07:00', 'Umum', 'Admin', 18439000, 0, 0, 18439000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101149', '', '', '', 1967000, NULL, '2026-11-04 12:49:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01150', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 3, 460000, 1380000, 400000, 0, 180000, 'pcs'),
  ('TRX-A01150', 'PRD-A-KEL-0052', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01150', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 3, 1990000, 5970000, 1800000, 0, 570000, 'pcs'),
  ('TRX-A01150', 'PRD-A-KEL-0047', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01150', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 3, 670000, 2010000, 500000, 0, 510000, 'pcs'),
  ('TRX-A01150', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 3, 2190000, 6570000, 2000000, 0, 570000, 'pcs'),
  ('TRX-A01150', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs'),
  ('TRX-A01150', 'PRD-A-KEL-0129', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00426', '2026-11-04 12:34:59+07:00', 'Umum', 'Admin', 7119000, 0, 7119000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100425', '', '', '', 708000, NULL, '2026-11-04 12:34:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00426', 'PRD-A-KEL-0045', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00426', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A00426', 'PRD-A-KEL-0110', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00426', 'PRD-A-AKS-0242', 'Handsfree Samsung', 3, 28000, 84000, 16000, 0, 36000, 'pcs'),
  ('TRX-A00426', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 3, 2190000, 6570000, 2000000, 0, 570000, 'pcs'),
  ('TRX-A00426', 'PRD-A-AKS-0079', 'Handsfree Oppo', 3, 51000, 153000, 43000, 0, 24000, 'pcs'),
  ('TRX-A00426', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01406', '2026-11-04 12:30:13+07:00', 'Budi Santoso 4', 'Admin', 3344000, 0, 3344000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101405', '', '', '', 566400, NULL, '2026-11-04 12:30:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01406', 'PRD-A-KEL-0038', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01406', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 3, 410000, 1230000, 300000, 0, 330000, 'pcs'),
  ('TRX-A01406', 'PRD-A-AKS-0175', 'Kartu Perdana Tri', 1, 28000, 28000, 18000, 0, 10000, 'pcs'),
  ('TRX-A01406', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 1, 73000, 73000, 58000, 0, 15000, 'pcs'),
  ('TRX-A01406', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 3, 670000, 2010000, 600000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00765', '2026-11-04 12:20:57+07:00', 'Umum', 'Admin', 7700000, 0, 3850000, 3850000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100764', '', '', '', 728000, NULL, '2026-11-04 12:20:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00765', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 3, 2540000, 7620000, 2300000, 0, 720000, 'pcs'),
  ('TRX-A00765', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01140', '2026-11-04 12:10:29+07:00', 'Umum', 'Admin', 6534000, 0, 6534000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101139', '', '', '', 186000, NULL, '2026-11-04 12:10:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01140', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01140', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00958', '2026-11-04 11:55:52+07:00', 'Umum', 'Admin', 14924000, 0, 14924000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100957', '', '', '', 1747000, NULL, '2026-11-04 11:55:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00958', 'PRD-A-KEL-0072', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00958', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 3, 740000, 2220000, 500000, 0, 720000, 'pcs'),
  ('TRX-A00958', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 1, 2350000, 2350000, 2100000, 0, 250000, 'pcs'),
  ('TRX-A00958', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00958', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 1, 24000, 24000, 16000, 0, 8000, 'pcs'),
  ('TRX-A00958', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 3, 1820000, 5460000, 1700000, 0, 360000, 'pcs'),
  ('TRX-A00958', 'PRD-A-KEL-0073', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00958', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 2, 1910000, 3820000, 1800000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01338', '2026-11-04 11:29:45+07:00', 'Umum', 'Admin', 12000, 0, 12000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101337', '', '', '', 3500, NULL, '2026-11-04 11:29:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01338', 'PRD-A-KEL-0008', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01338', 'PRD-A-KEL-0098', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00240', '2026-11-04 11:22:20+07:00', 'Fitri Rahmawati 3', 'Admin', 148000, 0, 148000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100239', '', '', '', 51000, NULL, '2026-11-04 11:22:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00240', 'PRD-A-KEL-0048', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00240', 'PRD-A-AKS-0197', 'Case Vivo Y20', 2, 24000, 48000, 11000, 0, 26000, 'pcs'),
  ('TRX-A00240', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00240', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 2, 39000, 78000, 30000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01146', '2026-11-04 11:16:49+07:00', 'Fajar Nugroho', 'Admin', 158000, 0, 158000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101145', '', '', '', 45000, NULL, '2026-11-04 11:16:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01146', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01146', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 3, 46000, 138000, 33000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01050', '2026-11-04 11:14:23+07:00', 'Andi Kurnia 3', 'Admin', 572000, 0, 572000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101049', '', '', '', 71000, NULL, '2026-11-04 11:14:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01050', 'PRD-A-HP-0449', 'HP REALME HOT30i 2/32 56128', 1, 570000, 570000, 500000, 0, 70000, 'pcs'),
  ('TRX-A01050', 'PRD-A-KEL-0050', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01409', '2026-11-04 10:41:49+07:00', 'Joko Prasetyo', 'Admin', 6334000, 0, 6334000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101408', '', '', '', 511000, NULL, '2026-11-04 10:41:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01409', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs'),
  ('TRX-A01409', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 1, 1770000, 1770000, 1700000, 0, 70000, 'pcs'),
  ('TRX-A01409', 'PRD-A-KEL-0175', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A01409', 'PRD-A-AKS-0236', 'Memory Card 64GB', 1, 72000, 72000, 63000, 0, 9000, 'pcs'),
  ('TRX-A01409', 'PRD-A-KEL-0007', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01409', 'PRD-A-AKS-0242', 'Handsfree Samsung', 2, 28000, 56000, 16000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00801', '2026-11-04 10:27:38+07:00', 'Umum', 'Admin', 4040000, 0, 4040000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100800', '', '', '', 240000, NULL, '2026-11-04 10:27:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00801', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 2, 2020000, 4040000, 1900000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00536', '2026-11-04 10:22:11+07:00', 'Umum', 'Admin', 6230000, 0, 3115000, 3115000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100535', '', '', '', 430000, NULL, '2026-11-04 10:22:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00536', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00536', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 2, 2320000, 4640000, 2200000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01109', '2026-11-04 10:21:13+07:00', 'Umum', 'Admin', 10712000, 0, 10712000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101108', '', '', '', 614000, NULL, '2026-11-04 10:21:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01109', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs'),
  ('TRX-A01109', 'PRD-A-AKS-0154', 'Memory Card 16GB', 1, 101000, 101000, 86000, 0, 15000, 'pcs'),
  ('TRX-A01109', 'PRD-A-AKS-0214', 'Memory Card 64GB', 1, 100000, 100000, 86000, 0, 14000, 'pcs'),
  ('TRX-A01109', 'PRD-A-AKS-0174', 'Case Redmi 9A', 1, 41000, 41000, 26000, 0, 15000, 'pcs'),
  ('TRX-A01109', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 2, 1200000, 2400000, 1100000, 0, 200000, 'pcs'),
  ('TRX-A01109', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 2, 1820000, 3640000, 1700000, 0, 240000, 'pcs'),
  ('TRX-A01109', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 2, 55000, 110000, 50000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00633', '2026-11-04 10:15:31+07:00', 'Umum', 'Admin', 3730000, 0, 3730000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100632', '', '', '', 473000, NULL, '2026-11-04 10:15:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00633', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 1, 2020000, 2020000, 1800000, 0, 220000, 'pcs'),
  ('TRX-A00633', 'PRD-A-AKS-0116', 'Memory Card 16GB', 3, 88000, 264000, 76000, 0, 36000, 'pcs'),
  ('TRX-A00633', 'PRD-A-AKS-0197', 'Case Vivo Y20', 1, 24000, 24000, 11000, 0, 13000, 'pcs'),
  ('TRX-A00633', 'PRD-A-AKS-0167', 'Tempered Glass Oppo', 1, 32000, 32000, 18000, 0, 14000, 'pcs'),
  ('TRX-A00633', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00861', '2026-11-04 10:06:05+07:00', 'Umum', 'Admin', 4076000, 0, 2038000, 2038000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100860', '', '', '', 301000, NULL, '2026-11-04 10:06:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00861', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00861', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 1, 46000, 46000, 33000, 0, 13000, 'pcs'),
  ('TRX-A00861', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 3, 1290000, 3870000, 1200000, 0, 270000, 'pcs'),
  ('TRX-A00861', 'PRD-A-KEL-0176', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01329', '2026-11-04 09:51:44+07:00', 'Yusuf Maulana', 'Admin', 10030000, 0, 10030000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101328', '', '', '', 1430000, NULL, '2026-11-04 09:51:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01329', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 2, 500000, 1000000, 300000, 0, 400000, 'pcs'),
  ('TRX-A01329', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 2, 1500000, 3000000, 1300000, 0, 400000, 'pcs'),
  ('TRX-A01329', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 3, 2010000, 6030000, 1800000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01099', '2026-11-04 09:32:20+07:00', 'Umum', 'Admin', 14345000, 0, 14345000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101098', '', '', '', 1426000, NULL, '2026-11-04 09:32:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01099', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A01099', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 1, 54000, 54000, 47000, 0, 7000, 'pcs'),
  ('TRX-A01099', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01099', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A01099', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 1, 1490000, 1490000, 1300000, 0, 190000, 'pcs'),
  ('TRX-A01099', 'PRD-A-AKS-0098', 'Tempered Glass Oppo', 1, 23000, 23000, 11000, 0, 12000, 'pcs'),
  ('TRX-A01099', 'PRD-A-AKS-0045', 'Memory Card 16GB', 1, 58000, 58000, 53000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01524', '2026-11-04 09:24:05+07:00', 'Nur Halimah', 'Admin', 26276000, 0, 26276000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101523', '', '', '', 2131000, NULL, '2026-11-04 09:24:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01524', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 3, 1210000, 3630000, 1000000, 0, 630000, 'pcs'),
  ('TRX-A01524', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A01524', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs'),
  ('TRX-A01524', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 2, 1320000, 2640000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A01524', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 2, 1860000, 3720000, 1700000, 0, 320000, 'pcs'),
  ('TRX-A01524', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 3, 2150000, 6450000, 2100000, 0, 150000, 'pcs'),
  ('TRX-A01524', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 3, 22000, 66000, 15000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01293', '2026-11-04 09:10:41+07:00', 'Ayu Lestari', 'Admin', 8836000, 0, 4418000, 4418000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101292', '', '', '', 1006000, NULL, '2026-11-04 09:10:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01293', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 3, 2550000, 7650000, 2300000, 0, 750000, 'pcs'),
  ('TRX-A01293', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 3, 43000, 129000, 32000, 0, 33000, 'pcs'),
  ('TRX-A01293', 'PRD-A-KEL-0045', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01293', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 18000, 0, 39000, 'pcs'),
  ('TRX-A01293', 'PRD-A-AKS-0201', 'Memory Card 32GB', 2, 38000, 76000, 27000, 0, 22000, 'pcs'),
  ('TRX-A01293', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 1, 740000, 740000, 600000, 0, 140000, 'pcs'),
  ('TRX-A01293', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00291', '2026-11-04 08:53:58+07:00', 'Umum', 'Admin', 1408000, 0, 704000, 704000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100290', '', '', '', 200000, NULL, '2026-11-04 08:53:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00291', 'PRD-A-AKS-0236', 'Memory Card 64GB', 3, 72000, 216000, 63000, 0, 27000, 'pcs'),
  ('TRX-A00291', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 1, 1050000, 1050000, 900000, 0, 150000, 'pcs'),
  ('TRX-A00291', 'PRD-A-KEL-0170', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00291', 'PRD-A-KEL-0163', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00275', '2026-11-04 08:49:23+07:00', 'Umum', 'Admin', 4832000, 0, 0, 4832000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100274', '', '', '', 455000, NULL, '2026-11-04 08:49:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00275', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 1, 1760000, 1760000, 1700000, 0, 60000, 'pcs'),
  ('TRX-A00275', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 1, 1330000, 1330000, 1200000, 0, 130000, 'pcs'),
  ('TRX-A00275', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 3, 74000, 222000, 59000, 0, 45000, 'pcs'),
  ('TRX-A00275', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 1, 1520000, 1520000, 1300000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01845', '2026-11-04 08:43:20+07:00', 'Fajar Nugroho 5', 'Admin', 3860000, 0, 3860000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101844', '', '', '', 423000, NULL, '2026-11-04 08:43:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01845', 'PRD-A-KEL-0065', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01845', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 1, 1490000, 1490000, 1300000, 0, 190000, 'pcs'),
  ('TRX-A01845', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs'),
  ('TRX-A01845', 'PRD-A-KEL-0062', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01845', 'PRD-A-KEL-0013', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01845', 'PRD-A-AKS-0169', 'Handsfree Oppo', 1, 29000, 29000, 14000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01493', '2026-11-04 08:40:00+07:00', 'Umum', 'Admin', 1680000, 0, 1680000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101492', '', '', '', 80000, NULL, '2026-11-04 08:40:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01493', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01260', '2026-11-04 08:36:54+07:00', 'Umum', 'Admin', 2847000, 0, 2847000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101259', '', '', '', 205000, NULL, '2026-11-04 08:36:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01260', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01260', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 1, 47000, 47000, 42000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01631', '2026-11-04 08:24:36+07:00', 'Umum', 'Admin', 5590000, 0, 0, 5590000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101630', '', '', '', 1054000, NULL, '2026-11-04 08:24:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01631', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 3, 1220000, 3660000, 1000000, 0, 660000, 'pcs'),
  ('TRX-A01631', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 3, 630000, 1890000, 500000, 0, 390000, 'pcs'),
  ('TRX-A01631', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00272', '2026-11-04 08:00:23+07:00', 'Maya Putri 5', 'Admin', 778000, 0, 778000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100271', '', '', '', 188000, NULL, '2026-11-04 08:00:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00272', 'PRD-A-KEL-0047', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00272', 'PRD-A-HP-0145', 'HP ITEL C3 3/64 46957', 1, 660000, 660000, 500000, 0, 160000, 'pcs'),
  ('TRX-A00272', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 3, 32000, 96000, 24000, 0, 24000, 'pcs'),
  ('TRX-A00272', 'PRD-A-KEL-0140', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00273', '2026-11-03 20:48:13+07:00', 'Umum', 'Admin', 1730000, 0, 1730000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100272', '', '', '', 130000, NULL, '2026-11-03 20:48:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00273', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 1, 1730000, 1730000, 1600000, 0, 130000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01206', '2026-11-03 20:40:54+07:00', 'Umum', 'Admin', 40000, 0, 40000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101205', '', '', '', 4000, NULL, '2026-11-03 20:40:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01206', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01658', '2026-11-03 20:40:45+07:00', 'Umum', 'Admin', 15803000, 0, 15803000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101657', '', '', '', 1169000, NULL, '2026-11-03 20:40:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01658', 'PRD-A-KEL-0158', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01658', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs'),
  ('TRX-A01658', 'PRD-A-AKS-0053', 'Memory Card 16GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs'),
  ('TRX-A01658', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 3, 2270000, 6810000, 2100000, 0, 510000, 'pcs'),
  ('TRX-A01658', 'PRD-A-AKS-0217', 'Batre Samsung J1', 2, 47000, 94000, 42000, 0, 10000, 'pcs'),
  ('TRX-A01658', 'PRD-A-AKS-0073', 'Memory Card 64GB', 2, 35000, 70000, 31000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01341', '2026-11-03 20:29:51+07:00', 'Ayu Lestari 4', 'Admin', 627000, 0, 627000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101340', '', '', '', 89000, NULL, '2026-11-03 20:29:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01341', 'PRD-A-KEL-0065', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01341', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 2, 55000, 110000, 48000, 0, 14000, 'pcs'),
  ('TRX-A01341', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 3, 15000, 45000, 10000, 0, 15000, 'pcs'),
  ('TRX-A01341', 'PRD-A-KEL-0085', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01341', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 3, 45000, 135000, 33000, 0, 36000, 'pcs'),
  ('TRX-A01341', 'PRD-A-AKS-0049', 'Memory Card 32GB', 3, 84000, 252000, 81000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00933', '2026-11-03 20:16:40+07:00', 'Umum', 'Admin', 6615000, 0, 0, 6615000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100932', '', '', '', 518000, NULL, '2026-11-03 20:16:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00933', 'PRD-A-KEL-0013', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00933', 'PRD-A-AKS-0053', 'Memory Card 16GB', 2, 41000, 82000, 28000, 0, 26000, 'pcs'),
  ('TRX-A00933', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 1, 33000, 33000, 27000, 0, 6000, 'pcs'),
  ('TRX-A00933', 'PRD-A-KEL-0052', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00933', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 3, 2160000, 6480000, 2000000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00005', '2026-11-03 20:12:10+07:00', 'Maya Putri 3', 'Admin', 545000, 0, 0, 545000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100004', '', '', '', 98000, NULL, '2026-11-03 20:12:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00005', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 1, 380000, 380000, 300000, 0, 80000, 'pcs'),
  ('TRX-A00005', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 3, 55000, 165000, 49000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01375', '2026-11-03 20:04:46+07:00', 'Umum', 'Admin', 15321000, 0, 15321000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101374', '', '', '', 1625000, NULL, '2026-11-03 20:04:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01375', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 2, 2190000, 4380000, 2000000, 0, 380000, 'pcs'),
  ('TRX-A01375', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 2, 2730000, 5460000, 2500000, 0, 460000, 'pcs'),
  ('TRX-A01375', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 2, 1750000, 3500000, 1500000, 0, 500000, 'pcs'),
  ('TRX-A01375', 'PRD-A-AKS-0184', 'Kabel Charger 2m', 1, 45000, 45000, 32000, 0, 13000, 'pcs'),
  ('TRX-A01375', 'PRD-A-KEL-0111', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01375', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 1, 1850000, 1850000, 1600000, 0, 250000, 'pcs'),
  ('TRX-A01375', 'PRD-A-AKS-0054', 'Batre Samsung J1', 2, 40000, 80000, 30000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01741', '2026-11-03 20:03:26+07:00', 'Umum', 'Admin', 299000, 0, 299000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101740', '', '', '', 90000, NULL, '2026-11-03 20:03:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01741', 'PRD-A-KEL-0090', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01741', 'PRD-A-AKS-0054', 'Batre Samsung J1', 2, 40000, 80000, 30000, 0, 20000, 'pcs'),
  ('TRX-A01741', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 3, 43000, 129000, 35000, 0, 24000, 'pcs'),
  ('TRX-A01741', 'PRD-A-KEL-0104', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01353', '2026-11-03 19:57:36+07:00', 'Siti Aisyah 2', 'Admin', 7287000, 0, 7287000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101352', '', '', '', 949000, NULL, '2026-11-03 19:57:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01353', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 2, 1730000, 3460000, 1600000, 0, 260000, 'pcs'),
  ('TRX-A01353', 'PRD-A-AKS-0174', 'Case Redmi 9A', 3, 41000, 123000, 26000, 0, 45000, 'pcs'),
  ('TRX-A01353', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 1, 15000, 15000, 8000, 0, 7000, 'pcs'),
  ('TRX-A01353', 'PRD-A-AKS-0071', 'Case Oppo A57', 1, 31000, 31000, 19000, 0, 12000, 'pcs'),
  ('TRX-A01353', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A01353', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 2, 750000, 1500000, 500000, 0, 500000, 'pcs'),
  ('TRX-A01353', 'PRD-A-AKS-0138', 'Tempered Glass Oppo', 3, 16000, 48000, 11000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01499', '2026-11-03 19:49:29+07:00', 'Hendra Gunawan 3', 'Admin', 15831000, 0, 0, 15831000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101498', '', '', '', 1437000, NULL, '2026-11-03 19:49:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01499', 'PRD-A-AKS-0104', 'Memory Card 64GB', 2, 43000, 86000, 40000, 0, 6000, 'pcs'),
  ('TRX-A01499', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 3, 1600000, 4800000, 1500000, 0, 300000, 'pcs'),
  ('TRX-A01499', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 2, 1420000, 2840000, 1200000, 0, 440000, 'pcs'),
  ('TRX-A01499', 'PRD-A-AKS-0213', 'Memory Card 16GB', 2, 72000, 144000, 65000, 0, 14000, 'pcs'),
  ('TRX-A01499', 'PRD-A-AKS-0174', 'Case Redmi 9A', 3, 41000, 123000, 26000, 0, 45000, 'pcs'),
  ('TRX-A01499', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 1, 2230000, 2230000, 2000000, 0, 230000, 'pcs'),
  ('TRX-A01499', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A01499', 'PRD-A-KEL-0078', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01354', '2026-11-03 19:49:22+07:00', 'Umum', 'Admin', 10627000, 0, 5313500, 5313500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101353', '', '', '', 765000, NULL, '2026-11-03 19:49:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01354', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 3, 51000, 153000, 47000, 0, 12000, 'pcs'),
  ('TRX-A01354', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 1, 72000, 72000, 59000, 0, 13000, 'pcs'),
  ('TRX-A01354', 'PRD-A-AKS-0175', 'Kartu Perdana Tri', 1, 28000, 28000, 18000, 0, 10000, 'pcs'),
  ('TRX-A01354', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 3, 1330000, 3990000, 1200000, 0, 390000, 'pcs'),
  ('TRX-A01354', 'PRD-A-KEL-0158', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01354', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A01354', 'PRD-A-KEL-0180', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01767', '2026-11-03 19:40:34+07:00', 'Fitri Rahmawati 4', 'Admin', 3612000, 0, 3612000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101766', '', '', '', 470500, NULL, '2026-11-03 19:40:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01767', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 1, 1990000, 1990000, 1800000, 0, 190000, 'pcs'),
  ('TRX-A01767', 'PRD-A-AKS-0224', 'Case Samsung A03', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A01767', 'PRD-A-KEL-0132', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01767', 'PRD-A-KEL-0122', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01767', 'PRD-A-KEL-0104', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01767', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 1, 1410000, 1410000, 1200000, 0, 210000, 'pcs'),
  ('TRX-A01767', 'PRD-A-AKS-0174', 'Case Redmi 9A', 3, 41000, 123000, 26000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01494', '2026-11-03 19:32:24+07:00', 'Umum', 'Admin', 14170000, 0, 14170000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101493', '', '', '', 1399000, NULL, '2026-11-03 19:32:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01494', 'PRD-A-KEL-0171', 'Teh celup', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01494', 'PRD-A-KEL-0194', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01494', 'PRD-A-KEL-0033', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01494', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A01494', 'PRD-A-HP-0229', 'HP REDMI Y55S 3/32 33051', 3, 1520000, 4560000, 1400000, 0, 360000, 'pcs'),
  ('TRX-A01494', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 2, 1900000, 3800000, 1700000, 0, 400000, 'pcs'),
  ('TRX-A01494', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 3, 1570000, 4710000, 1500000, 0, 210000, 'pcs'),
  ('TRX-A01494', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 2, 500000, 1000000, 300000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01168', '2026-11-03 19:04:33+07:00', 'Siti Aisyah 3', 'Admin', 18948000, 0, 18948000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101167', '', '', '', 1311000, NULL, '2026-11-03 19:04:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01168', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 3, 2730000, 8190000, 2500000, 0, 690000, 'pcs'),
  ('TRX-A01168', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 3, 25000, 75000, 17000, 0, 24000, 'pcs'),
  ('TRX-A01168', 'PRD-A-HP-0271', 'HP REDMI A15 2/32 43955', 1, 2480000, 2480000, 2300000, 0, 180000, 'pcs'),
  ('TRX-A01168', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A01168', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 1, 1550000, 1550000, 1400000, 0, 150000, 'pcs'),
  ('TRX-A01168', 'PRD-A-KEL-0053', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01168', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 1, 21000, 21000, 9000, 0, 12000, 'pcs'),
  ('TRX-A01168', 'PRD-A-AKS-0193', 'Case Oppo A57', 3, 25000, 75000, 21000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01799', '2026-11-03 19:02:23+07:00', 'Umum', 'Admin', 9295000, 0, 0, 9295000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101798', '', '', '', 377000, NULL, '2026-11-03 19:02:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01799', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 1, 43000, 43000, 35000, 0, 8000, 'pcs'),
  ('TRX-A01799', 'PRD-A-KEL-0018', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01799', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A01799', 'PRD-A-KEL-0057', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01799', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 2, 2150000, 4300000, 2100000, 0, 100000, 'pcs'),
  ('TRX-A01799', 'PRD-A-AKS-0222', 'Case Redmi 9A', 2, 46000, 92000, 35000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00566', '2026-11-03 18:44:19+07:00', 'Umum', 'Admin', 15509000, 0, 15509000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100565', '', '', '', 951500, NULL, '2026-11-03 18:44:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00566', 'PRD-A-KEL-0081', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A00566', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs'),
  ('TRX-A00566', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 1, 42000, 42000, 30000, 0, 12000, 'pcs'),
  ('TRX-A00566', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 3, 32000, 96000, 24000, 0, 24000, 'pcs'),
  ('TRX-A00566', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 1, 25000, 25000, 17000, 0, 8000, 'pcs'),
  ('TRX-A00566', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 3, 2300000, 6900000, 2200000, 0, 300000, 'pcs'),
  ('TRX-A00566', 'PRD-A-KEL-0085', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01911', '2026-11-03 18:39:52+07:00', 'Fajar Nugroho 5', 'Admin', 5704000, 0, 5704000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101910', '', '', '', 432000, NULL, '2026-11-03 18:39:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01911', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A01911', 'PRD-A-AKS-0139', 'Case Samsung A03', 2, 34000, 68000, 21000, 0, 26000, 'pcs'),
  ('TRX-A01911', 'PRD-A-AKS-0102', 'Case Vivo Y20', 1, 36000, 36000, 30000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00176', '2026-11-03 18:37:15+07:00', 'Dewi Lestari 3', 'Admin', 5227000, 0, 2613500, 2613500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100175', '', '', '', 801000, NULL, '2026-11-03 18:37:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00176', 'PRD-A-KEL-0163', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A00176', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 3, 910000, 2730000, 700000, 0, 630000, 'pcs'),
  ('TRX-A00176', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 27000, 0, 24000, 'pcs'),
  ('TRX-A00176', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 3, 51000, 153000, 47000, 0, 12000, 'pcs'),
  ('TRX-A00176', 'PRD-A-KEL-0061', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00176', 'PRD-A-AKS-0099', 'Tempered Glass Xiaomi', 3, 27000, 81000, 16000, 0, 33000, 'pcs'),
  ('TRX-A00176', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 2, 27000, 54000, 23000, 0, 8000, 'pcs'),
  ('TRX-A00176', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00003', '2026-11-03 18:03:31+07:00', 'Umum', 'Admin', 104000, 0, 104000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100002', '', '', '', 30000, NULL, '2026-11-03 18:03:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00003', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00003', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 2, 25000, 50000, 13000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01019', '2026-11-03 18:03:31+07:00', 'Umum', 'Admin', 8550000, 0, 8550000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101018', '', '', '', 150000, NULL, '2026-11-03 18:03:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01019', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 3, 2850000, 8550000, 2800000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00592', '2026-11-03 17:56:11+07:00', 'Lilis Suryani 4', 'Admin', 3012000, 0, 3012000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100591', '', '', '', 731500, NULL, '2026-11-03 17:56:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00592', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 1, 1150000, 1150000, 900000, 0, 250000, 'pcs'),
  ('TRX-A00592', 'PRD-A-KEL-0170', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A00592', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00592', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 3, 550000, 1650000, 400000, 0, 450000, 'pcs'),
  ('TRX-A00592', 'PRD-A-KEL-0050', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00592', 'PRD-A-AKS-0234', 'Case Samsung A03', 1, 24000, 24000, 16000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01873', '2026-11-03 17:47:16+07:00', 'Sri Wahyuni 2', 'Admin', 950000, 0, 950000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101872', '', '', '', 50000, NULL, '2026-11-03 17:47:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01873', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 1, 950000, 950000, 900000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00092', '2026-11-03 17:39:02+07:00', 'Agus Wijaya 3', 'Admin', 56000, 0, 56000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100091', '', '', '', 24000, NULL, '2026-11-03 17:39:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00092', 'PRD-A-AKS-0242', 'Handsfree Samsung', 2, 28000, 56000, 16000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00078', '2026-11-03 17:29:17+07:00', 'Umum', 'Admin', 7118000, 0, 7118000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100077', '', '', '', 1135000, NULL, '2026-11-03 17:29:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00078', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 2, 1260000, 2520000, 1100000, 0, 320000, 'pcs'),
  ('TRX-A00078', 'PRD-A-KEL-0175', 'Snack wafer', 2, 10000, 20000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00078', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 3, 1060000, 3180000, 900000, 0, 480000, 'pcs'),
  ('TRX-A00078', 'PRD-A-AKS-0045', 'Memory Card 16GB', 1, 58000, 58000, 53000, 0, 5000, 'pcs'),
  ('TRX-A00078', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 2, 660000, 1320000, 500000, 0, 320000, 'pcs'),
  ('TRX-A00078', 'PRD-A-KEL-0032', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01332', '2026-11-03 17:16:05+07:00', 'Lilis Suryani 5', 'Admin', 4164000, 0, 4164000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101331', '', '', '', 828000, NULL, '2026-11-03 17:16:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01332', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 3, 700000, 2100000, 500000, 0, 600000, 'pcs'),
  ('TRX-A01332', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 2, 27000, 54000, 18000, 0, 18000, 'pcs'),
  ('TRX-A01332', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 1, 2010000, 2010000, 1800000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01584', '2026-11-03 17:11:38+07:00', 'Intan Permata 4', 'Admin', 6225000, 0, 6225000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101583', '', '', '', 213000, NULL, '2026-11-03 17:11:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01584', 'PRD-A-KEL-0058', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01584', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 3, 2070000, 6210000, 2000000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01104', '2026-11-03 17:03:18+07:00', 'Fitri Rahmawati 4', 'Admin', 4766000, 0, 4766000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101103', '', '', '', 828000, NULL, '2026-11-03 17:03:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01104', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 2, 1110000, 2220000, 900000, 0, 420000, 'pcs'),
  ('TRX-A01104', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 2, 28000, 56000, 19000, 0, 18000, 'pcs'),
  ('TRX-A01104', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A01104', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 2, 1040000, 2080000, 900000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00686', '2026-11-03 16:51:38+07:00', 'Ayu Lestari', 'Admin', 66000, 0, 0, 66000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100685', '', '', '', 22000, NULL, '2026-11-03 16:51:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00686', 'PRD-A-KEL-0168', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00686', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01000', '2026-11-03 16:45:28+07:00', 'Dewi Lestari 5', 'Admin', 4834000, 0, 4834000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100999', '', '', '', 1165500, NULL, '2026-11-03 16:45:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01000', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 2, 690000, 1380000, 500000, 0, 380000, 'pcs'),
  ('TRX-A01000', 'PRD-A-KEL-0045', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A01000', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01000', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs'),
  ('TRX-A01000', 'PRD-A-AKS-0199', 'Handsfree Xiaomi', 3, 38000, 114000, 29000, 0, 27000, 'pcs'),
  ('TRX-A01000', 'PRD-A-KEL-0154', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00393', '2026-11-03 16:40:52+07:00', 'Umum', 'Admin', 81000, 0, 0, 81000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100392', '', '', '', 24000, NULL, '2026-11-03 16:40:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00393', 'PRD-A-KEL-0184', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00393', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 2, 18000, 36000, 11000, 0, 14000, 'pcs'),
  ('TRX-A00393', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 1, 21000, 21000, 17000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01766', '2026-11-03 16:36:41+07:00', 'Hendra Gunawan 4', 'Admin', 11041000, 0, 11041000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101765', '', '', '', 1176000, NULL, '2026-11-03 16:36:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01766', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 2, 1590000, 3180000, 1500000, 0, 180000, 'pcs'),
  ('TRX-A01766', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 3, 620000, 1860000, 500000, 0, 360000, 'pcs'),
  ('TRX-A01766', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 3, 57000, 171000, 45000, 0, 36000, 'pcs'),
  ('TRX-A01766', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 3, 1040000, 3120000, 900000, 0, 420000, 'pcs'),
  ('TRX-A01766', 'PRD-A-KEL-0158', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01766', 'PRD-A-KEL-0165', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01766', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 1, 2560000, 2560000, 2400000, 0, 160000, 'pcs'),
  ('TRX-A01766', 'PRD-A-AKS-0046', 'Case Samsung A03', 3, 38000, 114000, 35000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00627', '2026-11-03 16:26:01+07:00', 'Umum', 'Admin', 3807500, 0, 3807500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100626', '', '', '', 681000, NULL, '2026-11-03 16:26:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00627', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00627', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00627', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 3, 1220000, 3660000, 1000000, 0, 660000, 'pcs'),
  ('TRX-A00627', 'PRD-A-KEL-0013', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00627', 'PRD-A-KEL-0186', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01404', '2026-11-03 16:22:27+07:00', 'Hendra Gunawan 2', 'Admin', 5603000, 0, 5603000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101403', '', '', '', 677500, NULL, '2026-11-03 16:22:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01404', 'PRD-A-KEL-0063', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01404', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A01404', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 2, 20000, 40000, 7000, 0, 26000, 'pcs'),
  ('TRX-A01404', 'PRD-A-KEL-0050', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01915', '2026-11-03 16:18:10+07:00', 'Fajar Nugroho 2', 'Admin', 2830000, 0, 2830000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101914', '', '', '', 424000, NULL, '2026-11-03 16:18:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01915', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A01915', 'PRD-A-KEL-0198', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01243', '2026-11-03 16:08:46+07:00', 'Yusuf Maulana 2', 'Admin', 1874000, 0, 1874000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101242', '', '', '', 558000, NULL, '2026-11-03 16:08:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01243', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 3, 430000, 1290000, 300000, 0, 390000, 'pcs'),
  ('TRX-A01243', 'PRD-A-HP-0143', 'HP NOKIA Y53 4/128 49361', 1, 450000, 450000, 300000, 0, 150000, 'pcs'),
  ('TRX-A01243', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 3, 38000, 114000, 33000, 0, 15000, 'pcs'),
  ('TRX-A01243', 'PRD-A-KEL-0085', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00993', '2026-11-03 16:00:39+07:00', 'Yusuf Maulana 2', 'Admin', 5958000, 0, 5958000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100992', '', '', '', 442000, NULL, '2026-11-03 16:00:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00993', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 2, 69000, 138000, 58000, 0, 22000, 'pcs'),
  ('TRX-A00993', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01673', '2026-11-03 15:45:58+07:00', 'Rudi Hartono 2', 'Admin', 2786000, 0, 2786000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101672', '', '', '', 123500, NULL, '2026-11-03 15:45:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01673', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 2, 41000, 82000, 30000, 0, 22000, 'pcs'),
  ('TRX-A01673', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 1, 2700000, 2700000, 2600000, 0, 100000, 'pcs'),
  ('TRX-A01673', 'PRD-A-KEL-0044', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00238', '2026-11-03 15:44:41+07:00', 'Maya Putri 5', 'Admin', 22051000, 0, 22051000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100237', '', '', '', 2209000, NULL, '2026-11-03 15:44:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00238', 'PRD-A-AKS-0149', 'Case Samsung A03', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00238', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 3, 2160000, 6480000, 2000000, 0, 480000, 'pcs'),
  ('TRX-A00238', 'PRD-A-HP-0536', 'HP ITEL HOT30i 8/256 76951', 2, 1080000, 2160000, 1000000, 0, 160000, 'pcs'),
  ('TRX-A00238', 'PRD-A-HP-0143', 'HP NOKIA Y53 4/128 49361', 3, 450000, 1350000, 300000, 0, 450000, 'pcs'),
  ('TRX-A00238', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 2, 1610000, 3220000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A00238', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 3, 2930000, 8790000, 2700000, 0, 690000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00872', '2026-11-03 15:31:36+07:00', 'Umum', 'Admin', 2970000, 0, 2970000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100871', '', '', '', 170000, NULL, '2026-11-03 15:31:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00872', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00182', '2026-11-03 15:30:56+07:00', 'Umum', 'Admin', 16200000, 0, 16200000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100181', '', '', '', 1530000, NULL, '2026-11-03 15:30:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00182', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 3, 740000, 2220000, 500000, 0, 720000, 'pcs'),
  ('TRX-A00182', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 2, 2110000, 4220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A00182', 'PRD-A-KEL-0068', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00182', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00182', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 1, 1100000, 1100000, 900000, 0, 200000, 'pcs'),
  ('TRX-A00182', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 3, 1990000, 5970000, 1900000, 0, 270000, 'pcs'),
  ('TRX-A00182', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 1, 2610000, 2610000, 2500000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00057', '2026-11-03 15:20:17+07:00', 'Umum', 'Admin', 7580000, 0, 3790000, 3790000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100056', '', '', '', 536000, NULL, '2026-11-03 15:20:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00057', 'PRD-A-KEL-0145', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00057', 'PRD-A-AKS-0183', 'Kabel Charger 2m', 3, 14000, 42000, 10000, 0, 12000, 'pcs'),
  ('TRX-A00057', 'PRD-A-AKS-0115', 'Tempered Glass Samsung', 2, 20000, 40000, 9000, 0, 22000, 'pcs'),
  ('TRX-A00057', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 1, 2370000, 2370000, 2300000, 0, 70000, 'pcs'),
  ('TRX-A00057', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 2, 2500000, 5000000, 2300000, 0, 400000, 'pcs'),
  ('TRX-A00057', 'PRD-A-AKS-0199', 'Handsfree Xiaomi', 3, 38000, 114000, 29000, 0, 27000, 'pcs'),
  ('TRX-A00057', 'PRD-A-KEL-0031', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01496', '2026-11-03 15:15:29+07:00', 'Yusuf Maulana', 'Admin', 116000, 0, 58000, 58000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101495', '', '', '', 32000, NULL, '2026-11-03 15:15:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01496', 'PRD-A-KEL-0121', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01496', 'PRD-A-AKS-0191', 'Batre Samsung J1', 2, 54000, 108000, 39000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01337', '2026-11-03 14:51:06+07:00', 'Budi Santoso 4', 'Admin', 186000, 0, 186000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101336', '', '', '', 97000, NULL, '2026-11-03 14:51:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01337', 'PRD-A-AKS-0197', 'Case Vivo Y20', 3, 24000, 72000, 11000, 0, 39000, 'pcs'),
  ('TRX-A01337', 'PRD-A-AKS-0169', 'Handsfree Oppo', 2, 29000, 58000, 14000, 0, 30000, 'pcs'),
  ('TRX-A01337', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00046', '2026-11-03 14:45:05+07:00', 'Ayu Lestari 4', 'Admin', 6717000, 0, 6717000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100045', '', '', '', 697000, NULL, '2026-11-03 14:45:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00046', 'PRD-A-KEL-0139', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A00046', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 3, 2230000, 6690000, 2000000, 0, 690000, 'pcs'),
  ('TRX-A00046', 'PRD-A-KEL-0163', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01183', '2026-11-03 14:35:33+07:00', 'Umum', 'Admin', 105000, 0, 105000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101182', '', '', '', 45000, NULL, '2026-11-03 14:35:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01183', 'PRD-A-KEL-0120', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01183', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 3, 25000, 75000, 13000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00100', '2026-11-03 14:34:43+07:00', 'Nur Halimah 5', 'Admin', 14873000, 0, 14873000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100099', '', '', '', 1740000, NULL, '2026-11-03 14:34:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00100', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 3, 29000, 87000, 25000, 0, 12000, 'pcs'),
  ('TRX-A00100', 'PRD-A-KEL-0176', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00100', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 2, 1090000, 2180000, 900000, 0, 380000, 'pcs'),
  ('TRX-A00100', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs'),
  ('TRX-A00100', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 3, 2230000, 6690000, 2000000, 0, 690000, 'pcs'),
  ('TRX-A00100', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 2, 780000, 1560000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00100', 'PRD-A-KEL-0057', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01653', '2026-11-03 14:29:54+07:00', 'Umum', 'Admin', 94000, 0, 47000, 47000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101652', '', '', '', 15000, NULL, '2026-11-03 14:29:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01653', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 3, 28000, 84000, 24000, 0, 12000, 'pcs'),
  ('TRX-A01653', 'PRD-A-KEL-0077', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01967', '2026-11-03 14:24:28+07:00', 'Umum', 'Admin', 9897000, 0, 4948500, 4948500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101966', '', '', '', 1357000, NULL, '2026-11-03 14:24:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01967', 'PRD-A-KEL-0052', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01967', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 2, 740000, 1480000, 500000, 0, 480000, 'pcs'),
  ('TRX-A01967', 'PRD-A-KEL-0046', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01967', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 3, 1370000, 4110000, 1200000, 0, 510000, 'pcs'),
  ('TRX-A01967', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 1, 2140000, 2140000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A01967', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A01967', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 1, 33000, 33000, 22000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00534', '2026-11-03 14:19:36+07:00', 'Umum', 'Admin', 8320000, 0, 8320000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100533', '', '', '', 620000, NULL, '2026-11-03 14:19:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00534', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs'),
  ('TRX-A00534', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 3, 1150000, 3450000, 1100000, 0, 150000, 'pcs'),
  ('TRX-A00534', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 1, 2290000, 2290000, 2200000, 0, 90000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01687', '2026-11-03 14:02:44+07:00', 'Yusuf Maulana 4', 'Admin', 11799000, 0, 11799000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101686', '', '', '', 1926000, NULL, '2026-11-03 14:02:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01687', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 2, 1050000, 2100000, 800000, 0, 500000, 'pcs'),
  ('TRX-A01687', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 2, 2290000, 4580000, 2200000, 0, 180000, 'pcs'),
  ('TRX-A01687', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 1, 46000, 46000, 33000, 0, 13000, 'pcs'),
  ('TRX-A01687', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A01687', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 3, 500000, 1500000, 300000, 0, 600000, 'pcs'),
  ('TRX-A01687', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 3, 15000, 45000, 10000, 0, 15000, 'pcs'),
  ('TRX-A01687', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01687', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 3, 1090000, 3270000, 900000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00039', '2026-11-03 14:00:15+07:00', 'Umum', 'Admin', 10115000, 0, 0, 10115000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100038', '', '', '', 1217000, NULL, '2026-11-03 14:00:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00039', 'PRD-A-AKS-0045', 'Memory Card 16GB', 3, 58000, 174000, 53000, 0, 15000, 'pcs'),
  ('TRX-A00039', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 3, 27000, 81000, 13000, 0, 42000, 'pcs'),
  ('TRX-A00039', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs'),
  ('TRX-A00039', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 2, 1750000, 3500000, 1500000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01194', '2026-11-03 13:44:33+07:00', 'Intan Permata', 'Admin', 19996000, 0, 19996000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101193', '', '', '', 1824000, NULL, '2026-11-03 13:44:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01194', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 2, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A01194', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A01194', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs'),
  ('TRX-A01194', 'PRD-A-KEL-0120', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01194', 'PRD-A-HP-0005', 'HP VIVO Y53 8/256 91381', 3, 2720000, 8160000, 2500000, 0, 660000, 'pcs'),
  ('TRX-A01194', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 1, 2590000, 2590000, 2500000, 0, 90000, 'pcs'),
  ('TRX-A01194', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A01194', 'PRD-A-KEL-0144', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00805', '2026-11-03 13:38:16+07:00', 'Umum', 'Admin', 58000, 0, 58000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100804', '', '', '', 28000, NULL, '2026-11-03 13:38:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00805', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 2, 29000, 58000, 15000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01080', '2026-11-03 13:36:51+07:00', 'Dewi Lestari 4', 'Admin', 14474000, 0, 14474000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101079', '', '', '', 948000, NULL, '2026-11-03 13:36:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01080', 'PRD-A-KEL-0089', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01080', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 3, 2090000, 6270000, 1900000, 0, 570000, 'pcs'),
  ('TRX-A01080', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A01080', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 3, 2720000, 8160000, 2600000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01031', '2026-11-03 13:34:19+07:00', 'Lilis Suryani 3', 'Admin', 10173000, 0, 10173000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101030', '', '', '', 982000, NULL, '2026-11-03 13:34:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01031', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 1, 75000, 75000, 50000, 0, 25000, 'pcs'),
  ('TRX-A01031', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A01031', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A01031', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 3, 33000, 99000, 27000, 0, 18000, 'pcs'),
  ('TRX-A01031', 'PRD-A-HP-0005', 'HP VIVO Y53 8/256 91381', 2, 2720000, 5440000, 2500000, 0, 440000, 'pcs'),
  ('TRX-A01031', 'PRD-A-AKS-0223', 'Memory Card 32GB', 3, 51000, 153000, 48000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01274', '2026-11-03 13:29:54+07:00', 'Umum', 'Admin', 25000, 0, 25000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101273', '', '', '', 7000, NULL, '2026-11-03 13:29:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01274', 'PRD-A-KEL-0137', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01274', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 1, 18000, 18000, 13000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00365', '2026-11-03 13:22:12+07:00', 'Umum', 'Admin', 6515000, 0, 6515000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100364', '', '', '', 733000, NULL, '2026-11-03 13:22:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00365', 'PRD-A-AKS-0084', 'Memory Card 64GB', 1, 95000, 95000, 82000, 0, 13000, 'pcs'),
  ('TRX-A00365', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00926', '2026-11-03 13:21:17+07:00', 'Dewi Lestari 3', 'Admin', 18630000, 0, 18630000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100925', '', '', '', 1630000, NULL, '2026-11-03 13:21:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00926', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A00926', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00926', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 3, 1650000, 4950000, 1400000, 0, 750000, 'pcs'),
  ('TRX-A00926', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 1, 540000, 540000, 300000, 0, 240000, 'pcs'),
  ('TRX-A00926', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 3, 2300000, 6900000, 2200000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00443', '2026-11-03 13:19:47+07:00', 'Fajar Nugroho 2', 'Admin', 13512000, 0, 13512000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100442', '', '', '', 1151500, NULL, '2026-11-03 13:19:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00443', 'PRD-A-KEL-0090', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00443', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 1, 15000, 15000, 8000, 0, 7000, 'pcs'),
  ('TRX-A00443', 'PRD-A-KEL-0040', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00443', 'PRD-A-HP-0406', 'HP REDMI Y55S 4/128 92726', 3, 2760000, 8280000, 2600000, 0, 480000, 'pcs'),
  ('TRX-A00443', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 3, 1700000, 5100000, 1500000, 0, 600000, 'pcs'),
  ('TRX-A00443', 'PRD-A-KEL-0094', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00717', '2026-11-03 13:16:49+07:00', 'Yusuf Maulana 3', 'Admin', 1242000, 0, 621000, 621000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100716', '', '', '', 334500, NULL, '2026-11-03 13:16:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00717', 'PRD-A-KEL-0128', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00717', 'PRD-A-HP-0175', 'HP REALME S23 4/64 80825', 3, 410000, 1230000, 300000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01278', '2026-11-03 13:09:15+07:00', 'Budi Santoso 4', 'Admin', 4241000, 0, 4241000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101277', '', '', '', 310000, NULL, '2026-11-03 13:09:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01278', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A01278', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 3, 41000, 123000, 37000, 0, 12000, 'pcs'),
  ('TRX-A01278', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 1, 30000, 30000, 17000, 0, 13000, 'pcs'),
  ('TRX-A01278', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 2, 35000, 70000, 21000, 0, 28000, 'pcs'),
  ('TRX-A01278', 'PRD-A-AKS-0226', 'Memory Card 32GB', 2, 85000, 170000, 78000, 0, 14000, 'pcs'),
  ('TRX-A01278', 'PRD-A-KEL-0043', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00757', '2026-11-03 13:04:34+07:00', 'Umum', 'Admin', 1200000, 0, 1200000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100756', '', '', '', 400000, NULL, '2026-11-03 13:04:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00757', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 2, 600000, 1200000, 400000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01463', '2026-11-03 12:57:33+07:00', 'Fajar Nugroho 5', 'Admin', 46000, 0, 46000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101462', '', '', '', 11000, NULL, '2026-11-03 12:57:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01463', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 1, 46000, 46000, 35000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01532', '2026-11-03 12:46:07+07:00', 'Umum', 'Admin', 6365000, 0, 6365000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101531', '', '', '', 615000, NULL, '2026-11-03 12:46:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01532', 'PRD-A-AKS-0163', 'Kartu Perdana XL', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A01532', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 2, 2000000, 4000000, 1900000, 0, 200000, 'pcs'),
  ('TRX-A01532', 'PRD-A-KEL-0123', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01532', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 1, 1150000, 1150000, 900000, 0, 250000, 'pcs'),
  ('TRX-A01532', 'PRD-A-HP-0423', 'HP INFINIX Y16 2/16 64863', 1, 1140000, 1140000, 1000000, 0, 140000, 'pcs'),
  ('TRX-A01532', 'PRD-A-KEL-0156', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01005', '2026-11-03 12:31:46+07:00', 'Umum', 'Admin', 104000, 0, 104000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101004', '', '', '', 46000, NULL, '2026-11-03 12:31:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01005', 'PRD-A-KEL-0097', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01005', 'PRD-A-KEL-0125', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01993', '2026-11-03 12:22:00+07:00', 'Budi Santoso 2', 'Admin', 5637000, 0, 5637000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101992', '', '', '', 469000, NULL, '2026-11-03 12:22:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01993', 'PRD-A-KEL-0130', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01993', 'PRD-A-KEL-0007', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01993', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs'),
  ('TRX-A01993', 'PRD-A-KEL-0033', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01993', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01217', '2026-11-03 12:20:37+07:00', 'Intan Permata 5', 'Admin', 5740000, 0, 5740000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101216', '', '', '', 540000, NULL, '2026-11-03 12:20:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01217', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01217', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 2, 690000, 1380000, 500000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00683', '2026-11-03 12:16:27+07:00', 'Umum', 'Admin', 24008000, 0, 12004000, 12004000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100682', '', '', '', 1570000, NULL, '2026-11-03 12:16:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00683', 'PRD-A-HP-0449', 'HP REALME HOT30i 2/32 56128', 3, 570000, 1710000, 500000, 0, 210000, 'pcs'),
  ('TRX-A00683', 'PRD-A-HP-0272', 'HP ITEL 6A 4/128 52530', 3, 2720000, 8160000, 2500000, 0, 660000, 'pcs'),
  ('TRX-A00683', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 3, 2050000, 6150000, 2000000, 0, 150000, 'pcs'),
  ('TRX-A00683', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 3, 15000, 45000, 8000, 0, 21000, 'pcs'),
  ('TRX-A00683', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00683', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A00683', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 2, 1870000, 3740000, 1800000, 0, 140000, 'pcs'),
  ('TRX-A00683', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01527', '2026-11-03 12:04:29+07:00', 'Fajar Nugroho 5', 'Admin', 2560000, 0, 2560000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101526', '', '', '', 160000, NULL, '2026-11-03 12:04:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01527', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 1, 600000, 600000, 500000, 0, 100000, 'pcs'),
  ('TRX-A01527', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 1, 1960000, 1960000, 1900000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01182', '2026-11-03 12:04:27+07:00', 'Agus Wijaya 4', 'Admin', 6210000, 0, 3105000, 3105000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101181', '', '', '', 159000, NULL, '2026-11-03 12:04:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01182', 'PRD-A-KEL-0021', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01182', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 3, 2050000, 6150000, 2000000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01858', '2026-11-03 12:02:57+07:00', 'Lilis Suryani', 'Admin', 5400000, 0, 5400000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101857', '', '', '', 400000, NULL, '2026-11-03 12:02:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01858', 'PRD-A-HP-0351', 'HP REDMI V5S 3/32 54249', 2, 2700000, 5400000, 2500000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00676', '2026-11-03 11:51:45+07:00', 'Dedi Supriadi 3', 'Admin', 18000, 0, 18000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100675', '', '', '', 6000, NULL, '2026-11-03 11:51:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00676', 'PRD-A-KEL-0189', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01720', '2026-11-03 11:48:10+07:00', 'Umum', 'Admin', 5060000, 0, 5060000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101719', '', '', '', 460000, NULL, '2026-11-03 11:48:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01720', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 2, 1600000, 3200000, 1500000, 0, 200000, 'pcs'),
  ('TRX-A01720', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 2, 930000, 1860000, 800000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00464', '2026-11-03 11:13:35+07:00', 'Siti Aisyah 4', 'Admin', 12090000, 0, 6045000, 6045000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100463', '', '', '', 1063500, NULL, '2026-11-03 11:13:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00464', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A00464', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 2, 64000, 128000, 51000, 0, 26000, 'pcs'),
  ('TRX-A00464', 'PRD-A-KEL-0047', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00464', 'PRD-A-KEL-0099', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00464', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 1, 1260000, 1260000, 1100000, 0, 160000, 'pcs'),
  ('TRX-A00464', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 2, 2950000, 5900000, 2800000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00402', '2026-11-03 11:10:44+07:00', 'Umum', 'Admin', 204000, 0, 102000, 102000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100401', '', '', '', 28000, NULL, '2026-11-03 11:10:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00402', 'PRD-A-AKS-0179', 'Memory Card 32GB', 2, 102000, 204000, 88000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01520', '2026-11-03 11:07:27+07:00', 'Rina Marlina 4', 'Admin', 113500, 0, 56750, 56750, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101519', '', '', '', 32000, NULL, '2026-11-03 11:07:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01520', 'PRD-A-AKS-0057', 'Case Redmi 9A', 2, 37000, 74000, 26000, 0, 22000, 'pcs'),
  ('TRX-A01520', 'PRD-A-KEL-0137', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A01520', 'PRD-A-KEL-0003', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00959', '2026-11-03 10:56:10+07:00', 'Umum', 'Admin', 5280000, 0, 5280000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100958', '', '', '', 480000, NULL, '2026-11-03 10:56:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00959', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00370', '2026-11-03 10:28:31+07:00', 'Umum', 'Admin', 160000, 0, 80000, 80000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100369', '', '', '', 31000, NULL, '2026-11-03 10:28:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00370', 'PRD-A-AKS-0063', 'Case Samsung A03', 2, 40000, 80000, 35000, 0, 10000, 'pcs'),
  ('TRX-A00370', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 1, 32000, 32000, 24000, 0, 8000, 'pcs'),
  ('TRX-A00370', 'PRD-A-AKS-0224', 'Case Samsung A03', 1, 48000, 48000, 35000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00866', '2026-11-03 10:27:30+07:00', 'Siti Aisyah 3', 'Admin', 5052000, 0, 2526000, 2526000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100865', '', '', '', 399000, NULL, '2026-11-03 10:27:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00866', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 3, 64000, 192000, 51000, 0, 39000, 'pcs'),
  ('TRX-A00866', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 3, 1620000, 4860000, 1500000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01677', '2026-11-03 10:09:26+07:00', 'Umum', 'Admin', 4777000, 0, 4777000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101676', '', '', '', 978000, NULL, '2026-11-03 10:09:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01677', 'PRD-A-HP-0291', 'HP ITEL Y16 3/64 82632', 3, 860000, 2580000, 700000, 0, 480000, 'pcs'),
  ('TRX-A01677', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 2, 1040000, 2080000, 800000, 0, 480000, 'pcs'),
  ('TRX-A01677', 'PRD-A-AKS-0156', 'Handsfree Oppo', 3, 39000, 117000, 33000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01640', '2026-11-03 10:02:13+07:00', 'Umum', 'Admin', 8730000, 0, 8730000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101639', '', '', '', 630000, NULL, '2026-11-03 10:02:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01640', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 3, 2910000, 8730000, 2700000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01854', '2026-11-03 09:59:02+07:00', 'Umum', 'Admin', 4639000, 0, 4639000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101853', '', '', '', 391000, NULL, '2026-11-03 09:59:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01854', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 1, 22000, 22000, 10000, 0, 12000, 'pcs'),
  ('TRX-A01854', 'PRD-A-KEL-0019', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01854', 'PRD-A-HP-0229', 'HP REDMI Y55S 3/32 33051', 3, 1520000, 4560000, 1400000, 0, 360000, 'pcs'),
  ('TRX-A01854', 'PRD-A-KEL-0095', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01854', 'PRD-A-KEL-0182', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01854', 'PRD-A-AKS-0171', 'Tempered Glass Xiaomi', 1, 24000, 24000, 16000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00550', '2026-11-03 09:53:02+07:00', 'Umum', 'Admin', 4298000, 0, 4298000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100549', '', '', '', 190000, NULL, '2026-11-03 09:53:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00550', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A00550', 'PRD-A-KEL-0026', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00550', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A00550', 'PRD-A-KEL-0174', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00550', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01723', '2026-11-03 09:51:12+07:00', 'Umum', 'Admin', 2414000, 0, 2414000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101722', '', '', '', 759000, NULL, '2026-11-03 09:51:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01723', 'PRD-A-HP-0142', 'HP VIVO A57 3/32 10794', 3, 740000, 2220000, 500000, 0, 720000, 'pcs'),
  ('TRX-A01723', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 1, 65000, 65000, 53000, 0, 12000, 'pcs'),
  ('TRX-A01723', 'PRD-A-AKS-0088', 'Case Redmi 9A', 3, 43000, 129000, 34000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01500', '2026-11-03 09:18:34+07:00', 'Rudi Hartono 5', 'Admin', 990000, 0, 0, 990000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101499', '', '', '', 180000, NULL, '2026-11-03 09:18:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01500', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 2, 39000, 78000, 35000, 0, 8000, 'pcs'),
  ('TRX-A01500', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs'),
  ('TRX-A01500', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01327', '2026-11-03 09:16:11+07:00', 'Umum', 'Admin', 2672000, 0, 2672000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101326', '', '', '', 334000, NULL, '2026-11-03 09:16:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01327', 'PRD-A-AKS-0191', 'Batre Samsung J1', 2, 54000, 108000, 39000, 0, 30000, 'pcs'),
  ('TRX-A01327', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01327', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01327', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 1, 2250000, 2250000, 2000000, 0, 250000, 'pcs'),
  ('TRX-A01327', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01327', 'PRD-A-AKS-0030', 'Case Samsung A03', 2, 25000, 50000, 20000, 0, 10000, 'pcs'),
  ('TRX-A01327', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01327', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01513', '2026-11-03 09:08:49+07:00', 'Umum', 'Admin', 10318000, 0, 10318000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101512', '', '', '', 979000, NULL, '2026-11-03 09:08:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01513', 'PRD-A-AKS-0134', 'Case Oppo A57', 1, 35000, 35000, 28000, 0, 7000, 'pcs'),
  ('TRX-A01513', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01513', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 3, 25000, 75000, 15000, 0, 30000, 'pcs'),
  ('TRX-A01513', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs'),
  ('TRX-A01513', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 1, 1770000, 1770000, 1700000, 0, 70000, 'pcs'),
  ('TRX-A01513', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 3, 1850000, 5550000, 1600000, 0, 750000, 'pcs'),
  ('TRX-A01513', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 1, 2810000, 2810000, 2700000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01371', '2026-11-03 09:02:17+07:00', 'Umum', 'Admin', 11095000, 0, 11095000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101370', '', '', '', 1994000, NULL, '2026-11-03 09:02:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01371', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 3, 2550000, 7650000, 2300000, 0, 750000, 'pcs'),
  ('TRX-A01371', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 3, 25000, 75000, 13000, 0, 36000, 'pcs'),
  ('TRX-A01371', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 1, 500000, 500000, 300000, 0, 200000, 'pcs'),
  ('TRX-A01371', 'PRD-A-KEL-0019', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01371', 'PRD-A-HP-0075', 'HP VIVO Y53 2/16 24312', 3, 520000, 1560000, 300000, 0, 660000, 'pcs'),
  ('TRX-A01371', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01371', 'PRD-A-AKS-0138', 'Tempered Glass Oppo', 2, 16000, 32000, 11000, 0, 10000, 'pcs'),
  ('TRX-A01371', 'PRD-A-HP-0175', 'HP REALME S23 4/64 80825', 3, 410000, 1230000, 300000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01381', '2026-11-03 09:00:52+07:00', 'Yusuf Maulana 4', 'Admin', 6000000, 0, 3000000, 3000000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101380', '', '', '', 1000000, NULL, '2026-11-03 09:00:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01381', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 3, 1650000, 4950000, 1400000, 0, 750000, 'pcs'),
  ('TRX-A01381', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 1, 1050000, 1050000, 800000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01691', '2026-11-03 08:40:53+07:00', 'Sri Wahyuni 5', 'Admin', 10635000, 0, 10635000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101690', '', '', '', 1030000, NULL, '2026-11-03 08:40:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01691', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 1, 38000, 38000, 23000, 0, 15000, 'pcs'),
  ('TRX-A01691', 'PRD-A-AKS-0067', 'Case Redmi 9A', 2, 39000, 78000, 30000, 0, 18000, 'pcs'),
  ('TRX-A01691', 'PRD-A-HP-0094', 'HP INFINIX Y20 8/256 25072', 3, 2390000, 7170000, 2300000, 0, 270000, 'pcs'),
  ('TRX-A01691', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01691', 'PRD-A-AKS-0191', 'Batre Samsung J1', 3, 54000, 162000, 39000, 0, 45000, 'pcs'),
  ('TRX-A01691', 'PRD-A-AKS-0150', 'Memory Card 16GB', 2, 55000, 110000, 41000, 0, 28000, 'pcs'),
  ('TRX-A01691', 'PRD-A-KEL-0160', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01691', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 3, 1010000, 3030000, 800000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00792', '2026-11-03 08:18:18+07:00', 'Umum', 'Admin', 16494000, 0, 16494000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100791', '', '', '', 1004000, NULL, '2026-11-03 08:18:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00792', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 3, 72000, 216000, 59000, 0, 39000, 'pcs'),
  ('TRX-A00792', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00792', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 3, 1820000, 5460000, 1700000, 0, 360000, 'pcs'),
  ('TRX-A00792', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 3, 2590000, 7770000, 2500000, 0, 270000, 'pcs'),
  ('TRX-A00792', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A00792', 'PRD-A-AKS-0046', 'Case Samsung A03', 2, 38000, 76000, 35000, 0, 6000, 'pcs'),
  ('TRX-A00792', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00792', 'PRD-A-KEL-0081', 'Pensil', 2, 2000, 4000, 1500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00475', '2026-11-03 08:14:47+07:00', 'Dewi Lestari 2', 'Admin', 9597000, 0, 9597000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100474', '', '', '', 399000, NULL, '2026-11-03 08:14:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00475', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A00475', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 3, 2370000, 7110000, 2300000, 0, 210000, 'pcs'),
  ('TRX-A00475', 'PRD-A-KEL-0150', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00475', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A00475', 'PRD-A-AKS-0154', 'Memory Card 16GB', 3, 101000, 303000, 86000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01259', '2026-11-02 20:56:03+07:00', 'Umum', 'Admin', 7768000, 0, 7768000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101258', '', '', '', 1084000, NULL, '2026-11-02 20:56:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01259', 'PRD-A-AKS-0183', 'Kabel Charger 2m', 1, 14000, 14000, 10000, 0, 4000, 'pcs'),
  ('TRX-A01259', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01259', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 2, 20000, 40000, 14000, 0, 12000, 'pcs'),
  ('TRX-A01259', 'PRD-A-KEL-0141', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01259', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A01259', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 3, 820000, 2460000, 600000, 0, 660000, 'pcs'),
  ('TRX-A01259', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 3, 1730000, 5190000, 1600000, 0, 390000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01234', '2026-11-02 20:44:20+07:00', 'Ayu Lestari 2', 'Admin', 4856000, 0, 4856000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101233', '', '', '', 513000, NULL, '2026-11-02 20:44:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01234', 'PRD-A-AKS-0242', 'Handsfree Samsung', 2, 28000, 56000, 16000, 0, 24000, 'pcs'),
  ('TRX-A01234', 'PRD-A-KEL-0147', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01234', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 1, 1570000, 1570000, 1500000, 0, 70000, 'pcs'),
  ('TRX-A01234', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 2, 1490000, 2980000, 1300000, 0, 380000, 'pcs'),
  ('TRX-A01234', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs'),
  ('TRX-A01234', 'PRD-A-AKS-0082', 'Case Redmi 9A', 1, 26000, 26000, 23000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00685', '2026-11-02 20:35:03+07:00', 'Sri Wahyuni 3', 'Admin', 10259000, 0, 10259000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100684', '', '', '', 859000, NULL, '2026-11-02 20:35:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00685', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 1, 1110000, 1110000, 1000000, 0, 110000, 'pcs'),
  ('TRX-A00685', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 2, 23000, 46000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00685', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 1, 75000, 75000, 50000, 0, 25000, 'pcs'),
  ('TRX-A00685', 'PRD-A-AKS-0116', 'Memory Card 16GB', 2, 88000, 176000, 76000, 0, 24000, 'pcs'),
  ('TRX-A00685', 'PRD-A-AKS-0222', 'Case Redmi 9A', 2, 46000, 92000, 35000, 0, 22000, 'pcs'),
  ('TRX-A00685', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 3, 2920000, 8760000, 2700000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01208', '2026-11-02 20:20:20+07:00', 'Umum', 'Admin', 74000, 0, 74000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101207', '', '', '', 38000, NULL, '2026-11-02 20:20:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01208', 'PRD-A-AKS-0001', 'Case Oppo A57', 3, 22000, 66000, 10000, 0, 36000, 'pcs'),
  ('TRX-A01208', 'PRD-A-KEL-0078', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00214', '2026-11-02 20:14:51+07:00', 'Umum', 'Admin', 1595000, 0, 1595000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100213', '', '', '', 361000, NULL, '2026-11-02 20:14:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00214', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A00214', 'PRD-A-AKS-0226', 'Memory Card 32GB', 3, 85000, 255000, 78000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00394', '2026-11-02 20:03:50+07:00', 'Dewi Lestari', 'Admin', 2336000, 0, 1168000, 1168000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100393', '', '', '', 170000, NULL, '2026-11-02 20:03:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00394', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 2, 1070000, 2140000, 1000000, 0, 140000, 'pcs'),
  ('TRX-A00394', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A00394', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 1, 15000, 15000, 10000, 0, 5000, 'pcs'),
  ('TRX-A00394', 'PRD-A-KEL-0131', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00691', '2026-11-02 19:44:32+07:00', 'Umum', 'Admin', 272000, 0, 272000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100690', '', '', '', 91000, NULL, '2026-11-02 19:44:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00691', 'PRD-A-AKS-0220', 'Tempered Glass Samsung', 1, 23000, 23000, 20000, 0, 3000, 'pcs'),
  ('TRX-A00691', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A00691', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 1, 45000, 45000, 33000, 0, 12000, 'pcs'),
  ('TRX-A00691', 'PRD-A-KEL-0158', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A00691', 'PRD-A-AKS-0197', 'Case Vivo Y20', 3, 24000, 72000, 11000, 0, 39000, 'pcs'),
  ('TRX-A00691', 'PRD-A-KEL-0024', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01978', '2026-11-02 19:41:08+07:00', 'Umum', 'Admin', 1632000, 0, 1632000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101977', '', '', '', 235500, NULL, '2026-11-02 19:41:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01978', 'PRD-A-KEL-0027', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A01978', 'PRD-A-KEL-0073', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01978', 'PRD-A-AKS-0168', 'Memory Card 32GB', 2, 40000, 80000, 32000, 0, 16000, 'pcs'),
  ('TRX-A01978', 'PRD-A-KEL-0114', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01978', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01312', '2026-11-02 19:23:28+07:00', 'Umum', 'Admin', 8884000, 0, 8884000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101311', '', '', '', 994000, NULL, '2026-11-02 19:23:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01312', 'PRD-A-KEL-0111', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01312', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01312', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 3, 1850000, 5550000, 1600000, 0, 750000, 'pcs'),
  ('TRX-A01312', 'PRD-A-AKS-0141', 'Batre Oppo A57', 3, 62000, 186000, 50000, 0, 36000, 'pcs'),
  ('TRX-A01312', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A01312', 'PRD-A-AKS-0239', 'Batre Samsung J1', 2, 43000, 86000, 30000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01462', '2026-11-02 19:17:26+07:00', 'Fitri Rahmawati', 'Admin', 7863000, 0, 7863000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101461', '', '', '', 573000, NULL, '2026-11-02 19:17:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01462', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 3, 1640000, 4920000, 1500000, 0, 420000, 'pcs'),
  ('TRX-A01462', 'PRD-A-KEL-0185', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01462', 'PRD-A-KEL-0161', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01462', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 2, 38000, 76000, 23000, 0, 30000, 'pcs'),
  ('TRX-A01462', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 1, 2810000, 2810000, 2700000, 0, 110000, 'pcs'),
  ('TRX-A01462', 'PRD-A-KEL-0169', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01952', '2026-11-02 19:15:55+07:00', 'Fajar Nugroho 2', 'Admin', 9433000, 0, 9433000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101951', '', '', '', 424500, NULL, '2026-11-02 19:15:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01952', 'PRD-A-KEL-0140', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01952', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 3, 2770000, 8310000, 2700000, 0, 210000, 'pcs'),
  ('TRX-A01952', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 1, 1110000, 1110000, 900000, 0, 210000, 'pcs'),
  ('TRX-A01952', 'PRD-A-KEL-0022', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00068', '2026-11-02 19:03:53+07:00', 'Siti Aisyah', 'Admin', 5835000, 0, 5835000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100067', '', '', '', 970000, NULL, '2026-11-02 19:03:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00068', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 2, 28000, 56000, 19000, 0, 18000, 'pcs'),
  ('TRX-A00068', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 2, 55000, 110000, 49000, 0, 12000, 'pcs'),
  ('TRX-A00068', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 3, 380000, 1140000, 300000, 0, 240000, 'pcs'),
  ('TRX-A00068', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 3, 560000, 1680000, 400000, 0, 480000, 'pcs'),
  ('TRX-A00068', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A00068', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 1, 25000, 25000, 13000, 0, 12000, 'pcs'),
  ('TRX-A00068', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00406', '2026-11-02 18:48:20+07:00', 'Umum', 'Admin', 1666000, 0, 1666000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100405', '', '', '', 261000, NULL, '2026-11-02 18:48:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00406', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 2, 30000, 60000, 17000, 0, 26000, 'pcs'),
  ('TRX-A00406', 'PRD-A-KEL-0154', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00406', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 1, 1510000, 1510000, 1300000, 0, 210000, 'pcs'),
  ('TRX-A00406', 'PRD-A-KEL-0148', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00406', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 2, 35000, 70000, 27000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00460', '2026-11-02 18:41:23+07:00', 'Budi Santoso 3', 'Admin', 7206000, 0, 0, 7206000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100459', '', '', '', 502000, NULL, '2026-11-02 18:41:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00460', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 2, 1520000, 3040000, 1400000, 0, 240000, 'pcs'),
  ('TRX-A00460', 'PRD-A-AKS-0160', 'Memory Card 32GB', 1, 40000, 40000, 34000, 0, 6000, 'pcs'),
  ('TRX-A00460', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 2, 43000, 86000, 35000, 0, 16000, 'pcs'),
  ('TRX-A00460', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 2, 2020000, 4040000, 1900000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01882', '2026-11-02 18:10:57+07:00', 'Umum', 'Admin', 7926000, 0, 7926000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101881', '', '', '', 561000, NULL, '2026-11-02 18:10:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01882', 'PRD-A-KEL-0037', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A01882', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 3, 42000, 126000, 30000, 0, 36000, 'pcs'),
  ('TRX-A01882', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 2, 2850000, 5700000, 2800000, 0, 100000, 'pcs'),
  ('TRX-A01882', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01882', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A01882', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 1, 670000, 670000, 600000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01417', '2026-11-02 17:58:38+07:00', 'Nur Halimah', 'Admin', 50000, 0, 50000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101416', '', '', '', 10000, NULL, '2026-11-02 17:58:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01417', 'PRD-A-AKS-0030', 'Case Samsung A03', 2, 25000, 50000, 20000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01738', '2026-11-02 17:42:36+07:00', 'Umum', 'Admin', 960000, 0, 480000, 480000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101737', '', '', '', 160000, NULL, '2026-11-02 17:42:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01738', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 1, 960000, 960000, 800000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00237', '2026-11-02 17:35:13+07:00', 'Umum', 'Admin', 15000, 0, 7500, 7500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100236', '', '', '', 3000, NULL, '2026-11-02 17:35:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00237', 'PRD-A-KEL-0065', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00811', '2026-11-02 17:31:10+07:00', 'Nur Halimah', 'Admin', 3438000, 0, 1719000, 1719000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100810', '', '', '', 338000, NULL, '2026-11-02 17:31:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00811', 'PRD-A-AKS-0195', 'Memory Card 16GB', 2, 70000, 140000, 65000, 0, 10000, 'pcs'),
  ('TRX-A00811', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 1, 2000000, 2000000, 1900000, 0, 100000, 'pcs'),
  ('TRX-A00811', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 2, 39000, 78000, 35000, 0, 8000, 'pcs'),
  ('TRX-A00811', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 1, 1220000, 1220000, 1000000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01620', '2026-11-02 17:16:36+07:00', 'Umum', 'Admin', 24830000, 0, 12415000, 12415000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101619', '', '', '', 1730000, NULL, '2026-11-02 17:16:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01620', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs'),
  ('TRX-A01620', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 2, 2780000, 5560000, 2600000, 0, 360000, 'pcs'),
  ('TRX-A01620', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 1, 2020000, 2020000, 1900000, 0, 120000, 'pcs'),
  ('TRX-A01620', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 2, 580000, 1160000, 500000, 0, 160000, 'pcs'),
  ('TRX-A01620', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 3, 2590000, 7770000, 2500000, 0, 270000, 'pcs'),
  ('TRX-A01620', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 3, 2190000, 6570000, 2000000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00006', '2026-11-02 17:00:26+07:00', 'Umum', 'Admin', 60000, 0, 60000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100005', '', '', '', 26000, NULL, '2026-11-02 17:00:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00006', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 2, 30000, 60000, 17000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01635', '2026-11-02 16:55:07+07:00', 'Dedi Supriadi', 'Admin', 1890000, 0, 1890000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101634', '', '', '', 390000, NULL, '2026-11-02 16:55:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01635', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 3, 630000, 1890000, 500000, 0, 390000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00858', '2026-11-02 16:37:33+07:00', 'Agus Wijaya', 'Admin', 19200000, 0, 19200000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100857', '', '', '', 1687000, NULL, '2026-11-02 16:37:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00858', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 2, 1770000, 3540000, 1700000, 0, 140000, 'pcs'),
  ('TRX-A00858', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A00858', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 1, 1180000, 1180000, 1100000, 0, 80000, 'pcs'),
  ('TRX-A00858', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 3, 1940000, 5820000, 1700000, 0, 720000, 'pcs'),
  ('TRX-A00858', 'PRD-A-KEL-0176', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00858', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 2, 55000, 110000, 48000, 0, 14000, 'pcs'),
  ('TRX-A00858', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs'),
  ('TRX-A00858', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01211', '2026-11-02 16:30:59+07:00', 'Andi Kurnia', 'Admin', 69000, 0, 0, 69000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101210', '', '', '', 19000, NULL, '2026-11-02 16:30:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01211', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 1, 27000, 27000, 23000, 0, 4000, 'pcs'),
  ('TRX-A01211', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 1, 42000, 42000, 27000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00368', '2026-11-02 16:27:19+07:00', 'Umum', 'Admin', 5132000, 0, 5132000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100367', '', '', '', 450500, NULL, '2026-11-02 16:27:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00368', 'PRD-A-KEL-0077', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00368', 'PRD-A-AKS-0054', 'Batre Samsung J1', 2, 40000, 80000, 30000, 0, 20000, 'pcs'),
  ('TRX-A00368', 'PRD-A-KEL-0119', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00368', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 2, 2510000, 5020000, 2300000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01398', '2026-11-02 16:06:05+07:00', 'Intan Permata', 'Admin', 36000, 0, 18000, 18000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101397', '', '', '', 8000, NULL, '2026-11-02 16:06:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01398', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 2, 18000, 36000, 14000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01874', '2026-11-02 15:49:39+07:00', 'Andi Kurnia', 'Admin', 12000, 0, 12000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101873', '', '', '', 4000, NULL, '2026-11-02 15:49:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01874', 'PRD-A-KEL-0111', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01912', '2026-11-02 15:41:38+07:00', 'Umum', 'Admin', 79000, 0, 39500, 39500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101911', '', '', '', 28000, NULL, '2026-11-02 15:41:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01912', 'PRD-A-AKS-0138', 'Tempered Glass Oppo', 3, 16000, 48000, 11000, 0, 15000, 'pcs'),
  ('TRX-A01912', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 1, 31000, 31000, 18000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00961', '2026-11-02 15:15:06+07:00', 'Sri Wahyuni 2', 'Admin', 16598000, 0, 8299000, 8299000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100960', '', '', '', 1296000, NULL, '2026-11-02 15:15:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00961', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 2, 2320000, 4640000, 2200000, 0, 240000, 'pcs'),
  ('TRX-A00961', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 3, 74000, 222000, 59000, 0, 45000, 'pcs'),
  ('TRX-A00961', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 2, 580000, 1160000, 500000, 0, 160000, 'pcs'),
  ('TRX-A00961', 'PRD-A-KEL-0060', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00961', 'PRD-A-KEL-0168', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00961', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 2, 2780000, 5560000, 2600000, 0, 360000, 'pcs'),
  ('TRX-A00961', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00020', '2026-11-02 15:00:28+07:00', 'Dedi Supriadi 2', 'Admin', 44000, 0, 22000, 22000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100019', '', '', '', 14000, NULL, '2026-11-02 15:00:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00020', 'PRD-A-KEL-0118', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00020', 'PRD-A-KEL-0089', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00083', '2026-11-02 14:56:53+07:00', 'Umum', 'Admin', 11046000, 0, 11046000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100082', '', '', '', 798000, NULL, '2026-11-02 14:56:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00083', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00083', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 1, 2590000, 2590000, 2400000, 0, 190000, 'pcs'),
  ('TRX-A00083', 'PRD-A-KEL-0130', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00083', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 1, 670000, 670000, 500000, 0, 170000, 'pcs'),
  ('TRX-A00083', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00083', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00984', '2026-11-02 14:55:21+07:00', 'Siti Aisyah 4', 'Admin', 4449000, 0, 4449000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100983', '', '', '', 201000, NULL, '2026-11-02 14:55:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00984', 'PRD-A-KEL-0110', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00984', 'PRD-A-KEL-0054', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00984', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 2, 2190000, 4380000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A00984', 'PRD-A-KEL-0158', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00382', '2026-11-02 14:54:57+07:00', 'Umum', 'Admin', 222000, 0, 222000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100381', '', '', '', 48000, NULL, '2026-11-02 14:54:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00382', 'PRD-A-AKS-0102', 'Case Vivo Y20', 3, 36000, 108000, 30000, 0, 18000, 'pcs'),
  ('TRX-A00382', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 1, 39000, 39000, 30000, 0, 9000, 'pcs'),
  ('TRX-A00382', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 1, 45000, 45000, 33000, 0, 12000, 'pcs'),
  ('TRX-A00382', 'PRD-A-KEL-0033', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01804', '2026-11-02 14:47:40+07:00', 'Siti Aisyah 4', 'Admin', 10808000, 0, 10808000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101803', '', '', '', 590000, NULL, '2026-11-02 14:47:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01804', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A01804', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 3, 54000, 162000, 47000, 0, 21000, 'pcs'),
  ('TRX-A01804', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01804', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 2, 2370000, 4740000, 2300000, 0, 140000, 'pcs'),
  ('TRX-A01804', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A01804', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00084', '2026-11-02 14:47:05+07:00', 'Dedi Supriadi 4', 'Admin', 13090000, 0, 13090000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100083', '', '', '', 1180000, NULL, '2026-11-02 14:47:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00084', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 2, 1510000, 3020000, 1300000, 0, 420000, 'pcs'),
  ('TRX-A00084', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 2, 1730000, 3460000, 1600000, 0, 260000, 'pcs'),
  ('TRX-A00084', 'PRD-A-KEL-0063', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00084', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 3, 2160000, 6480000, 2000000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00742', '2026-11-02 14:43:51+07:00', 'Umum', 'Admin', 54000, 0, 27000, 27000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100741', '', '', '', 15000, NULL, '2026-11-02 14:43:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00742', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01685', '2026-11-02 14:27:49+07:00', 'Umum', 'Admin', 6611000, 0, 0, 6611000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101684', '', '', '', 1091000, NULL, '2026-11-02 14:27:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01685', 'PRD-A-AKS-0082', 'Case Redmi 9A', 2, 26000, 52000, 23000, 0, 6000, 'pcs'),
  ('TRX-A01685', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 2, 2120000, 4240000, 1900000, 0, 440000, 'pcs'),
  ('TRX-A01685', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 3, 700000, 2100000, 500000, 0, 600000, 'pcs'),
  ('TRX-A01685', 'PRD-A-AKS-0217', 'Batre Samsung J1', 3, 47000, 141000, 42000, 0, 15000, 'pcs'),
  ('TRX-A01685', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 3, 26000, 78000, 16000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00607', '2026-11-02 14:21:59+07:00', 'Dewi Lestari 4', 'Admin', 2027000, 0, 2027000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100606', '', '', '', 239000, NULL, '2026-11-02 14:21:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00607', 'PRD-A-KEL-0159', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00607', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A00607', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 1, 1670000, 1670000, 1500000, 0, 170000, 'pcs'),
  ('TRX-A00607', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A00607', 'PRD-A-KEL-0172', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00361', '2026-11-02 14:07:08+07:00', 'Umum', 'Admin', 1041500, 0, 1041500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100360', '', '', '', 440700, NULL, '2026-11-02 14:07:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00361', 'PRD-A-KEL-0076', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00361', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 2, 520000, 1040000, 300000, 0, 440000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01948', '2026-11-02 14:02:59+07:00', 'Umum', 'Admin', 6370000, 0, 6370000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101947', '', '', '', 634000, NULL, '2026-11-02 14:02:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01948', 'PRD-A-HP-0391', 'HP INFINIX A03 3/32 13495', 1, 670000, 670000, 500000, 0, 170000, 'pcs'),
  ('TRX-A01948', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 2, 1670000, 3340000, 1500000, 0, 340000, 'pcs'),
  ('TRX-A01948', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01948', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00155', '2026-11-02 13:58:11+07:00', 'Siti Aisyah 4', 'Admin', 13912000, 0, 13912000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100154', '', '', '', 1032000, NULL, '2026-11-02 13:58:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00155', 'PRD-A-AKS-0171', 'Tempered Glass Xiaomi', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A00155', 'PRD-A-KEL-0194', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00155', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 3, 42000, 126000, 30000, 0, 36000, 'pcs'),
  ('TRX-A00155', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 3, 2960000, 8880000, 2800000, 0, 480000, 'pcs'),
  ('TRX-A00155', 'PRD-A-AKS-0076', 'Handsfree Samsung', 3, 58000, 174000, 45000, 0, 39000, 'pcs'),
  ('TRX-A00155', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 1, 2230000, 2230000, 2000000, 0, 230000, 'pcs'),
  ('TRX-A00155', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 2, 1210000, 2420000, 1100000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01095', '2026-11-02 13:51:34+07:00', 'Sri Wahyuni 5', 'Admin', 18795000, 0, 18795000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101094', '', '', '', 1482000, NULL, '2026-11-02 13:51:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01095', 'PRD-A-KEL-0073', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01095', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A01095', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 3, 600000, 1800000, 400000, 0, 600000, 'pcs'),
  ('TRX-A01095', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 3, 1990000, 5970000, 1900000, 0, 270000, 'pcs'),
  ('TRX-A01095', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 3, 2580000, 7740000, 2500000, 0, 240000, 'pcs'),
  ('TRX-A01095', 'PRD-A-AKS-0214', 'Memory Card 64GB', 3, 100000, 300000, 86000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00336', '2026-11-02 13:14:02+07:00', 'Rina Marlina 5', 'Admin', 15417000, 0, 15417000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100335', '', '', '', 1541000, NULL, '2026-11-02 13:14:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00336', 'PRD-A-KEL-0079', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A00336', 'PRD-A-AKS-0213', 'Memory Card 16GB', 3, 72000, 216000, 65000, 0, 21000, 'pcs'),
  ('TRX-A00336', 'PRD-A-AKS-0179', 'Memory Card 32GB', 2, 102000, 204000, 88000, 0, 28000, 'pcs'),
  ('TRX-A00336', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 2, 2020000, 4040000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A00336', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 3, 1750000, 5250000, 1500000, 0, 750000, 'pcs'),
  ('TRX-A00336', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 2, 690000, 1380000, 500000, 0, 380000, 'pcs'),
  ('TRX-A00336', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00957', '2026-11-02 13:03:21+07:00', 'Rina Marlina 3', 'Admin', 3022000, 0, 1511000, 1511000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100956', '', '', '', 239000, NULL, '2026-11-02 13:03:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00957', 'PRD-A-KEL-0119', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00957', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 1, 2910000, 2910000, 2700000, 0, 210000, 'pcs'),
  ('TRX-A00957', 'PRD-A-AKS-0201', 'Memory Card 32GB', 2, 38000, 76000, 27000, 0, 22000, 'pcs'),
  ('TRX-A00957', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 1, 28000, 28000, 24000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00595', '2026-11-02 12:57:41+07:00', 'Umum', 'Admin', 8942000, 0, 8942000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100594', '', '', '', 601000, NULL, '2026-11-02 12:57:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00595', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 2, 2720000, 5440000, 2600000, 0, 240000, 'pcs'),
  ('TRX-A00595', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 2, 1670000, 3340000, 1500000, 0, 340000, 'pcs'),
  ('TRX-A00595', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 3, 54000, 162000, 47000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01478', '2026-11-02 12:41:29+07:00', 'Andi Kurnia 4', 'Admin', 4350000, 0, 2175000, 2175000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101477', '', '', '', 150000, NULL, '2026-11-02 12:41:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01478', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 3, 1450000, 4350000, 1400000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01054', '2026-11-02 12:29:38+07:00', 'D''Angelo Cell', 'Admin', 5056000, 0, 2528000, 2528000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101053', '', '', '', 1046000, NULL, '2026-11-02 12:29:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01054', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 2, 65000, 130000, 53000, 0, 24000, 'pcs'),
  ('TRX-A01054', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 1, 740000, 740000, 600000, 0, 140000, 'pcs'),
  ('TRX-A01054', 'PRD-A-KEL-0011', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01054', 'PRD-A-HP-0330', 'HP REDMI C15 4/64 69727', 3, 810000, 2430000, 600000, 0, 630000, 'pcs'),
  ('TRX-A01054', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00247', '2026-11-02 12:24:07+07:00', 'Fitri Rahmawati 4', 'Admin', 8953000, 0, 8953000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100246', '', '', '', 830000, NULL, '2026-11-02 12:24:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00247', 'PRD-A-KEL-0009', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A00247', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 2, 34000, 68000, 20000, 0, 28000, 'pcs'),
  ('TRX-A00247', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00247', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 1, 2200000, 2200000, 2000000, 0, 200000, 'pcs'),
  ('TRX-A00247', 'PRD-A-AKS-0046', 'Case Samsung A03', 3, 38000, 114000, 35000, 0, 9000, 'pcs'),
  ('TRX-A00247', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 1, 27000, 27000, 18000, 0, 9000, 'pcs'),
  ('TRX-A00247', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A00247', 'PRD-A-AKS-0041', 'Tempered Glass Vivo', 1, 19000, 19000, 5000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01876', '2026-11-02 11:44:19+07:00', 'Umum', 'Admin', 5520000, 0, 2760000, 2760000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101875', '', '', '', 585000, NULL, '2026-11-02 11:44:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01876', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 1, 1520000, 1520000, 1300000, 0, 220000, 'pcs'),
  ('TRX-A01876', 'PRD-A-KEL-0164', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01876', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 3, 38000, 114000, 23000, 0, 45000, 'pcs'),
  ('TRX-A01876', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 2, 1110000, 2220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01876', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 1, 1590000, 1590000, 1500000, 0, 90000, 'pcs'),
  ('TRX-A01876', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01735', '2026-11-02 11:27:40+07:00', 'Umum', 'Admin', 3653000, 0, 3653000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101734', '', '', '', 396000, NULL, '2026-11-02 11:27:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01735', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 3, 55000, 165000, 49000, 0, 18000, 'pcs'),
  ('TRX-A01735', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 2, 35000, 70000, 21000, 0, 28000, 'pcs'),
  ('TRX-A01735', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 2, 1660000, 3320000, 1500000, 0, 320000, 'pcs'),
  ('TRX-A01735', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 2, 15000, 30000, 10000, 0, 10000, 'pcs'),
  ('TRX-A01735', 'PRD-A-KEL-0122', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01735', 'PRD-A-KEL-0020', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01735', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01712', '2026-11-02 11:14:11+07:00', 'Umum', 'Admin', 347000, 0, 347000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101711', '', '', '', 62000, NULL, '2026-11-02 11:14:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01712', 'PRD-A-KEL-0057', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01712', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 2, 26000, 52000, 16000, 0, 20000, 'pcs'),
  ('TRX-A01712', 'PRD-A-KEL-0031', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01712', 'PRD-A-KEL-0073', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01712', 'PRD-A-AKS-0236', 'Memory Card 64GB', 3, 72000, 216000, 63000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01084', '2026-11-02 11:08:35+07:00', 'Umum', 'Admin', 3000, 0, 3000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101083', '', '', '', 1400, NULL, '2026-11-02 11:08:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01084', 'PRD-A-KEL-0076', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01942', '2026-11-02 11:04:04+07:00', 'Dedi Supriadi 4', 'Admin', 4100000, 0, 2050000, 2050000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101941', '', '', '', 400000, NULL, '2026-11-02 11:04:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01942', 'PRD-A-HP-0272', 'HP ITEL 6A 4/128 52530', 1, 2720000, 2720000, 2500000, 0, 220000, 'pcs'),
  ('TRX-A01942', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 3, 460000, 1380000, 400000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01545', '2026-11-02 10:57:25+07:00', 'Fitri Rahmawati 3', 'Admin', 8257000, 0, 8257000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101544', '', '', '', 568000, NULL, '2026-11-02 10:57:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01545', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A01545', 'PRD-A-KEL-0022', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01545', 'PRD-A-KEL-0130', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01545', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 1, 2610000, 2610000, 2400000, 0, 210000, 'pcs'),
  ('TRX-A01545', 'PRD-A-AKS-0076', 'Handsfree Samsung', 2, 58000, 116000, 45000, 0, 26000, 'pcs'),
  ('TRX-A01545', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 2, 2090000, 4180000, 2000000, 0, 180000, 'pcs'),
  ('TRX-A01545', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 1, 45000, 45000, 33000, 0, 12000, 'pcs'),
  ('TRX-A01545', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 1, 1210000, 1210000, 1100000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01129', '2026-11-02 10:49:00+07:00', 'Umum', 'Admin', 5090000, 0, 5090000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101128', '', '', '', 290000, NULL, '2026-11-02 10:49:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01129', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 2, 1590000, 3180000, 1500000, 0, 180000, 'pcs'),
  ('TRX-A01129', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 1, 1910000, 1910000, 1800000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01607', '2026-11-02 10:25:16+07:00', 'Intan Permata 4', 'Admin', 4998000, 0, 4998000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101606', '', '', '', 596500, NULL, '2026-11-02 10:25:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01607', 'PRD-A-KEL-0031', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01607', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 2, 1540000, 3080000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A01607', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 1, 42000, 42000, 27000, 0, 15000, 'pcs'),
  ('TRX-A01607', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01607', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 1, 1670000, 1670000, 1600000, 0, 70000, 'pcs'),
  ('TRX-A01607', 'PRD-A-AKS-0088', 'Case Redmi 9A', 2, 43000, 86000, 34000, 0, 18000, 'pcs'),
  ('TRX-A01607', 'PRD-A-AKS-0177', 'Case Samsung A03', 1, 39000, 39000, 34000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00265', '2026-11-02 10:07:25+07:00', 'Agus Wijaya 4', 'Admin', 3186000, 0, 3186000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100264', '', '', '', 218000, NULL, '2026-11-02 10:07:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00265', 'PRD-A-KEL-0089', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00265', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A00265', 'PRD-A-AKS-0191', 'Batre Samsung J1', 2, 54000, 108000, 39000, 0, 30000, 'pcs'),
  ('TRX-A00265', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 3, 28000, 84000, 24000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01304', '2026-11-02 09:59:51+07:00', 'Rudi Hartono', 'Admin', 9322000, 0, 4661000, 4661000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101303', '', '', '', 1252000, NULL, '2026-11-02 09:59:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01304', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 2, 930000, 1860000, 700000, 0, 460000, 'pcs'),
  ('TRX-A01304', 'PRD-A-AKS-0084', 'Memory Card 64GB', 3, 95000, 285000, 82000, 0, 39000, 'pcs'),
  ('TRX-A01304', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 3, 39000, 117000, 30000, 0, 27000, 'pcs'),
  ('TRX-A01304', 'PRD-A-KEL-0142', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A01304', 'PRD-A-AKS-0073', 'Memory Card 64GB', 1, 35000, 35000, 31000, 0, 4000, 'pcs'),
  ('TRX-A01304', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A01304', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 3, 1060000, 3180000, 900000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00490', '2026-11-02 09:49:17+07:00', 'Hendra Gunawan 2', 'Admin', 190000, 0, 0, 190000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100489', '', '', '', 12000, NULL, '2026-11-02 09:49:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00490', 'PRD-A-AKS-0052', 'Memory Card 32GB', 2, 95000, 190000, 89000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00974', '2026-11-02 09:33:29+07:00', 'Umum', 'Admin', 212000, 0, 212000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100973', '', '', '', 43400, NULL, '2026-11-02 09:33:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00974', 'PRD-A-AKS-0141', 'Batre Oppo A57', 1, 62000, 62000, 50000, 0, 12000, 'pcs'),
  ('TRX-A00974', 'PRD-A-KEL-0005', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00974', 'PRD-A-AKS-0074', 'Handsfree Oppo', 3, 49000, 147000, 39000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00631', '2026-11-02 09:11:28+07:00', 'Umum', 'Admin', 2935000, 0, 2935000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100630', '', '', '', 494000, NULL, '2026-11-02 09:11:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00631', 'PRD-A-AKS-0150', 'Memory Card 16GB', 1, 55000, 55000, 41000, 0, 14000, 'pcs'),
  ('TRX-A00631', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 2, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A00631', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 3, 960000, 2880000, 800000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00894', '2026-11-02 09:09:32+07:00', 'Ayu Lestari 5', 'Admin', 6759500, 0, 6759500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100893', '', '', '', 1010000, NULL, '2026-11-02 09:09:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00894', 'PRD-A-KEL-0039', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00894', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 2, 27000, 54000, 23000, 0, 8000, 'pcs'),
  ('TRX-A00894', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 3, 910000, 2730000, 700000, 0, 630000, 'pcs'),
  ('TRX-A00894', 'PRD-A-HP-0400', 'HP SAMSUNG 5A 2/32 51721', 1, 2320000, 2320000, 2100000, 0, 220000, 'pcs'),
  ('TRX-A00894', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A00894', 'PRD-A-KEL-0137', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00239', '2026-11-02 09:02:20+07:00', 'Rudi Hartono 5', 'Admin', 11257000, 0, 5628500, 5628500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100238', '', '', '', 1317000, NULL, '2026-11-02 09:02:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00239', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A00239', 'PRD-A-AKS-0168', 'Memory Card 32GB', 3, 40000, 120000, 32000, 0, 24000, 'pcs'),
  ('TRX-A00239', 'PRD-A-KEL-0118', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00239', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 1, 1960000, 1960000, 1900000, 0, 60000, 'pcs'),
  ('TRX-A00239', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 1, 1600000, 1600000, 1500000, 0, 100000, 'pcs'),
  ('TRX-A00239', 'PRD-A-HP-0245', 'HP NOKIA C11 4/64 32903', 3, 640000, 1920000, 400000, 0, 720000, 'pcs'),
  ('TRX-A00239', 'PRD-A-KEL-0017', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00931', '2026-11-02 08:20:56+07:00', 'Maya Putri 2', 'Admin', 9436000, 0, 9436000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100930', '', '', '', 786000, NULL, '2026-11-02 08:20:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00931', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 2, 410000, 820000, 300000, 0, 220000, 'pcs'),
  ('TRX-A00931', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs'),
  ('TRX-A00931', 'PRD-A-KEL-0118', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00931', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 2, 15000, 30000, 8000, 0, 14000, 'pcs'),
  ('TRX-A00931', 'PRD-A-KEL-0108', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00931', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 3, 2320000, 6960000, 2200000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00851', '2026-11-02 08:18:36+07:00', 'Umum', 'Admin', 2010000, 0, 1005000, 1005000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100850', '', '', '', 295000, NULL, '2026-11-02 08:18:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00851', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 3, 15000, 45000, 8000, 0, 21000, 'pcs'),
  ('TRX-A00851', 'PRD-A-AKS-0013', 'Case Samsung A03', 2, 41000, 82000, 29000, 0, 24000, 'pcs'),
  ('TRX-A00851', 'PRD-A-HP-0449', 'HP REALME HOT30i 2/32 56128', 3, 570000, 1710000, 500000, 0, 210000, 'pcs'),
  ('TRX-A00851', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 27000, 0, 24000, 'pcs'),
  ('TRX-A00851', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 2, 34000, 68000, 26000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00345', '2026-11-02 08:15:42+07:00', 'Umum', 'Admin', 18000, 0, 9000, 9000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100344', '', '', '', 7000, NULL, '2026-11-02 08:15:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00345', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 1, 18000, 18000, 11000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01111', '2026-11-02 08:14:59+07:00', 'Umum', 'Admin', 8082000, 0, 8082000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101110', '', '', '', 864000, NULL, '2026-11-02 08:14:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01111', 'PRD-A-AKS-0167', 'Tempered Glass Oppo', 1, 32000, 32000, 18000, 0, 14000, 'pcs'),
  ('TRX-A01111', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A01111', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 2, 1640000, 3280000, 1500000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01276', '2026-11-01 20:57:59+07:00', 'Intan Permata 4', 'Admin', 18006000, 0, 18006000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101275', '', '', '', 1094000, NULL, '2026-11-01 20:57:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01276', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs'),
  ('TRX-A01276', 'PRD-A-KEL-0046', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01276', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 3, 1820000, 5460000, 1700000, 0, 360000, 'pcs'),
  ('TRX-A01276', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 1, 2810000, 2810000, 2700000, 0, 110000, 'pcs'),
  ('TRX-A01276', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs'),
  ('TRX-A01276', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 1, 1540000, 1540000, 1400000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01875', '2026-11-01 20:42:51+07:00', 'Rudi Hartono 2', 'Admin', 2150000, 0, 2150000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101874', '', '', '', 450000, NULL, '2026-11-01 20:42:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01875', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 3, 410000, 1230000, 300000, 0, 330000, 'pcs'),
  ('TRX-A01875', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 2, 460000, 920000, 400000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01177', '2026-11-01 20:32:41+07:00', 'Hendra Gunawan 3', 'Admin', 7644000, 0, 7644000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101176', '', '', '', 889000, NULL, '2026-11-01 20:32:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01177', 'PRD-A-KEL-0057', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01177', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A01177', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 1, 560000, 560000, 400000, 0, 160000, 'pcs'),
  ('TRX-A01177', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A01177', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 1, 30000, 30000, 17000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00295', '2026-11-01 20:29:12+07:00', 'Umum', 'Admin', 3351000, 0, 3351000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100294', '', '', '', 305000, NULL, '2026-11-01 20:29:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00295', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 27000, 0, 8000, 'pcs'),
  ('TRX-A00295', 'PRD-A-KEL-0114', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00295', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 2, 24000, 48000, 15000, 0, 18000, 'pcs'),
  ('TRX-A00295', 'PRD-A-AKS-0055', 'Memory Card 16GB', 3, 66000, 198000, 56000, 0, 30000, 'pcs'),
  ('TRX-A00295', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 2, 1520000, 3040000, 1400000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01251', '2026-11-01 20:11:05+07:00', 'Yusuf Maulana', 'Admin', 6652000, 0, 3326000, 3326000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101250', '', '', '', 259000, NULL, '2026-11-01 20:11:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01251', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A01251', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A01251', 'PRD-A-KEL-0198', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A01251', 'PRD-A-AKS-0193', 'Case Oppo A57', 2, 25000, 50000, 21000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01933', '2026-11-01 20:04:57+07:00', 'Dewi Lestari 4', 'Admin', 6106000, 0, 6106000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101932', '', '', '', 498000, NULL, '2026-11-01 20:04:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01933', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 2, 35000, 70000, 20000, 0, 30000, 'pcs'),
  ('TRX-A01933', 'PRD-A-KEL-0154', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01933', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A01933', 'PRD-A-AKS-0222', 'Case Redmi 9A', 2, 46000, 92000, 35000, 0, 22000, 'pcs'),
  ('TRX-A01933', 'PRD-A-KEL-0194', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01933', 'PRD-A-AKS-0114', 'Memory Card 16GB', 3, 44000, 132000, 30000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01843', '2026-11-01 20:04:22+07:00', 'Hendra Gunawan 3', 'Admin', 4604000, 0, 4604000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101842', '', '', '', 481000, NULL, '2026-11-01 20:04:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01843', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01843', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 2, 2230000, 4460000, 2000000, 0, 460000, 'pcs'),
  ('TRX-A01843', 'PRD-A-KEL-0129', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A01843', 'PRD-A-KEL-0007', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00231', '2026-11-01 19:38:24+07:00', 'Intan Permata 4', 'Admin', 15264000, 0, 7632000, 7632000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100230', '', '', '', 1516000, NULL, '2026-11-01 19:38:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00231', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 3, 1540000, 4620000, 1300000, 0, 720000, 'pcs'),
  ('TRX-A00231', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00231', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs'),
  ('TRX-A00231', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00209', '2026-11-01 19:37:29+07:00', 'Umum', 'Admin', 6037000, 0, 6037000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100208', '', '', '', 756000, NULL, '2026-11-01 19:37:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00209', 'PRD-A-KEL-0016', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00209', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 1, 29000, 29000, 25000, 0, 4000, 'pcs'),
  ('TRX-A00209', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 3, 1940000, 5820000, 1700000, 0, 720000, 'pcs'),
  ('TRX-A00209', 'PRD-A-AKS-0201', 'Memory Card 32GB', 1, 38000, 38000, 27000, 0, 11000, 'pcs'),
  ('TRX-A00209', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 2, 55000, 110000, 50000, 0, 10000, 'pcs'),
  ('TRX-A00209', 'PRD-A-KEL-0190', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00209', 'PRD-A-KEL-0106', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00090', '2026-11-01 19:36:32+07:00', 'Eko Saputra 3', 'Admin', 24000, 0, 24000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100089', '', '', '', 8000, NULL, '2026-11-01 19:36:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00090', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00241', '2026-11-01 19:33:59+07:00', 'Umum', 'Admin', 3856000, 0, 3856000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100240', '', '', '', 229000, NULL, '2026-11-01 19:33:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00241', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 2, 1910000, 3820000, 1800000, 0, 220000, 'pcs'),
  ('TRX-A00241', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00772', '2026-11-01 19:32:40+07:00', 'Umum', 'Admin', 311000, 0, 311000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100771', '', '', '', 56000, NULL, '2026-11-01 19:32:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00772', 'PRD-A-AKS-0076', 'Handsfree Samsung', 2, 58000, 116000, 45000, 0, 26000, 'pcs'),
  ('TRX-A00772', 'PRD-A-KEL-0073', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00670', '2026-11-01 19:23:26+07:00', 'Hendra Gunawan', 'Admin', 7485000, 0, 7485000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100669', '', '', '', 1338000, NULL, '2026-11-01 19:23:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00670', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 2, 1750000, 3500000, 1500000, 0, 500000, 'pcs'),
  ('TRX-A00670', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 1, 480000, 480000, 300000, 0, 180000, 'pcs'),
  ('TRX-A00670', 'PRD-A-HP-0454', 'HP INFINIX A16 4/128 75084', 2, 1160000, 2320000, 1000000, 0, 320000, 'pcs'),
  ('TRX-A00670', 'PRD-A-KEL-0037', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A00670', 'PRD-A-KEL-0007', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00670', 'PRD-A-KEL-0048', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00670', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 2, 560000, 1120000, 400000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00771', '2026-11-01 19:04:42+07:00', 'Yusuf Maulana 4', 'Admin', 144000, 0, 144000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100770', '', '', '', 17000, NULL, '2026-11-01 19:04:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00771', 'PRD-A-AKS-0073', 'Memory Card 64GB', 3, 35000, 105000, 31000, 0, 12000, 'pcs'),
  ('TRX-A00771', 'PRD-A-AKS-0177', 'Case Samsung A03', 1, 39000, 39000, 34000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01158', '2026-11-01 18:59:04+07:00', 'Nur Halimah 4', 'Admin', 1639000, 0, 1639000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101157', '', '', '', 113000, NULL, '2026-11-01 18:59:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01158', 'PRD-A-AKS-0179', 'Memory Card 32GB', 2, 102000, 204000, 88000, 0, 28000, 'pcs'),
  ('TRX-A01158', 'PRD-A-KEL-0089', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01158', 'PRD-A-KEL-0190', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01158', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs'),
  ('TRX-A01158', 'PRD-A-AKS-0030', 'Case Samsung A03', 1, 25000, 25000, 20000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01648', '2026-11-01 18:31:31+07:00', 'Umum', 'Admin', 340000, 0, 170000, 170000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101647', '', '', '', 72000, NULL, '2026-11-01 18:31:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01648', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01648', 'PRD-A-AKS-0165', 'Case Vivo Y20', 1, 43000, 43000, 31000, 0, 12000, 'pcs'),
  ('TRX-A01648', 'PRD-A-AKS-0213', 'Memory Card 16GB', 2, 72000, 144000, 65000, 0, 14000, 'pcs'),
  ('TRX-A01648', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A01648', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 1, 30000, 30000, 17000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01384', '2026-11-01 18:26:46+07:00', 'Umum', 'Admin', 6788000, 0, 6788000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101383', '', '', '', 525000, NULL, '2026-11-01 18:26:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01384', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 3, 39000, 117000, 30000, 0, 27000, 'pcs'),
  ('TRX-A01384', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 3, 27000, 81000, 13000, 0, 42000, 'pcs'),
  ('TRX-A01384', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 1, 31000, 31000, 18000, 0, 13000, 'pcs'),
  ('TRX-A01384', 'PRD-A-KEL-0137', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01384', 'PRD-A-HP-0491', 'HP REDMI V7 2/32 86419', 2, 2300000, 4600000, 2200000, 0, 200000, 'pcs'),
  ('TRX-A01384', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 2, 56000, 112000, 45000, 0, 22000, 'pcs'),
  ('TRX-A01384', 'PRD-A-KEL-0194', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01384', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01511', '2026-11-01 18:25:24+07:00', 'Ayu Lestari 4', 'Admin', 2561000, 0, 1280500, 1280500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101510', '', '', '', 176000, NULL, '2026-11-01 18:25:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01511', 'PRD-A-AKS-0178', 'Case Vivo Y20', 1, 36000, 36000, 24000, 0, 12000, 'pcs'),
  ('TRX-A01511', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A01511', 'PRD-A-KEL-0068', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01511', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 2, 1170000, 2340000, 1100000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01576', '2026-11-01 18:25:00+07:00', 'Ayu Lestari 4', 'Admin', 19630000, 0, 19630000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101575', '', '', '', 1367500, NULL, '2026-11-01 18:25:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01576', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 3, 2420000, 7260000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A01576', 'PRD-A-KEL-0018', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01576', 'PRD-A-HP-0291', 'HP ITEL Y16 3/64 82632', 2, 860000, 1720000, 700000, 0, 320000, 'pcs'),
  ('TRX-A01576', 'PRD-A-HP-0351', 'HP REDMI V5S 3/32 54249', 1, 2700000, 2700000, 2500000, 0, 200000, 'pcs'),
  ('TRX-A01576', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A01576', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 21000, 0, 42000, 'pcs'),
  ('TRX-A01576', 'PRD-A-KEL-0068', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01576', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 3, 51000, 153000, 47000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01634', '2026-11-01 17:46:58+07:00', 'Umum', 'Admin', 2308000, 0, 1154000, 1154000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101633', '', '', '', 502000, NULL, '2026-11-01 17:46:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01634', 'PRD-A-KEL-0052', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01634', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 2, 1150000, 2300000, 900000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00135', '2026-11-01 17:43:25+07:00', 'Lilis Suryani 3', 'Admin', 6732000, 0, 6732000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100134', '', '', '', 280000, NULL, '2026-11-01 17:43:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00135', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs'),
  ('TRX-A00135', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 1, 55000, 55000, 48000, 0, 7000, 'pcs'),
  ('TRX-A00135', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A00135', 'PRD-A-KEL-0016', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00135', 'PRD-A-KEL-0159', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00135', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 1, 15000, 15000, 10000, 0, 5000, 'pcs'),
  ('TRX-A00135', 'PRD-A-KEL-0150', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00135', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00640', '2026-11-01 17:23:31+07:00', 'Rina Marlina', 'Admin', 2020000, 0, 2020000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100639', '', '', '', 148000, NULL, '2026-11-01 17:23:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00640', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00640', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 2, 970000, 1940000, 900000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00384', '2026-11-01 17:20:20+07:00', 'Umum', 'Admin', 3016000, 0, 3016000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100383', '', '', '', 505400, NULL, '2026-11-01 17:20:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00384', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A00384', 'PRD-A-KEL-0006', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00384', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 3, 29000, 87000, 25000, 0, 12000, 'pcs'),
  ('TRX-A00384', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 3, 960000, 2880000, 800000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01690', '2026-11-01 17:07:33+07:00', 'Umum', 'Admin', 4261000, 0, 2130500, 2130500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101689', '', '', '', 286000, NULL, '2026-11-01 17:07:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01690', 'PRD-A-KEL-0114', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01690', 'PRD-A-KEL-0158', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01690', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 3, 1370000, 4110000, 1300000, 0, 210000, 'pcs'),
  ('TRX-A01690', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 2, 21000, 42000, 9000, 0, 24000, 'pcs'),
  ('TRX-A01690', 'PRD-A-KEL-0094', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00179', '2026-11-01 17:02:59+07:00', 'Andi Kurnia 5', 'Admin', 14271000, 0, 14271000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100178', '', '', '', 1729000, NULL, '2026-11-01 17:02:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00179', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A00179', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 1, 480000, 480000, 300000, 0, 180000, 'pcs'),
  ('TRX-A00179', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 1, 560000, 560000, 400000, 0, 160000, 'pcs'),
  ('TRX-A00179', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00179', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A00179', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 1, 1600000, 1600000, 1500000, 0, 100000, 'pcs'),
  ('TRX-A00179', 'PRD-A-KEL-0035', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00403', '2026-11-01 17:01:57+07:00', 'Rina Marlina 5', 'Admin', 14430000, 0, 7215000, 7215000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100402', '', '', '', 961000, NULL, '2026-11-01 17:01:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00403', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A00403', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 3, 36000, 108000, 25000, 0, 33000, 'pcs'),
  ('TRX-A00403', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 3, 18000, 54000, 14000, 0, 12000, 'pcs'),
  ('TRX-A00403', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 1, 950000, 950000, 900000, 0, 50000, 'pcs'),
  ('TRX-A00403', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 3, 18000, 54000, 8000, 0, 30000, 'pcs'),
  ('TRX-A00403', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 2, 1990000, 3980000, 1900000, 0, 180000, 'pcs'),
  ('TRX-A00403', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A00403', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01822', '2026-11-01 16:27:56+07:00', 'Maya Putri 2', 'Admin', 6557000, 0, 6557000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101821', '', '', '', 243000, NULL, '2026-11-01 16:27:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01822', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01822', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00678', '2026-11-01 16:23:28+07:00', 'Siti Aisyah 2', 'Admin', 5140000, 0, 5140000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100677', '', '', '', 470000, NULL, '2026-11-01 16:23:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00678', 'PRD-A-KEL-0116', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00678', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs'),
  ('TRX-A00678', 'PRD-A-AKS-0138', 'Tempered Glass Oppo', 2, 16000, 32000, 11000, 0, 10000, 'pcs'),
  ('TRX-A00678', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 1, 1870000, 1870000, 1800000, 0, 70000, 'pcs'),
  ('TRX-A00678', 'PRD-A-KEL-0150', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00711', '2026-11-01 16:17:19+07:00', 'Umum', 'Admin', 603000, 0, 603000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100710', '', '', '', 119000, NULL, '2026-11-01 16:17:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00711', 'PRD-A-AKS-0053', 'Memory Card 16GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs'),
  ('TRX-A00711', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 1, 480000, 480000, 400000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00615', '2026-11-01 16:07:57+07:00', 'Umum', 'Admin', 3685000, 0, 3685000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100614', '', '', '', 320000, NULL, '2026-11-01 16:07:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00615', 'PRD-A-KEL-0065', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00615', 'PRD-A-AKS-0198', 'Batre Oppo A57', 3, 19000, 57000, 14000, 0, 15000, 'pcs'),
  ('TRX-A00615', 'PRD-A-AKS-0071', 'Case Oppo A57', 1, 31000, 31000, 19000, 0, 12000, 'pcs'),
  ('TRX-A00615', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 2, 1730000, 3460000, 1600000, 0, 260000, 'pcs'),
  ('TRX-A00615', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00362', '2026-11-01 15:46:32+07:00', 'Umum', 'Admin', 1541000, 0, 1541000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100361', '', '', '', 172000, NULL, '2026-11-01 15:46:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00362', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs'),
  ('TRX-A00362', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00880', '2026-11-01 14:46:56+07:00', 'Umum', 'Admin', 9343000, 0, 4671500, 4671500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100879', '', '', '', 764000, NULL, '2026-11-01 14:46:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00880', 'PRD-A-AKS-0090', 'Kartu Perdana XL', 3, 35000, 105000, 22000, 0, 39000, 'pcs'),
  ('TRX-A00880', 'PRD-A-AKS-0073', 'Memory Card 64GB', 1, 35000, 35000, 31000, 0, 4000, 'pcs'),
  ('TRX-A00880', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A00880', 'PRD-A-AKS-0105', 'Case Samsung A03', 2, 36000, 72000, 21000, 0, 30000, 'pcs'),
  ('TRX-A00880', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 3, 55000, 165000, 50000, 0, 15000, 'pcs'),
  ('TRX-A00880', 'PRD-A-AKS-0023', 'Memory Card 32GB', 2, 53000, 106000, 45000, 0, 16000, 'pcs'),
  ('TRX-A00880', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 2, 3030000, 6060000, 2800000, 0, 460000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01367', '2026-11-01 14:38:14+07:00', 'Umum', 'Admin', 11150000, 0, 5575000, 5575000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101366', '', '', '', 850000, NULL, '2026-11-01 14:38:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01367', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A01367', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 3, 2190000, 6570000, 2000000, 0, 570000, 'pcs'),
  ('TRX-A01367', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01808', '2026-11-01 14:35:58+07:00', 'Dedi Supriadi', 'Admin', 14408000, 0, 14408000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101807', '', '', '', 1156000, NULL, '2026-11-01 14:35:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01808', 'PRD-A-AKS-0188', 'Batre Oppo A57', 1, 52000, 52000, 40000, 0, 12000, 'pcs'),
  ('TRX-A01808', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs'),
  ('TRX-A01808', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A01808', 'PRD-A-KEL-0174', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00753', '2026-11-01 14:33:19+07:00', 'Umum', 'Admin', 5459000, 0, 5459000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100752', '', '', '', 446000, NULL, '2026-11-01 14:33:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00753', 'PRD-A-HP-0272', 'HP ITEL 6A 4/128 52530', 2, 2720000, 5440000, 2500000, 0, 440000, 'pcs'),
  ('TRX-A00753', 'PRD-A-KEL-0023', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A00753', 'PRD-A-KEL-0022', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01046', '2026-11-01 14:25:25+07:00', 'Budi Santoso 2', 'Admin', 5034000, 0, 5034000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101045', '', '', '', 206000, NULL, '2026-11-01 14:25:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01046', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 2, 2500000, 5000000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A01046', 'PRD-A-KEL-0125', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01108', '2026-11-01 14:14:18+07:00', 'Rina Marlina 2', 'Admin', 2010000, 0, 1005000, 1005000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101107', '', '', '', 210000, NULL, '2026-11-01 14:14:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01108', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 3, 670000, 2010000, 600000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01340', '2026-11-01 14:06:13+07:00', 'Umum', 'Admin', 3949000, 0, 0, 3949000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101339', '', '', '', 522000, NULL, '2026-11-01 14:06:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01340', 'PRD-A-AKS-0148', 'Case Vivo Y20', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A01340', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 3, 75000, 225000, 50000, 0, 75000, 'pcs'),
  ('TRX-A01340', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 2, 46000, 92000, 33000, 0, 26000, 'pcs'),
  ('TRX-A01340', 'PRD-A-HP-0510', 'HP SAMSUNG Y91C 2/32 52223', 3, 350000, 1050000, 300000, 0, 150000, 'pcs'),
  ('TRX-A01340', 'PRD-A-AKS-0045', 'Memory Card 16GB', 3, 58000, 174000, 53000, 0, 15000, 'pcs'),
  ('TRX-A01340', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 3, 780000, 2340000, 700000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01595', '2026-11-01 13:57:39+07:00', 'Umum', 'Admin', 1710000, 0, 855000, 855000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101594', '', '', '', 210000, NULL, '2026-11-01 13:57:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01595', 'PRD-A-HP-0449', 'HP REALME HOT30i 2/32 56128', 3, 570000, 1710000, 500000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00778', '2026-11-01 13:45:35+07:00', 'Umum', 'Admin', 9661000, 0, 9661000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100777', '', '', '', 954000, NULL, '2026-11-01 13:45:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00778', 'PRD-A-KEL-0160', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00778', 'PRD-A-KEL-0120', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00778', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 1, 890000, 890000, 800000, 0, 90000, 'pcs'),
  ('TRX-A00778', 'PRD-A-AKS-0116', 'Memory Card 16GB', 1, 88000, 88000, 76000, 0, 12000, 'pcs'),
  ('TRX-A00778', 'PRD-A-AKS-0001', 'Case Oppo A57', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00778', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 3, 73000, 219000, 58000, 0, 45000, 'pcs'),
  ('TRX-A00778', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A00778', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 3, 2220000, 6660000, 2000000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01569', '2026-11-01 13:23:02+07:00', 'Umum', 'Admin', 15661000, 0, 15661000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101568', '', '', '', 1334000, NULL, '2026-11-01 13:23:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01569', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01569', 'PRD-A-HP-0351', 'HP REDMI V5S 3/32 54249', 2, 2700000, 5400000, 2500000, 0, 400000, 'pcs'),
  ('TRX-A01569', 'PRD-A-KEL-0026', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01569', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 1, 55000, 55000, 50000, 0, 5000, 'pcs'),
  ('TRX-A01569', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01569', 'PRD-A-AKS-0165', 'Case Vivo Y20', 1, 43000, 43000, 31000, 0, 12000, 'pcs'),
  ('TRX-A01569', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs'),
  ('TRX-A01569', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 2, 460000, 920000, 400000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00810', '2026-11-01 12:54:34+07:00', 'Andi Kurnia 3', 'Admin', 20469000, 0, 0, 20469000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100809', '', '', '', 1764000, NULL, '2026-11-01 12:54:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00810', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 1, 480000, 480000, 400000, 0, 80000, 'pcs'),
  ('TRX-A00810', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 3, 2270000, 6810000, 2100000, 0, 510000, 'pcs'),
  ('TRX-A00810', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 3, 2500000, 7500000, 2300000, 0, 600000, 'pcs'),
  ('TRX-A00810', 'PRD-A-KEL-0196', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00810', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00810', 'PRD-A-AKS-0141', 'Batre Oppo A57', 3, 62000, 186000, 50000, 0, 36000, 'pcs'),
  ('TRX-A00810', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 3, 23000, 69000, 16000, 0, 21000, 'pcs'),
  ('TRX-A00810', 'PRD-A-AKS-0245', 'Batre Samsung J1', 2, 57000, 114000, 43000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00284', '2026-11-01 12:43:24+07:00', 'Dewi Lestari', 'Admin', 26000, 0, 13000, 13000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100283', '', '', '', 3000, NULL, '2026-11-01 12:43:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00284', 'PRD-A-AKS-0082', 'Case Redmi 9A', 1, 26000, 26000, 23000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00358', '2026-11-01 12:32:40+07:00', 'Budi Santoso 3', 'Admin', 1551000, 0, 0, 1551000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100357', '', '', '', 431500, NULL, '2026-11-01 12:32:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00358', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 2, 700000, 1400000, 500000, 0, 400000, 'pcs'),
  ('TRX-A00358', 'PRD-A-AKS-0074', 'Handsfree Oppo', 3, 49000, 147000, 39000, 0, 30000, 'pcs'),
  ('TRX-A00358', 'PRD-A-KEL-0102', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01961', '2026-11-01 12:29:13+07:00', 'Umum', 'Admin', 5871000, 0, 5871000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101960', '', '', '', 671000, NULL, '2026-11-01 12:29:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01961', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 3, 1370000, 4110000, 1200000, 0, 510000, 'pcs'),
  ('TRX-A01961', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 1, 1640000, 1640000, 1500000, 0, 140000, 'pcs'),
  ('TRX-A01961', 'PRD-A-KEL-0109', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01961', 'PRD-A-KEL-0092', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01961', 'PRD-A-AKS-0084', 'Memory Card 64GB', 1, 95000, 95000, 82000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00560', '2026-11-01 12:26:47+07:00', 'Fajar Nugroho 4', 'Admin', 9763000, 0, 4881500, 4881500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100559', '', '', '', 638500, NULL, '2026-11-01 12:26:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00560', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 3, 2600000, 7800000, 2500000, 0, 300000, 'pcs'),
  ('TRX-A00560', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 3, 61000, 183000, 46000, 0, 45000, 'pcs'),
  ('TRX-A00560', 'PRD-A-KEL-0039', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00560', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 2, 48000, 96000, 35000, 0, 26000, 'pcs'),
  ('TRX-A00560', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 3, 73000, 219000, 58000, 0, 45000, 'pcs'),
  ('TRX-A00560', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 3, 18000, 54000, 14000, 0, 12000, 'pcs'),
  ('TRX-A00560', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 1, 1410000, 1410000, 1200000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00479', '2026-11-01 12:23:44+07:00', 'Umum', 'Admin', 20595000, 0, 10297500, 10297500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100478', '', '', '', 2141000, NULL, '2026-11-01 12:23:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00479', 'PRD-A-KEL-0143', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00479', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 2, 2480000, 4960000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A00479', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A00479', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 2, 1710000, 3420000, 1500000, 0, 420000, 'pcs'),
  ('TRX-A00479', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 3, 1010000, 3030000, 800000, 0, 630000, 'pcs'),
  ('TRX-A00479', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A00479', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 2, 1660000, 3320000, 1500000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01870', '2026-11-01 12:22:58+07:00', 'Umum', 'Admin', 6916000, 0, 3458000, 3458000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101869', '', '', '', 723000, NULL, '2026-11-01 12:22:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01870', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 3, 1670000, 5010000, 1500000, 0, 510000, 'pcs'),
  ('TRX-A01870', 'PRD-A-AKS-0013', 'Case Samsung A03', 3, 41000, 123000, 29000, 0, 36000, 'pcs'),
  ('TRX-A01870', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 1, 1660000, 1660000, 1500000, 0, 160000, 'pcs'),
  ('TRX-A01870', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 1, 38000, 38000, 33000, 0, 5000, 'pcs'),
  ('TRX-A01870', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 1, 55000, 55000, 49000, 0, 6000, 'pcs'),
  ('TRX-A01870', 'PRD-A-KEL-0017', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01806', '2026-11-01 11:53:32+07:00', 'Joko Prasetyo 2', 'Admin', 6120000, 0, 3060000, 3060000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101805', '', '', '', 712000, NULL, '2026-11-01 11:53:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01806', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01806', 'PRD-A-HP-0477', 'HP INFINIX C15 3/32 90452', 1, 650000, 650000, 400000, 0, 250000, 'pcs'),
  ('TRX-A01806', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 1, 1040000, 1040000, 900000, 0, 140000, 'pcs'),
  ('TRX-A01806', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 1, 2000000, 2000000, 1900000, 0, 100000, 'pcs'),
  ('TRX-A01806', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00329', '2026-11-01 11:23:40+07:00', 'Yusuf Maulana 4', 'Admin', 15214000, 0, 7607000, 7607000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100328', '', '', '', 1249500, NULL, '2026-11-01 11:23:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00329', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 2, 38000, 76000, 33000, 0, 10000, 'pcs'),
  ('TRX-A00329', 'PRD-A-KEL-0140', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00329', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00329', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 3, 1780000, 5340000, 1600000, 0, 540000, 'pcs'),
  ('TRX-A00329', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 1, 670000, 670000, 500000, 0, 170000, 'pcs'),
  ('TRX-A00329', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs'),
  ('TRX-A00329', 'PRD-A-AKS-0052', 'Memory Card 32GB', 1, 95000, 95000, 89000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00890', '2026-11-01 10:59:15+07:00', 'Eko Saputra 5', 'Admin', 30000, 0, 0, 30000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100889', '', '', '', 9000, NULL, '2026-11-01 10:59:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00890', 'PRD-A-KEL-0033', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01628', '2026-11-01 10:57:15+07:00', 'Umum', 'Admin', 7017000, 0, 3508500, 3508500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101627', '', '', '', 920000, NULL, '2026-11-01 10:57:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01628', 'PRD-A-AKS-0139', 'Case Samsung A03', 2, 34000, 68000, 21000, 0, 26000, 'pcs'),
  ('TRX-A01628', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 2, 2540000, 5080000, 2400000, 0, 280000, 'pcs'),
  ('TRX-A01628', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 1, 41000, 41000, 34000, 0, 7000, 'pcs'),
  ('TRX-A01628', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 3, 600000, 1800000, 400000, 0, 600000, 'pcs'),
  ('TRX-A01628', 'PRD-A-AKS-0069', 'Handsfree Vivo', 1, 28000, 28000, 21000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01697', '2026-11-01 10:50:12+07:00', 'Umum', 'Admin', 160000, 0, 160000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101696', '', '', '', 35000, NULL, '2026-11-01 10:50:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01697', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 2, 14000, 28000, 9000, 0, 10000, 'pcs'),
  ('TRX-A01697', 'PRD-A-KEL-0158', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01697', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 3, 43000, 129000, 35000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00919', '2026-11-01 10:29:35+07:00', 'Umum', 'Admin', 5794000, 0, 5794000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100918', '', '', '', 566000, NULL, '2026-11-01 10:29:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00919', 'PRD-A-AKS-0138', 'Tempered Glass Oppo', 3, 16000, 48000, 11000, 0, 15000, 'pcs'),
  ('TRX-A00919', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 3, 1870000, 5610000, 1700000, 0, 510000, 'pcs'),
  ('TRX-A00919', 'PRD-A-KEL-0196', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00919', 'PRD-A-AKS-0163', 'Kartu Perdana XL', 1, 24000, 24000, 16000, 0, 8000, 'pcs'),
  ('TRX-A00919', 'PRD-A-AKS-0013', 'Case Samsung A03', 2, 41000, 82000, 29000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01828', '2026-11-01 10:20:52+07:00', 'Umum', 'Admin', 8070000, 0, 0, 8070000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101827', '', '', '', 914000, NULL, '2026-11-01 10:20:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01828', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 1, 9000, 9000, 6000, 0, 3000, 'pcs'),
  ('TRX-A01828', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 3, 1010000, 3030000, 800000, 0, 630000, 'pcs'),
  ('TRX-A01828', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 2, 41000, 82000, 30000, 0, 22000, 'pcs'),
  ('TRX-A01828', 'PRD-A-HP-0491', 'HP REDMI V7 2/32 86419', 2, 2300000, 4600000, 2200000, 0, 200000, 'pcs'),
  ('TRX-A01828', 'PRD-A-KEL-0166', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01828', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 2, 14000, 28000, 9000, 0, 10000, 'pcs'),
  ('TRX-A01828', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01828', 'PRD-A-AKS-0084', 'Memory Card 64GB', 3, 95000, 285000, 82000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00594', '2026-11-01 10:18:52+07:00', 'Umum', 'Admin', 12553500, 0, 12553500, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100593', '', '', '', 777000, NULL, '2026-11-01 10:18:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00594', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 2, 2110000, 4220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A00594', 'PRD-A-KEL-0186', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A00594', 'PRD-A-KEL-0095', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A00594', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 1, 2500000, 2500000, 2300000, 0, 200000, 'pcs'),
  ('TRX-A00594', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A00594', 'PRD-A-AKS-0019', 'Kartu Perdana Telkomsel', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00594', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 2, 2020000, 4040000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A00594', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 2, 23000, 46000, 14000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00614', '2026-11-01 09:59:16+07:00', 'Nur Halimah', 'Admin', 6390000, 0, 0, 6390000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100613', '', '', '', 739000, NULL, '2026-11-01 09:59:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00614', 'PRD-A-KEL-0020', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00614', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 1, 1180000, 1180000, 1100000, 0, 80000, 'pcs'),
  ('TRX-A00614', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 1, 52000, 52000, 46000, 0, 6000, 'pcs'),
  ('TRX-A00614', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A00614', 'PRD-A-KEL-0046', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00614', 'PRD-A-KEL-0108', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A00614', 'PRD-A-AKS-0206', 'Tempered Glass Vivo', 2, 15000, 30000, 7000, 0, 16000, 'pcs'),
  ('TRX-A00614', 'PRD-A-AKS-0088', 'Case Redmi 9A', 3, 43000, 129000, 34000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01233', '2026-11-01 09:49:47+07:00', 'Joko Prasetyo 2', 'Admin', 7778000, 0, 7778000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101232', '', '', '', 1172000, NULL, '2026-11-01 09:49:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01233', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 3, 1050000, 3150000, 800000, 0, 750000, 'pcs'),
  ('TRX-A01233', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 2, 1060000, 2120000, 900000, 0, 320000, 'pcs'),
  ('TRX-A01233', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 1, 2500000, 2500000, 2400000, 0, 100000, 'pcs'),
  ('TRX-A01233', 'PRD-A-KEL-0131', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01507', '2026-11-01 09:49:28+07:00', 'Umum', 'Admin', 7864000, 0, 7864000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101506', '', '', '', 716500, NULL, '2026-11-01 09:49:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01507', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 2, 2560000, 5120000, 2400000, 0, 320000, 'pcs'),
  ('TRX-A01507', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01507', 'PRD-A-KEL-0188', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01507', 'PRD-A-AKS-0057', 'Case Redmi 9A', 3, 37000, 111000, 26000, 0, 33000, 'pcs'),
  ('TRX-A01507', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 1, 33000, 33000, 28000, 0, 5000, 'pcs'),
  ('TRX-A01507', 'PRD-A-HP-0454', 'HP INFINIX A16 4/128 75084', 2, 1160000, 2320000, 1000000, 0, 320000, 'pcs'),
  ('TRX-A01507', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01507', 'PRD-A-KEL-0009', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00397', '2026-11-01 09:46:23+07:00', 'Joko Prasetyo 4', 'Admin', 13736000, 0, 13736000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100396', '', '', '', 1204500, NULL, '2026-11-01 09:46:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00397', 'PRD-A-AKS-0221', 'Memory Card 32GB', 2, 88000, 176000, 76000, 0, 24000, 'pcs'),
  ('TRX-A00397', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A00397', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 2, 970000, 1940000, 900000, 0, 140000, 'pcs'),
  ('TRX-A00397', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 1, 2910000, 2910000, 2700000, 0, 210000, 'pcs'),
  ('TRX-A00397', 'PRD-A-AKS-0074', 'Handsfree Oppo', 2, 49000, 98000, 39000, 0, 20000, 'pcs'),
  ('TRX-A00397', 'PRD-A-KEL-0027', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A00397', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01063', '2026-11-01 09:36:53+07:00', 'Yusuf Maulana 5', 'Admin', 3213000, 0, 3213000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101062', '', '', '', 378000, NULL, '2026-11-01 09:36:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01063', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 1, 25000, 25000, 19000, 0, 6000, 'pcs'),
  ('TRX-A01063', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 2, 69000, 138000, 58000, 0, 22000, 'pcs'),
  ('TRX-A01063', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs'),
  ('TRX-A01063', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01707', '2026-11-01 09:11:34+07:00', 'Umum', 'Admin', 9340000, 0, 9340000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101706', '', '', '', 523000, NULL, '2026-11-01 09:11:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01707', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A01707', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 3, 2590000, 7770000, 2500000, 0, 270000, 'pcs'),
  ('TRX-A01707', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 1, 30000, 30000, 17000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01759', '2026-11-01 08:57:08+07:00', 'Siti Aisyah 2', 'Admin', 157000, 0, 157000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101758', '', '', '', 34000, NULL, '2026-11-01 08:57:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01759', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A01759', 'PRD-A-KEL-0073', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01840', '2026-11-01 08:55:36+07:00', 'Lilis Suryani', 'Admin', 5543000, 0, 5543000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101839', '', '', '', 285000, NULL, '2026-11-01 08:55:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01840', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 1, 2770000, 2770000, 2700000, 0, 70000, 'pcs'),
  ('TRX-A01840', 'PRD-A-AKS-0021', 'Handsfree Samsung', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A01840', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 1, 2680000, 2680000, 2500000, 0, 180000, 'pcs'),
  ('TRX-A01840', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 3, 25000, 75000, 16000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00684', '2026-11-01 08:37:58+07:00', 'Fajar Nugroho 4', 'Admin', 5487000, 0, 5487000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100683', '', '', '', 677000, NULL, '2026-11-01 08:37:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00684', 'PRD-A-KEL-0174', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00684', 'PRD-A-AKS-0071', 'Case Oppo A57', 3, 31000, 93000, 19000, 0, 36000, 'pcs'),
  ('TRX-A00684', 'PRD-A-AKS-0063', 'Case Samsung A03', 1, 40000, 40000, 35000, 0, 5000, 'pcs'),
  ('TRX-A00684', 'PRD-A-AKS-0021', 'Handsfree Samsung', 3, 18000, 54000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00684', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 2, 48000, 96000, 35000, 0, 26000, 'pcs'),
  ('TRX-A00684', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 1, 2560000, 2560000, 2400000, 0, 160000, 'pcs'),
  ('TRX-A00684', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 2, 1310000, 2620000, 1100000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00876', '2026-11-01 08:29:41+07:00', 'Umum', 'Admin', 6420000, 0, 3210000, 3210000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100875', '', '', '', 720000, NULL, '2026-11-01 08:29:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00876', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01564', '2026-11-01 08:10:01+07:00', 'Umum', 'Admin', 3578000, 0, 3578000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101563', '', '', '', 707000, NULL, '2026-11-01 08:10:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01564', 'PRD-A-HP-0291', 'HP ITEL Y16 3/64 82632', 3, 860000, 2580000, 700000, 0, 480000, 'pcs'),
  ('TRX-A01564', 'PRD-A-AKS-0073', 'Memory Card 64GB', 1, 35000, 35000, 31000, 0, 4000, 'pcs'),
  ('TRX-A01564', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 2, 25000, 50000, 19000, 0, 12000, 'pcs'),
  ('TRX-A01564', 'PRD-A-KEL-0016', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01564', 'PRD-A-HP-0348', 'HP REALME C15 8/256 21999', 1, 910000, 910000, 700000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00501', '2026-11-01 08:00:25+07:00', 'Siti Aisyah 2', 'Admin', 3026000, 0, 3026000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100500', '', '', '', 191000, NULL, '2026-11-01 08:00:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00501', 'PRD-A-HP-0050', 'HP REALME S23 2/16 76169', 1, 2860000, 2860000, 2700000, 0, 160000, 'pcs'),
  ('TRX-A00501', 'PRD-A-KEL-0092', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00501', 'PRD-A-KEL-0022', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00501', 'PRD-A-KEL-0009', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01800', '2026-10-31 20:59:15+07:00', 'Umum', 'Admin', 10796000, 0, 10796000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101799', '', '', '', 911000, NULL, '2026-10-31 20:59:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01800', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 2, 2110000, 4220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A01800', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A01800', 'PRD-A-KEL-0143', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01800', 'PRD-A-KEL-0182', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01800', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 2, 1900000, 3800000, 1700000, 0, 400000, 'pcs'),
  ('TRX-A01800', 'PRD-A-KEL-0090', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00699', '2026-10-31 20:17:41+07:00', 'Rudi Hartono 5', 'Admin', 2994000, 0, 2994000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100698', '', '', '', 840000, NULL, '2026-10-31 20:17:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00699', 'PRD-A-HP-0510', 'HP SAMSUNG Y91C 2/32 52223', 1, 350000, 350000, 300000, 0, 50000, 'pcs'),
  ('TRX-A00699', 'PRD-A-AKS-0226', 'Memory Card 32GB', 2, 85000, 170000, 78000, 0, 14000, 'pcs'),
  ('TRX-A00699', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 2, 64000, 128000, 51000, 0, 26000, 'pcs'),
  ('TRX-A00699', 'PRD-A-AKS-0149', 'Case Samsung A03', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00699', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 3, 740000, 2220000, 500000, 0, 720000, 'pcs'),
  ('TRX-A00699', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00699', 'PRD-A-KEL-0017', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00325', '2026-10-31 20:14:58+07:00', 'Agus Wijaya 2', 'Admin', 3117000, 0, 3117000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100324', '', '', '', 236000, NULL, '2026-10-31 20:14:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00325', 'PRD-A-AKS-0235', 'Handsfree Xiaomi', 3, 32000, 96000, 22000, 0, 30000, 'pcs'),
  ('TRX-A00325', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 1, 2870000, 2870000, 2700000, 0, 170000, 'pcs'),
  ('TRX-A00325', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 1, 64000, 64000, 51000, 0, 13000, 'pcs'),
  ('TRX-A00325', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 2, 32000, 64000, 24000, 0, 16000, 'pcs'),
  ('TRX-A00325', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 1, 23000, 23000, 16000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00674', '2026-10-31 20:14:00+07:00', 'Sri Wahyuni 5', 'Admin', 3274000, 0, 3274000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100673', '', '', '', 426000, NULL, '2026-10-31 20:14:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00674', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00674', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 2, 1610000, 3220000, 1400000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01904', '2026-10-31 19:19:41+07:00', 'Umum', 'Admin', 13749000, 0, 13749000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101903', '', '', '', 1834500, NULL, '2026-10-31 19:19:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01904', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 3, 540000, 1620000, 300000, 0, 720000, 'pcs'),
  ('TRX-A01904', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 1, 22000, 22000, 10000, 0, 12000, 'pcs'),
  ('TRX-A01904', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 3, 2020000, 6060000, 1800000, 0, 660000, 'pcs'),
  ('TRX-A01904', 'PRD-A-KEL-0188', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01904', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 3, 41000, 123000, 34000, 0, 21000, 'pcs'),
  ('TRX-A01904', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 2, 1620000, 3240000, 1500000, 0, 240000, 'pcs'),
  ('TRX-A01904', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 1, 2680000, 2680000, 2500000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00973', '2026-10-31 19:18:20+07:00', 'Umum', 'Admin', 7898000, 0, 7898000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100972', '', '', '', 638000, NULL, '2026-10-31 19:18:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00973', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 2, 39000, 78000, 30000, 0, 18000, 'pcs'),
  ('TRX-A00973', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A00973', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 1, 2540000, 2540000, 2400000, 0, 140000, 'pcs'),
  ('TRX-A00973', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 2, 1180000, 2360000, 1100000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01659', '2026-10-31 18:57:47+07:00', 'Yusuf Maulana 2', 'Admin', 15138000, 0, 15138000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101658', '', '', '', 1156000, NULL, '2026-10-31 18:57:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01659', 'PRD-A-AKS-0084', 'Memory Card 64GB', 2, 95000, 190000, 82000, 0, 26000, 'pcs'),
  ('TRX-A01659', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01659', 'PRD-A-AKS-0041', 'Tempered Glass Vivo', 2, 19000, 38000, 5000, 0, 28000, 'pcs'),
  ('TRX-A01659', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A01659', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 2, 1370000, 2740000, 1300000, 0, 140000, 'pcs'),
  ('TRX-A01659', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 1, 1280000, 1280000, 1200000, 0, 80000, 'pcs'),
  ('TRX-A01659', 'PRD-A-HP-0150', 'HP OPPO Y55S 8/256 41252', 3, 1300000, 3900000, 1200000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00530', '2026-10-31 18:55:15+07:00', 'Umum', 'Admin', 2224000, 0, 1112000, 1112000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100529', '', '', '', 81000, NULL, '2026-10-31 18:55:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00530', 'PRD-A-KEL-0018', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00530', 'PRD-A-KEL-0145', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00530', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 1, 2160000, 2160000, 2100000, 0, 60000, 'pcs'),
  ('TRX-A00530', 'PRD-A-KEL-0114', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01587', '2026-10-31 18:40:54+07:00', 'Joko Prasetyo 3', 'Admin', 5749000, 0, 5749000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101586', '', '', '', 644000, NULL, '2026-10-31 18:40:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01587', 'PRD-A-HP-0175', 'HP REALME S23 4/64 80825', 2, 410000, 820000, 300000, 0, 220000, 'pcs'),
  ('TRX-A01587', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 1, 2560000, 2560000, 2500000, 0, 60000, 'pcs'),
  ('TRX-A01587', 'PRD-A-HP-0454', 'HP INFINIX A16 4/128 75084', 1, 1160000, 1160000, 1000000, 0, 160000, 'pcs'),
  ('TRX-A01587', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 2, 600000, 1200000, 500000, 0, 200000, 'pcs'),
  ('TRX-A01587', 'PRD-A-AKS-0233', 'Tempered Glass Vivo', 1, 9000, 9000, 5000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01098', '2026-10-31 18:34:37+07:00', 'Yusuf Maulana', 'Admin', 421000, 0, 421000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101097', '', '', '', 91000, NULL, '2026-10-31 18:34:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01098', 'PRD-A-KEL-0142', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A01098', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 3, 22000, 66000, 10000, 0, 36000, 'pcs'),
  ('TRX-A01098', 'PRD-A-KEL-0111', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01098', 'PRD-A-KEL-0188', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01098', 'PRD-A-KEL-0130', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01098', 'PRD-A-AKS-0179', 'Memory Card 32GB', 3, 102000, 306000, 88000, 0, 42000, 'pcs'),
  ('TRX-A01098', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01328', '2026-10-31 18:15:57+07:00', 'Umum', 'Admin', 4147000, 0, 4147000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101327', '', '', '', 334000, NULL, '2026-10-31 18:15:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01328', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A01328', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 2, 33000, 66000, 25000, 0, 16000, 'pcs'),
  ('TRX-A01328', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 3, 55000, 165000, 49000, 0, 18000, 'pcs'),
  ('TRX-A01328', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 1, 2350000, 2350000, 2300000, 0, 50000, 'pcs'),
  ('TRX-A01328', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 1, 26000, 26000, 16000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00340', '2026-10-31 17:57:28+07:00', 'Budi Santoso 3', 'Admin', 16336500, 0, 8168250, 8168250, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100339', '', '', '', 876000, NULL, '2026-10-31 17:57:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00340', 'PRD-A-AKS-0043', 'Case Oppo A57', 1, 28000, 28000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00340', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A00340', 'PRD-A-KEL-0106', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00340', 'PRD-A-HP-0351', 'HP REDMI V5S 3/32 54249', 1, 2700000, 2700000, 2500000, 0, 200000, 'pcs'),
  ('TRX-A00340', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 2, 1960000, 3920000, 1900000, 0, 120000, 'pcs'),
  ('TRX-A00340', 'PRD-A-KEL-0097', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00340', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 3, 2420000, 7260000, 2300000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00223', '2026-10-31 17:56:27+07:00', 'Umum', 'Admin', 4110000, 0, 0, 4110000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100222', '', '', '', 210000, NULL, '2026-10-31 17:56:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00223', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 3, 1370000, 4110000, 1300000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00441', '2026-10-31 17:50:16+07:00', 'Siti Aisyah', 'Admin', 608000, 0, 608000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100440', '', '', '', 131000, NULL, '2026-10-31 17:50:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00441', 'PRD-A-KEL-0090', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00441', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 3, 51000, 153000, 44000, 0, 21000, 'pcs'),
  ('TRX-A00441', 'PRD-A-HP-0510', 'HP SAMSUNG Y91C 2/32 52223', 1, 350000, 350000, 300000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;
