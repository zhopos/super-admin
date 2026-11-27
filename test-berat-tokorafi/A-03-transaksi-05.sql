-- ============================================================================
-- TEST BERAT TOKORAFI — Dataset A (1.000 produk + 2.000 transaksi)
-- File: A-03-transaksi-05.sql  (bagian 5 dari 7 langkah ini — jalankan berurutan)
-- Isi: transaksi: 319, transaksi_detail: 1467
-- Transaksi 28 hari terakhir + detail (induk & detail satu unit).
-- Semua INSERT memakai ON CONFLICT DO NOTHING — aman dijalankan 2x dan
-- tidak bentrok dengan seed bawaan tokorafi (TES Kopi, TRX-8250237222,
-- CBG-UTAMA, PLG-UMUM). Dibuat oleh gen-tokorafi.js (deterministik).
-- ============================================================================

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00304', '2026-11-09 14:42:20+07:00', 'Andi Kurnia 4', 'Admin', 15470000, 0, 15470000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100303', '', '', '', 636000, NULL, '2026-11-09 14:42:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00304', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A00304', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 3, 2350000, 7050000, 2300000, 0, 150000, 'pcs'),
  ('TRX-A00304', 'PRD-A-KEL-0047', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00304', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 3, 1960000, 5880000, 1900000, 0, 180000, 'pcs'),
  ('TRX-A00304', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 1, 820000, 820000, 600000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00923', '2026-11-09 14:41:30+07:00', 'Umum', 'Admin', 12719000, 0, 12719000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100922', '', '', '', 1111000, NULL, '2026-11-09 14:41:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00923', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 1, 2090000, 2090000, 1900000, 0, 190000, 'pcs'),
  ('TRX-A00923', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 3, 2730000, 8190000, 2500000, 0, 690000, 'pcs'),
  ('TRX-A00923', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00923', 'PRD-A-KEL-0121', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00923', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 3, 47000, 141000, 42000, 0, 15000, 'pcs'),
  ('TRX-A00923', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 1, 2200000, 2200000, 2000000, 0, 200000, 'pcs'),
  ('TRX-A00923', 'PRD-A-KEL-0026', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00215', '2026-11-09 14:39:52+07:00', 'Rina Marlina 4', 'Admin', 6732000, 0, 6732000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100214', '', '', '', 1084000, NULL, '2026-11-09 14:39:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00215', 'PRD-A-KEL-0182', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00215', 'PRD-A-KEL-0177', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00215', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs'),
  ('TRX-A00215', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 2, 700000, 1400000, 500000, 0, 400000, 'pcs'),
  ('TRX-A00215', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A00215', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 2, 55000, 110000, 50000, 0, 10000, 'pcs'),
  ('TRX-A00215', 'PRD-A-KEL-0145', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01824', '2026-11-09 14:19:28+07:00', 'Fitri Rahmawati 4', 'Admin', 1766000, 0, 883000, 883000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101823', '', '', '', 486000, NULL, '2026-11-09 14:19:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01824', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 2, 830000, 1660000, 600000, 0, 460000, 'pcs'),
  ('TRX-A01824', 'PRD-A-AKS-0054', 'Batre Samsung J1', 1, 40000, 40000, 30000, 0, 10000, 'pcs'),
  ('TRX-A01824', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 2, 33000, 66000, 25000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00884', '2026-11-09 14:11:32+07:00', 'Dedi Supriadi 2', 'Admin', 6726000, 0, 3363000, 3363000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100883', '', '', '', 527000, NULL, '2026-11-09 14:11:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00884', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 1, 2500000, 2500000, 2400000, 0, 100000, 'pcs'),
  ('TRX-A00884', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 2, 56000, 112000, 45000, 0, 22000, 'pcs'),
  ('TRX-A00884', 'PRD-A-AKS-0064', 'Case Redmi 9A', 3, 38000, 114000, 25000, 0, 39000, 'pcs'),
  ('TRX-A00884', 'PRD-A-KEL-0047', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00884', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 3, 1320000, 3960000, 1200000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01721', '2026-11-09 14:09:15+07:00', 'Nur Halimah 3', 'Admin', 1998000, 0, 1998000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101720', '', '', '', 352000, NULL, '2026-11-09 14:09:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01721', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A01721', 'PRD-A-AKS-0137', 'Tempered Glass Samsung', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A01721', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 2, 30000, 60000, 18000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00349', '2026-11-09 14:04:27+07:00', 'Umum', 'Admin', 4830000, 0, 4830000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100348', '', '', '', 630000, NULL, '2026-11-09 14:04:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00349', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01542', '2026-11-09 13:58:48+07:00', 'Umum', 'Admin', 2304000, 0, 2304000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101541', '', '', '', 174000, NULL, '2026-11-09 13:58:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01542', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 2, 1070000, 2140000, 1000000, 0, 140000, 'pcs'),
  ('TRX-A01542', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 1, 25000, 25000, 19000, 0, 6000, 'pcs'),
  ('TRX-A01542', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01542', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 3, 33000, 99000, 25000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00790', '2026-11-09 13:38:23+07:00', 'Lilis Suryani 4', 'Admin', 16267000, 0, 8133500, 8133500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100789', '', '', '', 1846000, NULL, '2026-11-09 13:38:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00790', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 2, 23000, 46000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00790', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 3, 22000, 66000, 15000, 0, 21000, 'pcs'),
  ('TRX-A00790', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 1, 55000, 55000, 48000, 0, 7000, 'pcs'),
  ('TRX-A00790', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs'),
  ('TRX-A00790', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 2, 2600000, 5200000, 2400000, 0, 400000, 'pcs'),
  ('TRX-A00790', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs'),
  ('TRX-A00790', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 1, 1040000, 1040000, 900000, 0, 140000, 'pcs'),
  ('TRX-A00790', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 2, 1500000, 3000000, 1300000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01229', '2026-11-09 13:33:42+07:00', 'Andi Kurnia 5', 'Admin', 6465000, 0, 0, 6465000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101228', '', '', '', 647000, NULL, '2026-11-09 13:33:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01229', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs'),
  ('TRX-A01229', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 3, 25000, 75000, 13000, 0, 36000, 'pcs'),
  ('TRX-A01229', 'PRD-A-KEL-0114', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01229', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 1, 2560000, 2560000, 2400000, 0, 160000, 'pcs'),
  ('TRX-A01229', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 2, 1810000, 3620000, 1600000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00453', '2026-11-09 13:26:05+07:00', 'Umum', 'Admin', 8636000, 0, 8636000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100452', '', '', '', 561000, NULL, '2026-11-09 13:26:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00453', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A00453', 'PRD-A-KEL-0008', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00453', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 1, 33000, 33000, 25000, 0, 8000, 'pcs'),
  ('TRX-A00453', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 1, 2690000, 2690000, 2600000, 0, 90000, 'pcs'),
  ('TRX-A00453', 'PRD-A-KEL-0094', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00774', '2026-11-09 13:23:14+07:00', 'Dedi Supriadi 5', 'Admin', 1377500, 0, 1377500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100773', '', '', '', 261600, NULL, '2026-11-09 13:23:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00774', 'PRD-A-KEL-0076', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00774', 'PRD-A-KEL-0174', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00774', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 1, 1090000, 1090000, 900000, 0, 190000, 'pcs'),
  ('TRX-A00774', 'PRD-A-KEL-0154', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00774', 'PRD-A-KEL-0161', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00774', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 3, 64000, 192000, 51000, 0, 39000, 'pcs'),
  ('TRX-A00774', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A00774', 'PRD-A-KEL-0145', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00525', '2026-11-09 13:14:01+07:00', 'D''Angelo Cell', 'Admin', 7134000, 0, 7134000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100524', '', '', '', 792000, NULL, '2026-11-09 13:14:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00525', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 1, 2550000, 2550000, 2300000, 0, 250000, 'pcs'),
  ('TRX-A00525', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 2, 2250000, 4500000, 2000000, 0, 500000, 'pcs'),
  ('TRX-A00525', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00111', '2026-11-09 13:11:25+07:00', 'D''Angelo Cell', 'Admin', 10082500, 0, 10082500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100110', '', '', '', 1205100, NULL, '2026-11-09 13:11:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00111', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 1, 38000, 38000, 23000, 0, 15000, 'pcs'),
  ('TRX-A00111', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A00111', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00111', 'PRD-A-KEL-0005', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00111', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 3, 790000, 2370000, 600000, 0, 570000, 'pcs'),
  ('TRX-A00111', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 1, 2010000, 2010000, 1800000, 0, 210000, 'pcs'),
  ('TRX-A00111', 'PRD-A-KEL-0182', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01749', '2026-11-09 12:51:08+07:00', 'Eko Saputra 2', 'Admin', 8060000, 0, 8060000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101748', '', '', '', 860000, NULL, '2026-11-09 12:51:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01749', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 2, 1110000, 2220000, 900000, 0, 420000, 'pcs'),
  ('TRX-A01749', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 2, 740000, 1480000, 600000, 0, 280000, 'pcs'),
  ('TRX-A01749', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01296', '2026-11-09 12:14:08+07:00', 'Lilis Suryani 2', 'Admin', 1590000, 0, 795000, 795000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101295', '', '', '', 190000, NULL, '2026-11-09 12:14:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01296', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01364', '2026-11-09 11:52:04+07:00', 'Dewi Lestari', 'Admin', 2964000, 0, 2964000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101363', '', '', '', 335000, NULL, '2026-11-09 11:52:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01364', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 1, 2290000, 2290000, 2200000, 0, 90000, 'pcs'),
  ('TRX-A01364', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 1, 500000, 500000, 300000, 0, 200000, 'pcs'),
  ('TRX-A01364', 'PRD-A-KEL-0193', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A01364', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 3, 48000, 144000, 35000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01647', '2026-11-09 11:40:10+07:00', 'Umum', 'Admin', 14759000, 0, 0, 14759000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101646', '', '', '', 1033500, NULL, '2026-11-09 11:40:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01647', 'PRD-A-KEL-0123', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01647', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 2, 1780000, 3560000, 1600000, 0, 360000, 'pcs'),
  ('TRX-A01647', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 1, 2950000, 2950000, 2800000, 0, 150000, 'pcs'),
  ('TRX-A01647', 'PRD-A-KEL-0140', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01647', 'PRD-A-KEL-0012', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01647', 'PRD-A-HP-0142', 'HP VIVO A57 3/32 10794', 1, 740000, 740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01647', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs'),
  ('TRX-A01647', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 3, 1050000, 3150000, 1000000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01877', '2026-11-09 11:26:14+07:00', 'Umum', 'Admin', 5887000, 0, 5887000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101876', '', '', '', 801000, NULL, '2026-11-09 11:26:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01877', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 2, 740000, 1480000, 600000, 0, 280000, 'pcs'),
  ('TRX-A01877', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 1, 1040000, 1040000, 900000, 0, 140000, 'pcs'),
  ('TRX-A01877', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 1, 830000, 830000, 600000, 0, 230000, 'pcs'),
  ('TRX-A01877', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs'),
  ('TRX-A01877', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01877', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 2, 23000, 46000, 14000, 0, 18000, 'pcs'),
  ('TRX-A01877', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 1, 51000, 51000, 44000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00330', '2026-11-09 11:24:06+07:00', 'Umum', 'Admin', 3510000, 0, 3510000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100329', '', '', '', 210000, NULL, '2026-11-09 11:24:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00330', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01509', '2026-11-09 11:22:41+07:00', 'Yusuf Maulana 2', 'Admin', 10000000, 0, 5000000, 5000000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101508', '', '', '', 1045000, NULL, '2026-11-09 11:22:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01509', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A01509', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01509', 'PRD-A-AKS-0201', 'Memory Card 32GB', 3, 38000, 114000, 27000, 0, 33000, 'pcs'),
  ('TRX-A01509', 'PRD-A-KEL-0032', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01509', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 3, 480000, 1440000, 300000, 0, 540000, 'pcs'),
  ('TRX-A01509', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A01509', 'PRD-A-KEL-0148', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01509', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00400', '2026-11-09 11:11:04+07:00', 'Umum', 'Admin', 25335000, 0, 25335000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100399', '', '', '', 2173000, NULL, '2026-11-09 11:11:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00400', 'PRD-A-AKS-0155', 'Handsfree Samsung', 1, 40000, 40000, 31000, 0, 9000, 'pcs'),
  ('TRX-A00400', 'PRD-A-HP-0272', 'HP ITEL 6A 4/128 52530', 3, 2720000, 8160000, 2500000, 0, 660000, 'pcs'),
  ('TRX-A00400', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A00400', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 3, 1710000, 5130000, 1500000, 0, 630000, 'pcs'),
  ('TRX-A00400', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 3, 1290000, 3870000, 1200000, 0, 270000, 'pcs'),
  ('TRX-A00400', 'PRD-A-KEL-0017', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00400', 'PRD-A-AKS-0113', 'Tempered Glass Samsung', 1, 15000, 15000, 7000, 0, 8000, 'pcs'),
  ('TRX-A00400', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 1, 2290000, 2290000, 2100000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00761', '2026-11-09 11:05:30+07:00', 'Fajar Nugroho 3', 'Admin', 5336000, 0, 2668000, 2668000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100760', '', '', '', 226000, NULL, '2026-11-09 11:05:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00761', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A00761', 'PRD-A-AKS-0165', 'Case Vivo Y20', 2, 43000, 86000, 31000, 0, 24000, 'pcs'),
  ('TRX-A00761', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 2, 2580000, 5160000, 2500000, 0, 160000, 'pcs'),
  ('TRX-A00761', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 2, 31000, 62000, 17000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00791', '2026-11-09 10:54:32+07:00', 'Umum', 'Admin', 3330000, 0, 1665000, 1665000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100790', '', '', '', 280000, NULL, '2026-11-09 10:54:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00791', 'PRD-A-AKS-0038', 'Case Vivo Y20', 1, 40000, 40000, 26000, 0, 14000, 'pcs'),
  ('TRX-A00791', 'PRD-A-KEL-0193', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A00791', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 2, 1630000, 3260000, 1500000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00940', '2026-11-09 10:31:11+07:00', 'Budi Santoso 4', 'Admin', 11364000, 0, 11364000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100939', '', '', '', 1062000, NULL, '2026-11-09 10:31:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00940', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 1, 1210000, 1210000, 1000000, 0, 210000, 'pcs'),
  ('TRX-A00940', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 3, 2590000, 7770000, 2500000, 0, 270000, 'pcs'),
  ('TRX-A00940', 'PRD-A-KEL-0032', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00940', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 3, 18000, 54000, 8000, 0, 30000, 'pcs'),
  ('TRX-A00940', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A00940', 'PRD-A-HP-0291', 'HP ITEL Y16 3/64 82632', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00940', 'PRD-A-KEL-0129', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00940', 'PRD-A-HP-0391', 'HP INFINIX A03 3/32 13495', 2, 670000, 1340000, 500000, 0, 340000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01280', '2026-11-09 10:15:21+07:00', 'Sri Wahyuni 2', 'Admin', 120000, 0, 120000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101279', '', '', '', 18000, NULL, '2026-11-09 10:15:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01280', 'PRD-A-AKS-0160', 'Memory Card 32GB', 3, 40000, 120000, 34000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00992', '2026-11-09 10:09:06+07:00', 'Sri Wahyuni 4', 'Admin', 102000, 0, 102000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100991', '', '', '', 24000, NULL, '2026-11-09 10:09:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00992', 'PRD-A-AKS-0027', 'Batre Samsung J1', 2, 51000, 102000, 39000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00290', '2026-11-09 10:08:19+07:00', 'Nur Halimah 2', 'Admin', 111000, 0, 111000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100289', '', '', '', 22000, NULL, '2026-11-09 10:08:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00290', 'PRD-A-KEL-0193', 'Snack wafer', 2, 10000, 20000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00290', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 1, 55000, 55000, 49000, 0, 6000, 'pcs'),
  ('TRX-A00290', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01090', '2026-11-09 10:00:12+07:00', 'Rina Marlina 2', 'Admin', 81000, 0, 81000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101089', '', '', '', 23000, NULL, '2026-11-09 10:00:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01090', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01090', 'PRD-A-AKS-0198', 'Batre Oppo A57', 3, 19000, 57000, 14000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00852', '2026-11-09 09:28:02+07:00', 'Sri Wahyuni 5', 'Admin', 3450000, 0, 3450000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100851', '', '', '', 683000, NULL, '2026-11-09 09:28:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00852', 'PRD-A-AKS-0213', 'Memory Card 16GB', 3, 72000, 216000, 65000, 0, 21000, 'pcs'),
  ('TRX-A00852', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 2, 20000, 40000, 14000, 0, 12000, 'pcs'),
  ('TRX-A00852', 'PRD-A-HP-0254', 'HP VIVO J5 2/16 85377', 3, 1000000, 3000000, 800000, 0, 600000, 'pcs'),
  ('TRX-A00852', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A00852', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A00852', 'PRD-A-AKS-0155', 'Handsfree Samsung', 3, 40000, 120000, 31000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01161', '2026-11-09 09:21:28+07:00', 'Rudi Hartono 3', 'Admin', 5663000, 0, 5663000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101160', '', '', '', 734000, NULL, '2026-11-09 09:21:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01161', 'PRD-A-AKS-0045', 'Memory Card 16GB', 2, 58000, 116000, 53000, 0, 10000, 'pcs'),
  ('TRX-A01161', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01161', 'PRD-A-AKS-0174', 'Case Redmi 9A', 2, 41000, 82000, 26000, 0, 30000, 'pcs'),
  ('TRX-A01161', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 1, 600000, 600000, 500000, 0, 100000, 'pcs'),
  ('TRX-A01161', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 1, 830000, 830000, 600000, 0, 230000, 'pcs'),
  ('TRX-A01161', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 3, 580000, 1740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01161', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 21000, 0, 42000, 'pcs'),
  ('TRX-A01161', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 1, 2070000, 2070000, 2000000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01558', '2026-11-09 09:18:47+07:00', 'Umum', 'Admin', 6052000, 0, 6052000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101557', '', '', '', 844000, NULL, '2026-11-09 09:18:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01558', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A01558', 'PRD-A-KEL-0074', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01558', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 2, 600000, 1200000, 500000, 0, 200000, 'pcs'),
  ('TRX-A01558', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 2, 960000, 1920000, 800000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00422', '2026-11-09 09:09:15+07:00', 'Umum', 'Admin', 5868000, 0, 5868000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100421', '', '', '', 565000, NULL, '2026-11-09 09:09:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00422', 'PRD-A-AKS-0019', 'Kartu Perdana Telkomsel', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00422', 'PRD-A-AKS-0158', 'Kabel Charger 2m', 1, 24000, 24000, 11000, 0, 13000, 'pcs'),
  ('TRX-A00422', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 3, 42000, 126000, 30000, 0, 36000, 'pcs'),
  ('TRX-A00422', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 3, 1860000, 5580000, 1700000, 0, 480000, 'pcs'),
  ('TRX-A00422', 'PRD-A-AKS-0069', 'Handsfree Vivo', 3, 28000, 84000, 21000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00503', '2026-11-09 09:07:53+07:00', 'Intan Permata 3', 'Admin', 15000, 0, 15000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100502', '', '', '', 5000, NULL, '2026-11-09 09:07:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00503', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 1, 15000, 15000, 10000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01554', '2026-11-09 09:07:13+07:00', 'Lilis Suryani', 'Admin', 940000, 0, 940000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101553', '', '', '', 240000, NULL, '2026-11-09 09:07:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01554', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 1, 940000, 940000, 700000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01590', '2026-11-09 08:52:16+07:00', 'Umum', 'Admin', 15499000, 0, 15499000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101589', '', '', '', 1411000, NULL, '2026-11-09 08:52:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01590', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 1, 2720000, 2720000, 2600000, 0, 120000, 'pcs'),
  ('TRX-A01590', 'PRD-A-KEL-0101', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01590', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A01590', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01590', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 3, 1730000, 5190000, 1600000, 0, 390000, 'pcs'),
  ('TRX-A01590', 'PRD-A-KEL-0125', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01590', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 1, 1150000, 1150000, 900000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00597', '2026-11-09 08:36:50+07:00', 'Umum', 'Admin', 7120000, 0, 7120000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100596', '', '', '', 606000, NULL, '2026-11-09 08:36:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00597', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 2, 2310000, 4620000, 2100000, 0, 420000, 'pcs'),
  ('TRX-A00597', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 1, 18000, 18000, 13000, 0, 5000, 'pcs'),
  ('TRX-A00597', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 1, 2480000, 2480000, 2300000, 0, 180000, 'pcs'),
  ('TRX-A00597', 'PRD-A-KEL-0091', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01282', '2026-11-09 08:33:14+07:00', 'Lilis Suryani 2', 'Admin', 14880000, 0, 14880000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101281', '', '', '', 780000, NULL, '2026-11-09 08:33:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01282', 'PRD-A-HP-0272', 'HP ITEL 6A 4/128 52530', 1, 2720000, 2720000, 2500000, 0, 220000, 'pcs'),
  ('TRX-A01282', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 2, 2600000, 5200000, 2500000, 0, 200000, 'pcs'),
  ('TRX-A01282', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 3, 2320000, 6960000, 2200000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01040', '2026-11-09 08:30:42+07:00', 'Nur Halimah 4', 'Admin', 7706000, 0, 7706000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101039', '', '', '', 393000, NULL, '2026-11-09 08:30:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01040', 'PRD-A-KEL-0007', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01040', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 2, 2110000, 4220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A01040', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 2, 1680000, 3360000, 1600000, 0, 160000, 'pcs'),
  ('TRX-A01040', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 3, 41000, 123000, 37000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01277', '2026-11-09 08:25:29+07:00', 'Dewi Lestari 3', 'Admin', 17354000, 0, 17354000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101276', '', '', '', 1386000, NULL, '2026-11-09 08:25:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01277', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 2, 2090000, 4180000, 2000000, 0, 180000, 'pcs'),
  ('TRX-A01277', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 1, 910000, 910000, 700000, 0, 210000, 'pcs'),
  ('TRX-A01277', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs'),
  ('TRX-A01277', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A01277', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01277', 'PRD-A-AKS-0221', 'Memory Card 32GB', 2, 88000, 176000, 76000, 0, 24000, 'pcs'),
  ('TRX-A01277', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 2, 1350000, 2700000, 1200000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01030', '2026-11-09 08:10:46+07:00', 'Agus Wijaya', 'Admin', 16898000, 0, 8449000, 8449000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101029', '', '', '', 1542000, NULL, '2026-11-09 08:10:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01030', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A01030', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs'),
  ('TRX-A01030', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A01030', 'PRD-A-AKS-0143', 'Batre Samsung J1', 2, 34000, 68000, 23000, 0, 22000, 'pcs'),
  ('TRX-A01030', 'PRD-A-KEL-0063', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01030', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A01030', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 3, 2220000, 6660000, 2000000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01883', '2026-11-09 08:06:50+07:00', 'Umum', 'Admin', 5907000, 0, 5907000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101882', '', '', '', 1098500, NULL, '2026-11-09 08:06:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01883', 'PRD-A-KEL-0061', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01883', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 3, 480000, 1440000, 300000, 0, 540000, 'pcs'),
  ('TRX-A01883', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 2, 1050000, 2100000, 900000, 0, 300000, 'pcs'),
  ('TRX-A01883', 'PRD-A-AKS-0045', 'Memory Card 16GB', 3, 58000, 174000, 53000, 0, 15000, 'pcs'),
  ('TRX-A01883', 'PRD-A-HP-0111', 'HP OPPO A57 4/128 32620', 1, 2120000, 2120000, 1900000, 0, 220000, 'pcs'),
  ('TRX-A01883', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 3, 22000, 66000, 15000, 0, 21000, 'pcs'),
  ('TRX-A01883', 'PRD-A-KEL-0124', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01728', '2026-11-08 20:49:04+07:00', 'Fajar Nugroho 5', 'Admin', 13052000, 0, 13052000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101727', '', '', '', 1070000, NULL, '2026-11-08 20:49:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01728', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 3, 1650000, 4950000, 1500000, 0, 450000, 'pcs'),
  ('TRX-A01728', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 1, 1990000, 1990000, 1800000, 0, 190000, 'pcs'),
  ('TRX-A01728', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 1, 1350000, 1350000, 1200000, 0, 150000, 'pcs'),
  ('TRX-A01728', 'PRD-A-AKS-0128', 'Batre Vivo Y91', 2, 41000, 82000, 36000, 0, 10000, 'pcs'),
  ('TRX-A01728', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A01728', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 1, 1990000, 1990000, 1900000, 0, 90000, 'pcs'),
  ('TRX-A01728', 'PRD-A-KEL-0108', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01922', '2026-11-08 20:31:39+07:00', 'Rudi Hartono 3', 'Admin', 4864000, 0, 0, 4864000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101921', '', '', '', 246000, NULL, '2026-11-08 20:31:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01922', 'PRD-A-KEL-0166', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01922', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00613', '2026-11-08 20:24:14+07:00', 'Umum', 'Admin', 3568000, 0, 1784000, 1784000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100612', '', '', '', 553000, NULL, '2026-11-08 20:24:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00613', 'PRD-A-KEL-0171', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00613', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 2, 1650000, 3300000, 1400000, 0, 500000, 'pcs'),
  ('TRX-A00613', 'PRD-A-AKS-0038', 'Case Vivo Y20', 1, 40000, 40000, 26000, 0, 14000, 'pcs'),
  ('TRX-A00613', 'PRD-A-KEL-0045', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A00613', 'PRD-A-KEL-0161', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01169', '2026-11-08 20:22:16+07:00', 'Umum', 'Admin', 343000, 0, 0, 343000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101168', '', '', '', 71000, NULL, '2026-11-08 20:22:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01169', 'PRD-A-AKS-0113', 'Tempered Glass Samsung', 3, 15000, 45000, 7000, 0, 24000, 'pcs'),
  ('TRX-A01169', 'PRD-A-KEL-0073', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A01169', 'PRD-A-KEL-0017', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01169', 'PRD-A-KEL-0141', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01169', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 1, 55000, 55000, 48000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00234', '2026-11-08 20:15:42+07:00', 'Fajar Nugroho 5', 'Admin', 3624000, 0, 0, 3624000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100233', '', '', '', 282000, NULL, '2026-11-08 20:15:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00234', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs'),
  ('TRX-A00234', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 3, 1180000, 3540000, 1100000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00763', '2026-11-08 20:12:17+07:00', 'Rudi Hartono 5', 'Admin', 1460000, 0, 1460000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100762', '', '', '', 460000, NULL, '2026-11-08 20:12:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00763', 'PRD-A-HP-0075', 'HP VIVO Y53 2/16 24312', 1, 520000, 520000, 300000, 0, 220000, 'pcs'),
  ('TRX-A00763', 'PRD-A-HP-0194', 'HP REALME C15 2/16 38996', 1, 940000, 940000, 700000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00565', '2026-11-08 20:09:03+07:00', 'Dewi Lestari 3', 'Admin', 9548000, 0, 0, 9548000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100564', '', '', '', 718000, NULL, '2026-11-08 20:09:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00565', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A00565', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A00565', 'PRD-A-KEL-0112', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00565', 'PRD-A-KEL-0147', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00565', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 1, 820000, 820000, 600000, 0, 220000, 'pcs'),
  ('TRX-A00565', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 1, 1730000, 1730000, 1600000, 0, 130000, 'pcs'),
  ('TRX-A00565', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00820', '2026-11-08 20:01:25+07:00', 'Umum', 'Admin', 9198500, 0, 0, 9198500, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100819', '', '', '', 778100, NULL, '2026-11-08 20:01:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00820', 'PRD-A-KEL-0144', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00820', 'PRD-A-KEL-0083', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00820', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A00820', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 2, 1420000, 2840000, 1200000, 0, 440000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00762', '2026-11-08 19:57:26+07:00', 'Umum', 'Admin', 4879000, 0, 4879000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100761', '', '', '', 759000, NULL, '2026-11-08 19:57:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00762', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 1, 35000, 35000, 20000, 0, 15000, 'pcs'),
  ('TRX-A00762', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 3, 1540000, 4620000, 1300000, 0, 720000, 'pcs'),
  ('TRX-A00762', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 2, 20000, 40000, 14000, 0, 12000, 'pcs'),
  ('TRX-A00762', 'PRD-A-AKS-0153', 'Memory Card 32GB', 2, 92000, 184000, 86000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00798', '2026-11-08 19:52:21+07:00', 'Umum', 'Admin', 2917000, 0, 2917000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100797', '', '', '', 903000, NULL, '2026-11-08 19:52:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00798', 'PRD-A-KEL-0176', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00798', 'PRD-A-KEL-0196', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00798', 'PRD-A-HP-0142', 'HP VIVO A57 3/32 10794', 3, 740000, 2220000, 500000, 0, 720000, 'pcs'),
  ('TRX-A00798', 'PRD-A-AKS-0150', 'Memory Card 16GB', 1, 55000, 55000, 41000, 0, 14000, 'pcs'),
  ('TRX-A00798', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 3, 46000, 138000, 33000, 0, 39000, 'pcs'),
  ('TRX-A00798', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A00798', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 1, 24000, 24000, 16000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01257', '2026-11-08 19:28:23+07:00', 'Umum', 'Admin', 10710500, 0, 0, 10710500, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101256', '', '', '', 495000, NULL, '2026-11-08 19:28:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01257', 'PRD-A-KEL-0015', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01257', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A01257', 'PRD-A-KEL-0091', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01257', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01257', 'PRD-A-KEL-0023', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00681', '2026-11-08 19:23:15+07:00', 'Fajar Nugroho', 'Admin', 4540000, 0, 0, 4540000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100680', '', '', '', 340000, NULL, '2026-11-08 19:23:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00681', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 2, 2270000, 4540000, 2100000, 0, 340000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01320', '2026-11-08 19:15:53+07:00', 'Rudi Hartono 5', 'Admin', 13919000, 0, 6959500, 6959500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101319', '', '', '', 1396000, NULL, '2026-11-08 19:15:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01320', 'PRD-A-AKS-0168', 'Memory Card 32GB', 3, 40000, 120000, 32000, 0, 24000, 'pcs'),
  ('TRX-A01320', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs'),
  ('TRX-A01320', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A01320', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 1, 740000, 740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01320', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A01320', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 2, 2970000, 5940000, 2800000, 0, 340000, 'pcs'),
  ('TRX-A01320', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A01320', 'PRD-A-KEL-0021', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01976', '2026-11-08 19:09:33+07:00', 'Umum', 'Admin', 11925500, 0, 11925500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101975', '', '', '', 688000, NULL, '2026-11-08 19:09:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01976', 'PRD-A-AKS-0027', 'Batre Samsung J1', 2, 51000, 102000, 39000, 0, 24000, 'pcs'),
  ('TRX-A01976', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 2, 2950000, 5900000, 2800000, 0, 300000, 'pcs'),
  ('TRX-A01976', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 3, 1910000, 5730000, 1800000, 0, 330000, 'pcs'),
  ('TRX-A01976', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01976', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 1, 24000, 24000, 15000, 0, 9000, 'pcs'),
  ('TRX-A01976', 'PRD-A-AKS-0143', 'Batre Samsung J1', 1, 34000, 34000, 23000, 0, 11000, 'pcs'),
  ('TRX-A01976', 'PRD-A-KEL-0023', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A01976', 'PRD-A-AKS-0226', 'Memory Card 32GB', 1, 85000, 85000, 78000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01002', '2026-11-08 18:35:57+07:00', 'Sri Wahyuni 5', 'Admin', 290000, 0, 290000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101001', '', '', '', 28000, NULL, '2026-11-08 18:35:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01002', 'PRD-A-KEL-0123', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01002', 'PRD-A-AKS-0108', 'Memory Card 16GB', 3, 96000, 288000, 87000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01823', '2026-11-08 18:33:57+07:00', 'Fajar Nugroho 3', 'Admin', 22526000, 0, 0, 22526000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101822', '', '', '', 1398500, NULL, '2026-11-08 18:33:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01823', 'PRD-A-AKS-0146', 'Memory Card 32GB', 1, 91000, 91000, 82000, 0, 9000, 'pcs'),
  ('TRX-A01823', 'PRD-A-KEL-0125', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01823', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 2, 2770000, 5540000, 2600000, 0, 340000, 'pcs'),
  ('TRX-A01823', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A01823', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A01823', 'PRD-A-KEL-0143', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01823', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 2, 2960000, 5920000, 2800000, 0, 320000, 'pcs'),
  ('TRX-A01823', 'PRD-A-KEL-0061', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00062', '2026-11-08 18:33:18+07:00', 'Umum', 'Admin', 7453000, 0, 7453000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100061', '', '', '', 631000, NULL, '2026-11-08 18:33:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00062', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs'),
  ('TRX-A00062', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00062', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 3, 46000, 138000, 35000, 0, 33000, 'pcs'),
  ('TRX-A00062', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 2, 2090000, 4180000, 2000000, 0, 180000, 'pcs'),
  ('TRX-A00062', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 1, 1560000, 1560000, 1400000, 0, 160000, 'pcs'),
  ('TRX-A00062', 'PRD-A-KEL-0090', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00070', '2026-11-08 18:32:06+07:00', 'Ayu Lestari', 'Admin', 120000, 0, 120000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100069', '', '', '', 30000, NULL, '2026-11-08 18:32:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00070', 'PRD-A-AKS-0054', 'Batre Samsung J1', 3, 40000, 120000, 30000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00183', '2026-11-08 18:30:23+07:00', 'Maya Putri 3', 'Admin', 1615000, 0, 1615000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100182', '', '', '', 353000, NULL, '2026-11-08 18:30:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00183', 'PRD-A-AKS-0038', 'Case Vivo Y20', 1, 40000, 40000, 26000, 0, 14000, 'pcs'),
  ('TRX-A00183', 'PRD-A-AKS-0239', 'Batre Samsung J1', 1, 43000, 43000, 30000, 0, 13000, 'pcs'),
  ('TRX-A00183', 'PRD-A-KEL-0110', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00183', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A00183', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 2, 57000, 114000, 45000, 0, 24000, 'pcs'),
  ('TRX-A00183', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A00183', 'PRD-A-AKS-0221', 'Memory Card 32GB', 3, 88000, 264000, 76000, 0, 36000, 'pcs'),
  ('TRX-A00183', 'PRD-A-AKS-0172', 'Case Samsung A03', 3, 24000, 72000, 20000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01047', '2026-11-08 17:45:31+07:00', 'Hendra Gunawan 3', 'Admin', 12221000, 0, 12221000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101046', '', '', '', 876000, NULL, '2026-11-08 17:45:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01047', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01047', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 3, 2590000, 7770000, 2500000, 0, 270000, 'pcs'),
  ('TRX-A01047', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 3, 15000, 45000, 8000, 0, 21000, 'pcs'),
  ('TRX-A01047', 'PRD-A-AKS-0191', 'Batre Samsung J1', 3, 54000, 162000, 39000, 0, 45000, 'pcs'),
  ('TRX-A01047', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 3, 25000, 75000, 19000, 0, 18000, 'pcs'),
  ('TRX-A01047', 'PRD-A-AKS-0073', 'Memory Card 64GB', 1, 35000, 35000, 31000, 0, 4000, 'pcs'),
  ('TRX-A01047', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 3, 1370000, 4110000, 1200000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01982', '2026-11-08 17:44:10+07:00', 'Sri Wahyuni', 'Admin', 9046000, 0, 9046000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101981', '', '', '', 619000, NULL, '2026-11-08 17:44:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01982', 'PRD-A-AKS-0049', 'Memory Card 32GB', 3, 84000, 252000, 81000, 0, 9000, 'pcs'),
  ('TRX-A01982', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs'),
  ('TRX-A01982', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 2, 47000, 94000, 42000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00170', '2026-11-08 17:38:03+07:00', 'Umum', 'Admin', 7353000, 0, 7353000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100169', '', '', '', 628900, NULL, '2026-11-08 17:38:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00170', 'PRD-A-HP-0229', 'HP REDMI Y55S 3/32 33051', 2, 1520000, 3040000, 1400000, 0, 240000, 'pcs'),
  ('TRX-A00170', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 2, 27000, 54000, 23000, 0, 8000, 'pcs'),
  ('TRX-A00170', 'PRD-A-HP-0070', 'HP SAMSUNG 9A 4/128 90887', 2, 2070000, 4140000, 1900000, 0, 340000, 'pcs'),
  ('TRX-A00170', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 3, 14000, 42000, 9000, 0, 15000, 'pcs'),
  ('TRX-A00170', 'PRD-A-KEL-0102', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00170', 'PRD-A-KEL-0076', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00170', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 1, 20000, 20000, 7000, 0, 13000, 'pcs'),
  ('TRX-A00170', 'PRD-A-AKS-0030', 'Case Samsung A03', 2, 25000, 50000, 20000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01151', '2026-11-08 17:31:35+07:00', 'Eko Saputra 5', 'Admin', 72000, 0, 72000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101150', '', '', '', 27000, NULL, '2026-11-08 17:31:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01151', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 3, 24000, 72000, 15000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00144', '2026-11-08 17:10:33+07:00', 'Umum', 'Admin', 16093000, 0, 16093000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100143', '', '', '', 1529000, NULL, '2026-11-08 17:10:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00144', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 1, 18000, 18000, 14000, 0, 4000, 'pcs'),
  ('TRX-A00144', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 3, 75000, 225000, 50000, 0, 75000, 'pcs'),
  ('TRX-A00144', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 3, 1390000, 4170000, 1200000, 0, 570000, 'pcs'),
  ('TRX-A00144', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs'),
  ('TRX-A00144', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 2, 2930000, 5860000, 2700000, 0, 460000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00904', '2026-11-08 17:07:38+07:00', 'Umum', 'Admin', 5479000, 0, 2739500, 2739500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100903', '', '', '', 347000, NULL, '2026-11-08 17:07:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00904', 'PRD-A-KEL-0173', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00904', 'PRD-A-KEL-0131', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00904', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 1, 1550000, 1550000, 1400000, 0, 150000, 'pcs'),
  ('TRX-A00904', 'PRD-A-KEL-0035', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00904', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 2, 1870000, 3740000, 1800000, 0, 140000, 'pcs'),
  ('TRX-A00904', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 3, 30000, 90000, 18000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01024', '2026-11-08 17:02:07+07:00', 'Yusuf Maulana 5', 'Admin', 1119000, 0, 1119000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101023', '', '', '', 171000, NULL, '2026-11-08 17:02:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01024', 'PRD-A-HP-0510', 'HP SAMSUNG Y91C 2/32 52223', 3, 350000, 1050000, 300000, 0, 150000, 'pcs'),
  ('TRX-A01024', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 3, 23000, 69000, 16000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00136', '2026-11-08 16:23:32+07:00', 'Maya Putri 5', 'Admin', 9266000, 0, 9266000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100135', '', '', '', 1468000, NULL, '2026-11-08 16:23:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00136', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 1, 1420000, 1420000, 1200000, 0, 220000, 'pcs'),
  ('TRX-A00136', 'PRD-A-HP-0292', 'HP VIVO C3 4/64 55632', 2, 850000, 1700000, 600000, 0, 500000, 'pcs'),
  ('TRX-A00136', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A00136', 'PRD-A-AKS-0030', 'Case Samsung A03', 2, 25000, 50000, 20000, 0, 10000, 'pcs'),
  ('TRX-A00136', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 2, 520000, 1040000, 400000, 0, 240000, 'pcs'),
  ('TRX-A00136', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A00136', 'PRD-A-KEL-0144', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01632', '2026-11-08 16:23:09+07:00', 'Nur Halimah 2', 'Admin', 135000, 0, 0, 135000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101631', '', '', '', 51000, NULL, '2026-11-08 16:23:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01632', 'PRD-A-AKS-0067', 'Case Redmi 9A', 1, 39000, 39000, 30000, 0, 9000, 'pcs'),
  ('TRX-A01632', 'PRD-A-AKS-0167', 'Tempered Glass Oppo', 3, 32000, 96000, 18000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00306', '2026-11-08 16:09:59+07:00', 'Umum', 'Admin', 11062000, 0, 11062000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100305', '', '', '', 1094000, NULL, '2026-11-08 16:09:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00306', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00306', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 2, 860000, 1720000, 700000, 0, 320000, 'pcs'),
  ('TRX-A00306', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 3, 1370000, 4110000, 1300000, 0, 210000, 'pcs'),
  ('TRX-A00306', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs'),
  ('TRX-A00306', 'PRD-A-AKS-0043', 'Case Oppo A57', 1, 28000, 28000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00306', 'PRD-A-KEL-0120', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00306', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 1, 2560000, 2560000, 2400000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01979', '2026-11-08 16:08:49+07:00', 'Maya Putri 2', 'Admin', 6324000, 0, 6324000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101978', '', '', '', 722000, NULL, '2026-11-08 16:08:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01979', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01979', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 3, 36000, 108000, 26000, 0, 30000, 'pcs'),
  ('TRX-A01979', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 1, 1900000, 1900000, 1700000, 0, 200000, 'pcs'),
  ('TRX-A01979', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00395', '2026-11-08 16:03:37+07:00', 'Agus Wijaya 5', 'Admin', 15358000, 0, 0, 15358000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100394', '', '', '', 1345500, NULL, '2026-11-08 16:03:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00395', 'PRD-A-AKS-0114', 'Memory Card 16GB', 2, 44000, 88000, 30000, 0, 28000, 'pcs'),
  ('TRX-A00395', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 2, 2400000, 4800000, 2300000, 0, 200000, 'pcs'),
  ('TRX-A00395', 'PRD-A-HP-0050', 'HP REALME S23 2/16 76169', 2, 2860000, 5720000, 2700000, 0, 320000, 'pcs'),
  ('TRX-A00395', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 3, 1090000, 3270000, 900000, 0, 570000, 'pcs'),
  ('TRX-A00395', 'PRD-A-KEL-0156', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A00395', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00395', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 1, 1420000, 1420000, 1200000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01165', '2026-11-08 16:02:13+07:00', 'Intan Permata 2', 'Admin', 65000, 0, 65000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101164', '', '', '', 10000, NULL, '2026-11-08 16:02:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01165', 'PRD-A-KEL-0063', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01528', '2026-11-08 15:56:00+07:00', 'Lilis Suryani 2', 'Admin', 6978000, 0, 6978000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101527', '', '', '', 955000, NULL, '2026-11-08 15:56:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01528', 'PRD-A-AKS-0023', 'Memory Card 32GB', 3, 53000, 159000, 45000, 0, 24000, 'pcs'),
  ('TRX-A01528', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 3, 61000, 183000, 46000, 0, 45000, 'pcs'),
  ('TRX-A01528', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs'),
  ('TRX-A01528', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01528', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 3, 580000, 1740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01528', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01547', '2026-11-08 15:51:56+07:00', 'Fitri Rahmawati 3', 'Admin', 7453000, 0, 3726500, 3726500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101546', '', '', '', 1429000, NULL, '2026-11-08 15:51:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01547', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 3, 700000, 2100000, 500000, 0, 600000, 'pcs'),
  ('TRX-A01547', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 3, 1410000, 4230000, 1200000, 0, 630000, 'pcs'),
  ('TRX-A01547', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A01547', 'PRD-A-KEL-0003', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A01547', 'PRD-A-KEL-0196', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01547', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 1, 930000, 930000, 800000, 0, 130000, 'pcs'),
  ('TRX-A01547', 'PRD-A-KEL-0185', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01547', 'PRD-A-AKS-0125', 'Handsfree Samsung', 1, 52000, 52000, 37000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01821', '2026-11-08 15:48:26+07:00', 'Eko Saputra 5', 'Admin', 9532000, 0, 4766000, 4766000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101820', '', '', '', 486000, NULL, '2026-11-08 15:48:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01821', 'PRD-A-AKS-0221', 'Memory Card 32GB', 1, 88000, 88000, 76000, 0, 12000, 'pcs'),
  ('TRX-A01821', 'PRD-A-KEL-0124', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01821', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A01821', 'PRD-A-AKS-0172', 'Case Samsung A03', 2, 24000, 48000, 20000, 0, 8000, 'pcs'),
  ('TRX-A01821', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A01821', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00120', '2026-11-08 15:26:40+07:00', 'Umum', 'Admin', 51000, 0, 25500, 25500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100119', '', '', '', 17400, NULL, '2026-11-08 15:26:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00120', 'PRD-A-KEL-0070', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00120', 'PRD-A-KEL-0150', 'Teh celup', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00120', 'PRD-A-KEL-0012', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00120', 'PRD-A-KEL-0030', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01246', '2026-11-08 15:18:06+07:00', 'Umum', 'Admin', 7065000, 0, 0, 7065000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101245', '', '', '', 577000, NULL, '2026-11-08 15:18:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01246', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 2, 1770000, 3540000, 1700000, 0, 140000, 'pcs'),
  ('TRX-A01246', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs'),
  ('TRX-A01246', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 3, 41000, 123000, 37000, 0, 12000, 'pcs'),
  ('TRX-A01246', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 3, 74000, 222000, 59000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00342', '2026-11-08 15:04:44+07:00', 'Umum', 'Admin', 2520000, 0, 1260000, 1260000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100341', '', '', '', 669000, NULL, '2026-11-08 15:04:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00342', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 3, 820000, 2460000, 600000, 0, 660000, 'pcs'),
  ('TRX-A00342', 'PRD-A-KEL-0176', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00561', '2026-11-08 14:56:56+07:00', 'Umum', 'Admin', 6597000, 0, 3298500, 3298500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100560', '', '', '', 260000, NULL, '2026-11-08 14:56:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00561', 'PRD-A-KEL-0029', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A00561', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs'),
  ('TRX-A00561', 'PRD-A-AKS-0186', 'Case Redmi 9A', 1, 25000, 25000, 14000, 0, 11000, 'pcs'),
  ('TRX-A00561', 'PRD-A-KEL-0119', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00561', 'PRD-A-KEL-0018', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00077', '2026-11-08 14:48:29+07:00', 'Umum', 'Admin', 14578000, 0, 14578000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100076', '', '', '', 1426000, NULL, '2026-11-08 14:48:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00077', 'PRD-A-KEL-0173', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00077', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 1, 1990000, 1990000, 1900000, 0, 90000, 'pcs'),
  ('TRX-A00077', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 3, 1540000, 4620000, 1300000, 0, 720000, 'pcs'),
  ('TRX-A00077', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 2, 18000, 36000, 14000, 0, 8000, 'pcs'),
  ('TRX-A00077', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A00077', 'PRD-A-KEL-0098', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00077', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 3, 1860000, 5580000, 1700000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00142', '2026-11-08 14:46:38+07:00', 'Umum', 'Admin', 10880000, 0, 10880000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100141', '', '', '', 882000, NULL, '2026-11-08 14:46:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00142', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs'),
  ('TRX-A00142', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs'),
  ('TRX-A00142', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00142', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00142', 'PRD-A-KEL-0052', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00142', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 2, 21000, 42000, 9000, 0, 24000, 'pcs'),
  ('TRX-A00142', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 3, 1990000, 5970000, 1900000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01432', '2026-11-08 14:37:22+07:00', 'Agus Wijaya 5', 'Admin', 1515000, 0, 1515000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101431', '', '', '', 475000, NULL, '2026-11-08 14:37:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01432', 'PRD-A-HP-0143', 'HP NOKIA Y53 4/128 49361', 3, 450000, 1350000, 300000, 0, 450000, 'pcs'),
  ('TRX-A01432', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 3, 51000, 153000, 44000, 0, 21000, 'pcs'),
  ('TRX-A01432', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01578', '2026-11-08 14:27:35+07:00', 'Fajar Nugroho 2', 'Admin', 4780000, 0, 4780000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101577', '', '', '', 549000, NULL, '2026-11-08 14:27:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01578', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs'),
  ('TRX-A01578', 'PRD-A-HP-0536', 'HP ITEL HOT30i 8/256 76951', 2, 1080000, 2160000, 1000000, 0, 160000, 'pcs'),
  ('TRX-A01578', 'PRD-A-KEL-0068', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01578', 'PRD-A-KEL-0060', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01796', '2026-11-08 13:56:49+07:00', 'Umum', 'Admin', 7641000, 0, 7641000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101795', '', '', '', 789000, NULL, '2026-11-08 13:56:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01796', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 1, 1870000, 1870000, 1700000, 0, 170000, 'pcs'),
  ('TRX-A01796', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 3, 580000, 1740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01796', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A01796', 'PRD-A-KEL-0158', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01796', 'PRD-A-AKS-0076', 'Handsfree Samsung', 2, 58000, 116000, 45000, 0, 26000, 'pcs'),
  ('TRX-A01796', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 1, 1820000, 1820000, 1700000, 0, 120000, 'pcs'),
  ('TRX-A01796', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 2, 41000, 82000, 30000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01386', '2026-11-08 13:55:41+07:00', 'Rudi Hartono 4', 'Admin', 11895000, 0, 11895000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101385', '', '', '', 1380000, NULL, '2026-11-08 13:55:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01386', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 1, 1330000, 1330000, 1200000, 0, 130000, 'pcs'),
  ('TRX-A01386', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 3, 1410000, 4230000, 1200000, 0, 630000, 'pcs'),
  ('TRX-A01386', 'PRD-A-KEL-0157', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01386', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 2, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A01386', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01989', '2026-11-08 13:54:40+07:00', 'Umum', 'Admin', 10152000, 0, 5076000, 5076000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101988', '', '', '', 1800500, NULL, '2026-11-08 13:54:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01989', 'PRD-A-KEL-0057', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01989', 'PRD-A-KEL-0044', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01989', 'PRD-A-HP-0231', 'HP REALME A03 4/128 26346', 3, 580000, 1740000, 400000, 0, 540000, 'pcs'),
  ('TRX-A01989', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 2, 2120000, 4240000, 1900000, 0, 440000, 'pcs'),
  ('TRX-A01989', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 1, 39000, 39000, 30000, 0, 9000, 'pcs'),
  ('TRX-A01989', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 1, 2600000, 2600000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A01989', 'PRD-A-KEL-0010', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01989', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 3, 500000, 1500000, 300000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01905', '2026-11-08 13:30:51+07:00', 'Umum', 'Admin', 4204000, 0, 4204000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101904', '', '', '', 509000, NULL, '2026-11-08 13:30:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01905', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 1, 2770000, 2770000, 2600000, 0, 170000, 'pcs'),
  ('TRX-A01905', 'PRD-A-AKS-0188', 'Batre Oppo A57', 1, 52000, 52000, 40000, 0, 12000, 'pcs'),
  ('TRX-A01905', 'PRD-A-AKS-0143', 'Batre Samsung J1', 3, 34000, 102000, 23000, 0, 33000, 'pcs'),
  ('TRX-A01905', 'PRD-A-AKS-0235', 'Handsfree Xiaomi', 3, 32000, 96000, 22000, 0, 30000, 'pcs'),
  ('TRX-A01905', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01905', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A01905', 'PRD-A-AKS-0055', 'Memory Card 16GB', 2, 66000, 132000, 56000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00434', '2026-11-08 13:26:11+07:00', 'Umum', 'Admin', 9976000, 0, 9976000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100433', '', '', '', 958000, NULL, '2026-11-08 13:26:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00434', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 1, 2780000, 2780000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A00434', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 2, 2700000, 5400000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A00434', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 3, 590000, 1770000, 400000, 0, 570000, 'pcs'),
  ('TRX-A00434', 'PRD-A-KEL-0151', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00434', 'PRD-A-KEL-0007', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01887', '2026-11-08 13:25:16+07:00', 'Fajar Nugroho 4', 'Admin', 12480000, 0, 12480000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101886', '', '', '', 1280000, NULL, '2026-11-08 13:25:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01887', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 2, 1850000, 3700000, 1600000, 0, 500000, 'pcs'),
  ('TRX-A01887', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 2, 2100000, 4200000, 1900000, 0, 400000, 'pcs'),
  ('TRX-A01887', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 2, 2290000, 4580000, 2100000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01113', '2026-11-08 13:21:19+07:00', 'Dedi Supriadi 2', 'Admin', 24498000, 0, 24498000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101112', '', '', '', 1958000, NULL, '2026-11-08 13:21:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01113', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A01113', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 1, 700000, 700000, 500000, 0, 200000, 'pcs'),
  ('TRX-A01113', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 2, 2560000, 5120000, 2400000, 0, 320000, 'pcs'),
  ('TRX-A01113', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 2, 2500000, 5000000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A01113', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A01113', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 3, 1170000, 3510000, 1000000, 0, 510000, 'pcs'),
  ('TRX-A01113', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs'),
  ('TRX-A01113', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 2, 34000, 68000, 20000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01682', '2026-11-08 13:12:00+07:00', 'Umum', 'Admin', 12682000, 0, 12682000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101681', '', '', '', 1121400, NULL, '2026-11-08 13:12:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01682', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 2, 26000, 52000, 16000, 0, 20000, 'pcs'),
  ('TRX-A01682', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 3, 1570000, 4710000, 1500000, 0, 210000, 'pcs'),
  ('TRX-A01682', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A01682', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 1, 69000, 69000, 58000, 0, 11000, 'pcs'),
  ('TRX-A01682', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 2, 670000, 1340000, 600000, 0, 140000, 'pcs'),
  ('TRX-A01682', 'PRD-A-KEL-0021', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01682', 'PRD-A-KEL-0006', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01682', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01420', '2026-11-08 13:02:12+07:00', 'Fajar Nugroho 5', 'Admin', 11700000, 0, 11700000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101419', '', '', '', 1040000, NULL, '2026-11-08 13:02:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01420', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 2, 2330000, 4660000, 2100000, 0, 460000, 'pcs'),
  ('TRX-A01420', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 2, 26000, 52000, 16000, 0, 20000, 'pcs'),
  ('TRX-A01420', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 2, 2700000, 5400000, 2500000, 0, 400000, 'pcs'),
  ('TRX-A01420', 'PRD-A-HP-0098', 'HP INFINIX 9A 3/64 25641', 1, 1550000, 1550000, 1400000, 0, 150000, 'pcs'),
  ('TRX-A01420', 'PRD-A-AKS-0198', 'Batre Oppo A57', 2, 19000, 38000, 14000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00309', '2026-11-08 12:55:08+07:00', 'Umum', 'Admin', 15990000, 0, 15990000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100308', '', '', '', 1858000, NULL, '2026-11-08 12:55:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00309', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 1, 670000, 670000, 500000, 0, 170000, 'pcs'),
  ('TRX-A00309', 'PRD-A-KEL-0150', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00309', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 2, 1620000, 3240000, 1400000, 0, 440000, 'pcs'),
  ('TRX-A00309', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 2, 2560000, 5120000, 2400000, 0, 320000, 'pcs'),
  ('TRX-A00309', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 2, 2370000, 4740000, 2300000, 0, 140000, 'pcs'),
  ('TRX-A00309', 'PRD-A-AKS-0116', 'Memory Card 16GB', 3, 88000, 264000, 76000, 0, 36000, 'pcs'),
  ('TRX-A00309', 'PRD-A-HP-0477', 'HP INFINIX C15 3/32 90452', 3, 650000, 1950000, 400000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00837', '2026-11-08 12:45:16+07:00', 'Joko Prasetyo 5', 'Admin', 2236000, 0, 1118000, 1118000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100836', '', '', '', 358000, NULL, '2026-11-08 12:45:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00837', 'PRD-A-AKS-0223', 'Memory Card 32GB', 1, 51000, 51000, 48000, 0, 3000, 'pcs'),
  ('TRX-A00837', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs'),
  ('TRX-A00837', 'PRD-A-AKS-0174', 'Case Redmi 9A', 3, 41000, 123000, 26000, 0, 45000, 'pcs'),
  ('TRX-A00837', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 2, 73000, 146000, 58000, 0, 30000, 'pcs'),
  ('TRX-A00837', 'PRD-A-KEL-0007', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00837', 'PRD-A-AKS-0031', 'Batre Samsung J1', 2, 58000, 116000, 50000, 0, 16000, 'pcs'),
  ('TRX-A00837', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 1, 41000, 41000, 30000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01997', '2026-11-08 12:26:09+07:00', 'Andi Kurnia 5', 'Admin', 9750000, 0, 9750000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101996', '', '', '', 1050000, NULL, '2026-11-08 12:26:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01997', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 3, 1510000, 4530000, 1300000, 0, 630000, 'pcs'),
  ('TRX-A01997', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 2, 2610000, 5220000, 2400000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00079', '2026-11-08 12:25:32+07:00', 'Eko Saputra 4', 'Admin', 1752000, 0, 1752000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100078', '', '', '', 101000, NULL, '2026-11-08 12:25:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00079', 'PRD-A-AKS-0235', 'Handsfree Xiaomi', 1, 32000, 32000, 22000, 0, 10000, 'pcs'),
  ('TRX-A00079', 'PRD-A-AKS-0138', 'Tempered Glass Oppo', 1, 16000, 16000, 11000, 0, 5000, 'pcs'),
  ('TRX-A00079', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A00079', 'PRD-A-KEL-0052', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00079', 'PRD-A-KEL-0166', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00937', '2026-11-08 12:21:36+07:00', 'Eko Saputra', 'Admin', 8684500, 0, 8684500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100936', '', '', '', 482100, NULL, '2026-11-08 12:21:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00937', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 1, 1110000, 1110000, 1000000, 0, 110000, 'pcs'),
  ('TRX-A00937', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 1, 520000, 520000, 300000, 0, 220000, 'pcs'),
  ('TRX-A00937', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 3, 2350000, 7050000, 2300000, 0, 150000, 'pcs'),
  ('TRX-A00937', 'PRD-A-KEL-0070', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01438', '2026-11-08 12:16:48+07:00', 'Fajar Nugroho 4', 'Admin', 14870000, 0, 14870000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101437', '', '', '', 1643000, NULL, '2026-11-08 12:16:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01438', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 2, 1760000, 3520000, 1700000, 0, 120000, 'pcs'),
  ('TRX-A01438', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs'),
  ('TRX-A01438', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs'),
  ('TRX-A01438', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 3, 750000, 2250000, 500000, 0, 750000, 'pcs'),
  ('TRX-A01438', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 2, 2230000, 4460000, 2000000, 0, 460000, 'pcs'),
  ('TRX-A01438', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 1, 20000, 20000, 7000, 0, 13000, 'pcs'),
  ('TRX-A01438', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 2, 15000, 30000, 10000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00548', '2026-11-08 11:40:07+07:00', 'Umum', 'Admin', 6577000, 0, 6577000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100547', '', '', '', 389500, NULL, '2026-11-08 11:40:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00548', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 3, 1700000, 5100000, 1600000, 0, 300000, 'pcs'),
  ('TRX-A00548', 'PRD-A-KEL-0068', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00548', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs'),
  ('TRX-A00548', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 2, 43000, 86000, 35000, 0, 16000, 'pcs'),
  ('TRX-A00548', 'PRD-A-KEL-0140', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01411', '2026-11-08 11:28:29+07:00', 'Umum', 'Admin', 2330000, 0, 1165000, 1165000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101410', '', '', '', 230000, NULL, '2026-11-08 11:28:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01411', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00129', '2026-11-08 11:15:06+07:00', 'Umum', 'Admin', 7497000, 0, 7497000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100128', '', '', '', 885000, NULL, '2026-11-08 11:15:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00129', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 1, 1940000, 1940000, 1700000, 0, 240000, 'pcs'),
  ('TRX-A00129', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00129', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 1, 890000, 890000, 800000, 0, 90000, 'pcs'),
  ('TRX-A00129', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 2, 2250000, 4500000, 2000000, 0, 500000, 'pcs'),
  ('TRX-A00129', 'PRD-A-KEL-0026', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00129', 'PRD-A-KEL-0074', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00129', 'PRD-A-KEL-0097', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01972', '2026-11-08 11:14:07+07:00', 'Rudi Hartono 3', 'Admin', 8136000, 0, 4068000, 4068000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101971', '', '', '', 649000, NULL, '2026-11-08 11:14:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01972', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 2, 2190000, 4380000, 2000000, 0, 380000, 'pcs'),
  ('TRX-A01972', 'PRD-A-KEL-0190', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01972', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 3, 45000, 135000, 33000, 0, 36000, 'pcs'),
  ('TRX-A01972', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01972', 'PRD-A-KEL-0020', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01972', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A01972', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 3, 9000, 27000, 6000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01605', '2026-11-08 10:58:59+07:00', 'Fitri Rahmawati 4', 'Admin', 12029000, 0, 0, 12029000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101604', '', '', '', 1336000, NULL, '2026-11-08 10:58:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01605', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A01605', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 1, 2160000, 2160000, 2100000, 0, 60000, 'pcs'),
  ('TRX-A01605', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 1, 56000, 56000, 45000, 0, 11000, 'pcs'),
  ('TRX-A01605', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 3, 15000, 45000, 10000, 0, 15000, 'pcs'),
  ('TRX-A01605', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A01605', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 3, 1620000, 4860000, 1400000, 0, 660000, 'pcs'),
  ('TRX-A01605', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01215', '2026-11-08 10:40:41+07:00', 'Umum', 'Admin', 159000, 0, 79500, 79500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101214', '', '', '', 45000, NULL, '2026-11-08 10:40:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01215', 'PRD-A-KEL-0184', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01215', 'PRD-A-AKS-0184', 'Kabel Charger 2m', 3, 45000, 135000, 32000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00905', '2026-11-08 10:22:40+07:00', 'Maya Putri 5', 'Admin', 4332000, 0, 0, 4332000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100904', '', '', '', 796000, NULL, '2026-11-08 10:22:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00905', 'PRD-A-AKS-0174', 'Case Redmi 9A', 2, 41000, 82000, 26000, 0, 30000, 'pcs'),
  ('TRX-A00905', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs'),
  ('TRX-A00905', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 1, 1050000, 1050000, 800000, 0, 250000, 'pcs'),
  ('TRX-A00905', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 2, 1540000, 3080000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A00905', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 2, 21000, 42000, 9000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00665', '2026-11-08 10:11:10+07:00', 'Eko Saputra 2', 'Admin', 132000, 0, 132000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100664', '', '', '', 67000, NULL, '2026-11-08 10:11:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00665', 'PRD-A-AKS-0041', 'Tempered Glass Vivo', 3, 19000, 57000, 5000, 0, 42000, 'pcs'),
  ('TRX-A00665', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 1, 75000, 75000, 50000, 0, 25000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01430', '2026-11-08 09:55:05+07:00', 'Rudi Hartono 5', 'Admin', 18757000, 0, 18757000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101429', '', '', '', 1444000, NULL, '2026-11-08 09:55:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01430', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A01430', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A01430', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A01430', 'PRD-A-AKS-0245', 'Batre Samsung J1', 3, 57000, 171000, 43000, 0, 42000, 'pcs'),
  ('TRX-A01430', 'PRD-A-KEL-0131', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01430', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A01430', 'PRD-A-AKS-0074', 'Handsfree Oppo', 2, 49000, 98000, 39000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00582', '2026-11-08 09:31:03+07:00', 'Intan Permata 4', 'Admin', 397000, 0, 198500, 198500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100581', '', '', '', 84000, NULL, '2026-11-08 09:31:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00582', 'PRD-A-AKS-0116', 'Memory Card 16GB', 1, 88000, 88000, 76000, 0, 12000, 'pcs'),
  ('TRX-A00582', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 1, 38000, 38000, 23000, 0, 15000, 'pcs'),
  ('TRX-A00582', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 2, 74000, 148000, 59000, 0, 30000, 'pcs'),
  ('TRX-A00582', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 1, 33000, 33000, 25000, 0, 8000, 'pcs'),
  ('TRX-A00582', 'PRD-A-KEL-0081', 'Pensil', 2, 2000, 4000, 1500, 0, 1000, 'pcs'),
  ('TRX-A00582', 'PRD-A-AKS-0088', 'Case Redmi 9A', 2, 43000, 86000, 34000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01297', '2026-11-08 09:23:49+07:00', 'Fajar Nugroho', 'Admin', 30000, 0, 30000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101296', '', '', '', 9000, NULL, '2026-11-08 09:23:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01297', 'PRD-A-KEL-0048', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01297', 'PRD-A-KEL-0151', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01622', '2026-11-08 09:18:55+07:00', 'Rina Marlina 3', 'Admin', 9819000, 0, 9819000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101621', '', '', '', 851000, NULL, '2026-11-08 09:18:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01622', 'PRD-A-KEL-0193', 'Snack wafer', 2, 10000, 20000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01622', 'PRD-A-KEL-0077', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01622', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 2, 1860000, 3720000, 1700000, 0, 320000, 'pcs'),
  ('TRX-A01622', 'PRD-A-AKS-0224', 'Case Samsung A03', 3, 48000, 144000, 35000, 0, 39000, 'pcs'),
  ('TRX-A01622', 'PRD-A-AKS-0186', 'Case Redmi 9A', 2, 25000, 50000, 14000, 0, 22000, 'pcs'),
  ('TRX-A01622', 'PRD-A-KEL-0149', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01622', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 2, 2930000, 5860000, 2700000, 0, 460000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01356', '2026-11-08 09:12:39+07:00', 'Sri Wahyuni 4', 'Admin', 143500, 0, 143500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101355', '', '', '', 57700, NULL, '2026-11-08 09:12:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01356', 'PRD-A-KEL-0070', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A01356', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs'),
  ('TRX-A01356', 'PRD-A-KEL-0097', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01356', 'PRD-A-KEL-0165', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01588', '2026-11-08 09:03:23+07:00', 'Umum', 'Admin', 1050000, 0, 1050000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101587', '', '', '', 50000, NULL, '2026-11-08 09:03:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01588', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 1, 1050000, 1050000, 1000000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00703', '2026-11-08 08:51:02+07:00', 'Hendra Gunawan 5', 'Admin', 23812500, 0, 11906250, 11906250, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100702', '', '', '', 2204700, NULL, '2026-11-08 08:51:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00703', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 1, 1940000, 1940000, 1700000, 0, 240000, 'pcs'),
  ('TRX-A00703', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 2, 1860000, 3720000, 1700000, 0, 320000, 'pcs'),
  ('TRX-A00703', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 3, 2600000, 7800000, 2400000, 0, 600000, 'pcs'),
  ('TRX-A00703', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 3, 54000, 162000, 47000, 0, 21000, 'pcs'),
  ('TRX-A00703', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 3, 1510000, 4530000, 1300000, 0, 630000, 'pcs'),
  ('TRX-A00703', 'PRD-A-KEL-0005', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00703', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 2, 2780000, 5560000, 2600000, 0, 360000, 'pcs'),
  ('TRX-A00703', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 3, 33000, 99000, 22000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00484', '2026-11-08 08:48:34+07:00', 'Sri Wahyuni', 'Admin', 16155000, 0, 8077500, 8077500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100483', '', '', '', 1073000, NULL, '2026-11-08 08:48:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00484', 'PRD-A-KEL-0058', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A00484', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 2, 20000, 40000, 14000, 0, 12000, 'pcs'),
  ('TRX-A00484', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 3, 2320000, 6960000, 2200000, 0, 360000, 'pcs'),
  ('TRX-A00484', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 3, 3030000, 9090000, 2800000, 0, 690000, 'pcs'),
  ('TRX-A00484', 'PRD-A-AKS-0193', 'Case Oppo A57', 2, 25000, 50000, 21000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00532', '2026-11-08 08:45:46+07:00', 'Fitri Rahmawati 2', 'Admin', 4862000, 0, 4862000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100531', '', '', '', 616000, NULL, '2026-11-08 08:45:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00532', 'PRD-A-AKS-0239', 'Batre Samsung J1', 1, 43000, 43000, 30000, 0, 13000, 'pcs'),
  ('TRX-A00532', 'PRD-A-AKS-0153', 'Memory Card 32GB', 1, 92000, 92000, 86000, 0, 6000, 'pcs'),
  ('TRX-A00532', 'PRD-A-KEL-0124', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00532', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00532', 'PRD-A-AKS-0174', 'Case Redmi 9A', 2, 41000, 82000, 26000, 0, 30000, 'pcs'),
  ('TRX-A00532', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 2, 1810000, 3620000, 1600000, 0, 420000, 'pcs'),
  ('TRX-A00532', 'PRD-A-AKS-0234', 'Case Samsung A03', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A00532', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 2, 460000, 920000, 400000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01995', '2026-11-08 08:22:51+07:00', 'Umum', 'Admin', 4756000, 0, 4756000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101994', '', '', '', 944000, NULL, '2026-11-08 08:22:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01995', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 2, 560000, 1120000, 400000, 0, 320000, 'pcs'),
  ('TRX-A01995', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 2, 600000, 1200000, 500000, 0, 200000, 'pcs'),
  ('TRX-A01995', 'PRD-A-KEL-0144', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01995', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 2, 1210000, 2420000, 1000000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01736', '2026-11-08 08:21:56+07:00', 'D''Angelo Cell', 'Admin', 39000, 0, 19500, 19500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101735', '', '', '', 6000, NULL, '2026-11-08 08:21:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01736', 'PRD-A-AKS-0156', 'Handsfree Oppo', 1, 39000, 39000, 33000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01207', '2026-11-08 08:19:13+07:00', 'Agus Wijaya 5', 'Admin', 6358000, 0, 6358000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101206', '', '', '', 612000, NULL, '2026-11-08 08:19:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01207', 'PRD-A-AKS-0149', 'Case Samsung A03', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01207', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 1, 740000, 740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01207', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 1, 1070000, 1070000, 1000000, 0, 70000, 'pcs'),
  ('TRX-A01207', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 1, 1620000, 1620000, 1500000, 0, 120000, 'pcs'),
  ('TRX-A01207', 'PRD-A-KEL-0112', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01207', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 1, 2870000, 2870000, 2700000, 0, 170000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00533', '2026-11-08 08:10:28+07:00', 'Fitri Rahmawati', 'Admin', 2820000, 0, 1410000, 1410000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100532', '', '', '', 420000, NULL, '2026-11-08 08:10:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00533', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01372', '2026-11-08 08:10:26+07:00', 'Siti Aisyah 3', 'Admin', 5010000, 0, 5010000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101371', '', '', '', 510000, NULL, '2026-11-08 08:10:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01372', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 3, 1670000, 5010000, 1500000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00966', '2026-11-08 08:08:35+07:00', 'Umum', 'Admin', 11591500, 0, 11591500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100965', '', '', '', 1290700, NULL, '2026-11-08 08:08:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00966', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A00966', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 2, 1260000, 2520000, 1100000, 0, 320000, 'pcs'),
  ('TRX-A00966', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 2, 1040000, 2080000, 900000, 0, 280000, 'pcs'),
  ('TRX-A00966', 'PRD-A-KEL-0005', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00496', '2026-11-08 08:05:47+07:00', 'Umum', 'Admin', 2120000, 0, 2120000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100495', '', '', '', 320000, NULL, '2026-11-08 08:05:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00496', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 2, 1060000, 2120000, 900000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00283', '2026-11-07 20:58:20+07:00', 'Sri Wahyuni 4', 'Admin', 70000, 0, 0, 70000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100282', '', '', '', 19000, NULL, '2026-11-07 20:58:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00283', 'PRD-A-KEL-0193', 'Snack wafer', 1, 10000, 10000, 8000, 0, 2000, 'pcs'),
  ('TRX-A00283', 'PRD-A-AKS-0206', 'Tempered Glass Vivo', 1, 15000, 15000, 7000, 0, 8000, 'pcs'),
  ('TRX-A00283', 'PRD-A-KEL-0015', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01592', '2026-11-07 20:36:53+07:00', 'Budi Santoso 2', 'Admin', 15567000, 0, 15567000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101591', '', '', '', 959000, NULL, '2026-11-07 20:36:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01592', 'PRD-A-AKS-0071', 'Case Oppo A57', 3, 31000, 93000, 19000, 0, 36000, 'pcs'),
  ('TRX-A01592', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 2, 2970000, 5940000, 2800000, 0, 340000, 'pcs'),
  ('TRX-A01592', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 1, 580000, 580000, 500000, 0, 80000, 'pcs'),
  ('TRX-A01592', 'PRD-A-KEL-0132', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01592', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs'),
  ('TRX-A01592', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01592', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00988', '2026-11-07 20:35:51+07:00', 'Andi Kurnia', 'Admin', 3858000, 0, 1929000, 1929000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100987', '', '', '', 728000, NULL, '2026-11-07 20:35:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00988', 'PRD-A-AKS-0187', 'Kartu Perdana XL', 3, 16000, 48000, 10000, 0, 18000, 'pcs'),
  ('TRX-A00988', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs'),
  ('TRX-A00988', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 2, 740000, 1480000, 500000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00602', '2026-11-07 20:33:59+07:00', 'Sri Wahyuni 2', 'Admin', 11420000, 0, 5710000, 5710000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100601', '', '', '', 1144000, NULL, '2026-11-07 20:33:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00602', 'PRD-A-AKS-0160', 'Memory Card 32GB', 2, 40000, 80000, 34000, 0, 12000, 'pcs'),
  ('TRX-A00602', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs'),
  ('TRX-A00602', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 2, 35000, 70000, 21000, 0, 28000, 'pcs'),
  ('TRX-A00602', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 2, 410000, 820000, 300000, 0, 220000, 'pcs'),
  ('TRX-A00602', 'PRD-A-KEL-0116', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00602', 'PRD-A-KEL-0101', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00602', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01949', '2026-11-07 20:29:36+07:00', 'Umum', 'Admin', 8153000, 0, 0, 8153000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101948', '', '', '', 321000, NULL, '2026-11-07 20:29:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01949', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 3, 2700000, 8100000, 2600000, 0, 300000, 'pcs'),
  ('TRX-A01949', 'PRD-A-KEL-0052', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01949', 'PRD-A-AKS-0169', 'Handsfree Oppo', 1, 29000, 29000, 14000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01348', '2026-11-07 20:26:27+07:00', 'Umum', 'Admin', 1867000, 0, 933500, 933500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101347', '', '', '', 570000, NULL, '2026-11-07 20:26:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01348', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A01348', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 1, 41000, 41000, 34000, 0, 7000, 'pcs'),
  ('TRX-A01348', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 2, 750000, 1500000, 500000, 0, 500000, 'pcs'),
  ('TRX-A01348', 'PRD-A-KEL-0142', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A01348', 'PRD-A-KEL-0194', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01348', 'PRD-A-KEL-0034', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A01348', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01348', 'PRD-A-AKS-0079', 'Handsfree Oppo', 3, 51000, 153000, 43000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01791', '2026-11-07 20:23:01+07:00', 'Eko Saputra 5', 'Admin', 10080000, 0, 10080000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101790', '', '', '', 1185000, NULL, '2026-11-07 20:23:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01791', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs'),
  ('TRX-A01791', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 1, 38000, 38000, 33000, 0, 5000, 'pcs'),
  ('TRX-A01791', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A01791', 'PRD-A-KEL-0176', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01791', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A01791', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 2, 41000, 82000, 30000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00119', '2026-11-07 19:39:53+07:00', 'Hendra Gunawan 4', 'Admin', 9893000, 0, 9893000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100118', '', '', '', 551500, NULL, '2026-11-07 19:39:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00119', 'PRD-A-AKS-0073', 'Memory Card 64GB', 3, 35000, 105000, 31000, 0, 12000, 'pcs'),
  ('TRX-A00119', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 3, 55000, 165000, 49000, 0, 18000, 'pcs'),
  ('TRX-A00119', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 1, 2870000, 2870000, 2700000, 0, 170000, 'pcs'),
  ('TRX-A00119', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 1, 1910000, 1910000, 1800000, 0, 110000, 'pcs'),
  ('TRX-A00119', 'PRD-A-KEL-0140', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00119', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A00119', 'PRD-A-KEL-0091', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00119', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 2, 0, 0, 0, 0, 0, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01931', '2026-11-07 19:39:26+07:00', 'Siti Aisyah 4', 'Admin', 4810000, 0, 2405000, 2405000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101930', '', '', '', 274000, NULL, '2026-11-07 19:39:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01931', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 3, 1590000, 4770000, 1500000, 0, 270000, 'pcs'),
  ('TRX-A01931', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00470', '2026-11-07 19:37:58+07:00', 'Hendra Gunawan 5', 'Admin', 12012000, 0, 12012000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100469', '', '', '', 835000, NULL, '2026-11-07 19:37:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00470', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs'),
  ('TRX-A00470', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 2, 2110000, 4220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A00470', 'PRD-A-AKS-0236', 'Memory Card 64GB', 1, 72000, 72000, 63000, 0, 9000, 'pcs'),
  ('TRX-A00470', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 1, 1940000, 1940000, 1700000, 0, 240000, 'pcs'),
  ('TRX-A00470', 'PRD-A-KEL-0120', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01506', '2026-11-07 19:20:59+07:00', 'Umum', 'Admin', 19971000, 0, 9985500, 9985500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101505', '', '', '', 1819000, NULL, '2026-11-07 19:20:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01506', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 1, 18000, 18000, 14000, 0, 4000, 'pcs'),
  ('TRX-A01506', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 2, 2350000, 4700000, 2100000, 0, 500000, 'pcs'),
  ('TRX-A01506', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 2, 2110000, 4220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A01506', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 1, 41000, 41000, 30000, 0, 11000, 'pcs'),
  ('TRX-A01506', 'PRD-A-KEL-0150', 'Teh celup', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01506', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 3, 2010000, 6030000, 1800000, 0, 630000, 'pcs'),
  ('TRX-A01506', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 3, 1650000, 4950000, 1500000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00556', '2026-11-07 18:59:17+07:00', 'Umum', 'Admin', 5448000, 0, 5448000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100555', '', '', '', 636000, NULL, '2026-11-07 18:59:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00556', 'PRD-A-KEL-0019', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00556', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01627', '2026-11-07 18:57:32+07:00', 'Siti Aisyah 2', 'Admin', 9703000, 0, 4851500, 4851500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101626', '', '', '', 1073000, NULL, '2026-11-07 18:57:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01627', 'PRD-A-AKS-0239', 'Batre Samsung J1', 1, 43000, 43000, 30000, 0, 13000, 'pcs'),
  ('TRX-A01627', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 2, 930000, 1860000, 700000, 0, 460000, 'pcs'),
  ('TRX-A01627', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 3, 2600000, 7800000, 2400000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01710', '2026-11-07 18:52:03+07:00', 'Hendra Gunawan 4', 'Admin', 7050000, 0, 7050000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101709', '', '', '', 645000, NULL, '2026-11-07 18:52:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01710', 'PRD-A-AKS-0063', 'Case Samsung A03', 3, 40000, 120000, 35000, 0, 15000, 'pcs'),
  ('TRX-A01710', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 3, 2310000, 6930000, 2100000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01651', '2026-11-07 18:49:19+07:00', 'Umum', 'Admin', 15936000, 0, 15936000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101650', '', '', '', 1693000, NULL, '2026-11-07 18:49:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01651', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A01651', 'PRD-A-AKS-0239', 'Batre Samsung J1', 3, 43000, 129000, 30000, 0, 39000, 'pcs'),
  ('TRX-A01651', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 3, 1110000, 3330000, 1000000, 0, 330000, 'pcs'),
  ('TRX-A01651', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 1, 29000, 29000, 25000, 0, 4000, 'pcs'),
  ('TRX-A01651', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A01651', 'PRD-A-AKS-0169', 'Handsfree Oppo', 2, 29000, 58000, 14000, 0, 30000, 'pcs'),
  ('TRX-A01651', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 2, 1320000, 2640000, 1200000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01125', '2026-11-07 18:27:08+07:00', 'Umum', 'Admin', 5885000, 0, 5885000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101124', '', '', '', 439000, NULL, '2026-11-07 18:27:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01125', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs'),
  ('TRX-A01125', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs'),
  ('TRX-A01125', 'PRD-A-KEL-0190', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01159', '2026-11-07 18:16:45+07:00', 'D''Angelo Cell', 'Admin', 5470000, 0, 5470000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101158', '', '', '', 350000, NULL, '2026-11-07 18:16:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01159', 'PRD-A-KEL-0182', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01159', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 1, 1050000, 1050000, 1000000, 0, 50000, 'pcs'),
  ('TRX-A01159', 'PRD-A-AKS-0113', 'Tempered Glass Samsung', 2, 15000, 30000, 7000, 0, 16000, 'pcs'),
  ('TRX-A01159', 'PRD-A-AKS-0191', 'Batre Samsung J1', 2, 54000, 108000, 39000, 0, 30000, 'pcs'),
  ('TRX-A01159', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 1, 1290000, 1290000, 1200000, 0, 90000, 'pcs'),
  ('TRX-A01159', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 1, 2950000, 2950000, 2800000, 0, 150000, 'pcs'),
  ('TRX-A01159', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01273', '2026-11-07 18:11:20+07:00', 'Maya Putri 2', 'Admin', 12234000, 0, 6117000, 6117000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101272', '', '', '', 1401000, NULL, '2026-11-07 18:11:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01273', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A01273', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 2, 1550000, 3100000, 1400000, 0, 300000, 'pcs'),
  ('TRX-A01273', 'PRD-A-AKS-0220', 'Tempered Glass Samsung', 2, 23000, 46000, 20000, 0, 6000, 'pcs'),
  ('TRX-A01273', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 2, 72000, 144000, 59000, 0, 26000, 'pcs'),
  ('TRX-A01273', 'PRD-A-AKS-0064', 'Case Redmi 9A', 3, 38000, 114000, 25000, 0, 39000, 'pcs'),
  ('TRX-A01273', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 3, 630000, 1890000, 500000, 0, 390000, 'pcs'),
  ('TRX-A01273', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01085', '2026-11-07 18:11:05+07:00', 'Maya Putri 5', 'Admin', 10000, 0, 5000, 5000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101084', '', '', '', 3000, NULL, '2026-11-07 18:11:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01085', 'PRD-A-KEL-0120', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00688', '2026-11-07 18:07:02+07:00', 'Agus Wijaya 3', 'Admin', 69000, 0, 69000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100687', '', '', '', 27000, NULL, '2026-11-07 18:07:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00688', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 3, 23000, 69000, 14000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00478', '2026-11-07 17:48:58+07:00', 'Sri Wahyuni', 'Admin', 2024000, 0, 2024000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100477', '', '', '', 296000, NULL, '2026-11-07 17:48:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00478', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 2, 20000, 40000, 14000, 0, 12000, 'pcs'),
  ('TRX-A00478', 'PRD-A-AKS-0217', 'Batre Samsung J1', 2, 47000, 94000, 42000, 0, 10000, 'pcs'),
  ('TRX-A00478', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 2, 38000, 76000, 33000, 0, 10000, 'pcs'),
  ('TRX-A00478', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00478', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs'),
  ('TRX-A00478', 'PRD-A-AKS-0175', 'Kartu Perdana Tri', 1, 28000, 28000, 18000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00796', '2026-11-07 17:37:08+07:00', 'Umum', 'Admin', 17782500, 0, 17782500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100795', '', '', '', 1705000, NULL, '2026-11-07 17:37:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00796', 'PRD-A-KEL-0186', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A00796', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs'),
  ('TRX-A00796', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 1, 2550000, 2550000, 2300000, 0, 250000, 'pcs'),
  ('TRX-A00796', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A00796', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 3, 540000, 1620000, 300000, 0, 720000, 'pcs'),
  ('TRX-A00796', 'PRD-A-KEL-0160', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00796', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 3, 1880000, 5640000, 1800000, 0, 240000, 'pcs'),
  ('TRX-A00796', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 2, 2600000, 5200000, 2500000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01485', '2026-11-07 17:31:12+07:00', 'Siti Aisyah 4', 'Admin', 2254500, 0, 2254500, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101484', '', '', '', 295500, NULL, '2026-11-07 17:31:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01485', 'PRD-A-HP-0229', 'HP REDMI Y55S 3/32 33051', 1, 1520000, 1520000, 1400000, 0, 120000, 'pcs'),
  ('TRX-A01485', 'PRD-A-KEL-0099', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01485', 'PRD-A-KEL-0186', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01485', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 2, 55000, 110000, 49000, 0, 12000, 'pcs'),
  ('TRX-A01485', 'PRD-A-KEL-0137', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A01485', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 1, 550000, 550000, 400000, 0, 150000, 'pcs'),
  ('TRX-A01485', 'PRD-A-KEL-0021', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01670', '2026-11-07 17:17:11+07:00', 'Hendra Gunawan', 'Admin', 6575000, 0, 6575000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101669', '', '', '', 706000, NULL, '2026-11-07 17:17:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01670', 'PRD-A-KEL-0062', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01670', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 3, 43000, 129000, 32000, 0, 33000, 'pcs'),
  ('TRX-A01670', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs'),
  ('TRX-A01670', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 2, 38000, 76000, 33000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01314', '2026-11-07 17:16:44+07:00', 'Sri Wahyuni', 'Admin', 85000, 0, 85000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101313', '', '', '', 15000, NULL, '2026-11-07 17:16:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01314', 'PRD-A-KEL-0050', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01314', 'PRD-A-AKS-0193', 'Case Oppo A57', 3, 25000, 75000, 21000, 0, 12000, 'pcs'),
  ('TRX-A01314', 'PRD-A-KEL-0046', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01556', '2026-11-07 17:14:02+07:00', 'Umum', 'Admin', 11067000, 0, 11067000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101555', '', '', '', 781400, NULL, '2026-11-07 17:14:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01556', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 3, 2780000, 8340000, 2600000, 0, 540000, 'pcs'),
  ('TRX-A01556', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 2, 1200000, 2400000, 1100000, 0, 200000, 'pcs'),
  ('TRX-A01556', 'PRD-A-KEL-0083', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01556', 'PRD-A-KEL-0194', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01556', 'PRD-A-AKS-0146', 'Memory Card 32GB', 3, 91000, 273000, 82000, 0, 27000, 'pcs'),
  ('TRX-A01556', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 27000, 0, 8000, 'pcs'),
  ('TRX-A01556', 'PRD-A-KEL-0169', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01868', '2026-11-07 17:10:48+07:00', 'Umum', 'Admin', 7386000, 0, 7386000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101867', '', '', '', 530000, NULL, '2026-11-07 17:10:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01868', 'PRD-A-AKS-0186', 'Case Redmi 9A', 2, 25000, 50000, 14000, 0, 22000, 'pcs'),
  ('TRX-A01868', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 3, 1730000, 5190000, 1600000, 0, 390000, 'pcs'),
  ('TRX-A01868', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 2, 1050000, 2100000, 1000000, 0, 100000, 'pcs'),
  ('TRX-A01868', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 2, 23000, 46000, 14000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01066', '2026-11-07 17:06:05+07:00', 'Maya Putri 3', 'Admin', 191000, 0, 191000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101065', '', '', '', 54000, NULL, '2026-11-07 17:06:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01066', 'PRD-A-AKS-0120', 'Batre Oppo A57', 3, 33000, 99000, 22000, 0, 33000, 'pcs'),
  ('TRX-A01066', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 1, 38000, 38000, 23000, 0, 15000, 'pcs'),
  ('TRX-A01066', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00224', '2026-11-07 17:01:04+07:00', 'Rudi Hartono 2', 'Admin', 11540000, 0, 5770000, 5770000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100223', '', '', '', 1040000, NULL, '2026-11-07 17:01:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00224', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 1, 1280000, 1280000, 1200000, 0, 80000, 'pcs'),
  ('TRX-A00224', 'PRD-A-HP-0485', 'HP ITEL Y91C 3/64 10965', 3, 2820000, 8460000, 2600000, 0, 660000, 'pcs'),
  ('TRX-A00224', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 3, 600000, 1800000, 500000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00531', '2026-11-07 16:57:28+07:00', 'Umum', 'Admin', 7595000, 0, 7595000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100530', '', '', '', 776000, NULL, '2026-11-07 16:57:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00531', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 1, 25000, 25000, 19000, 0, 6000, 'pcs'),
  ('TRX-A00531', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 3, 1390000, 4170000, 1200000, 0, 570000, 'pcs'),
  ('TRX-A00531', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 2, 1700000, 3400000, 1600000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01475', '2026-11-07 16:46:08+07:00', 'Joko Prasetyo 2', 'Admin', 8897000, 0, 4448500, 4448500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101474', '', '', '', 364000, NULL, '2026-11-07 16:46:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01475', 'PRD-A-KEL-0106', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01475', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 2, 1200000, 2400000, 1100000, 0, 200000, 'pcs'),
  ('TRX-A01475', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 2, 20000, 40000, 14000, 0, 12000, 'pcs'),
  ('TRX-A01475', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 3, 2150000, 6450000, 2100000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01543', '2026-11-07 16:34:43+07:00', 'Umum', 'Admin', 144000, 0, 72000, 72000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101542', '', '', '', 31000, NULL, '2026-11-07 16:34:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01543', 'PRD-A-KEL-0104', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01543', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs'),
  ('TRX-A01543', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 2, 18000, 36000, 13000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01232', '2026-11-07 16:14:06+07:00', 'Nur Halimah 5', 'Admin', 10165000, 0, 10165000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101231', '', '', '', 858000, NULL, '2026-11-07 16:14:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01232', 'PRD-A-HP-0070', 'HP SAMSUNG 9A 4/128 90887', 3, 2070000, 6210000, 1900000, 0, 510000, 'pcs'),
  ('TRX-A01232', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 3, 27000, 81000, 18000, 0, 27000, 'pcs'),
  ('TRX-A01232', 'PRD-A-AKS-0150', 'Memory Card 16GB', 2, 55000, 110000, 41000, 0, 28000, 'pcs'),
  ('TRX-A01232', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A01232', 'PRD-A-AKS-0224', 'Case Samsung A03', 3, 48000, 144000, 35000, 0, 39000, 'pcs'),
  ('TRX-A01232', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 3, 35000, 105000, 21000, 0, 42000, 'pcs'),
  ('TRX-A01232', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 1, 5000, 5000, 3000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01155', '2026-11-07 16:13:34+07:00', 'Siti Aisyah', 'Admin', 6549000, 0, 6549000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101154', '', '', '', 603500, NULL, '2026-11-07 16:13:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01155', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 1, 1700000, 1700000, 1600000, 0, 100000, 'pcs'),
  ('TRX-A01155', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 3, 15000, 45000, 10000, 0, 15000, 'pcs'),
  ('TRX-A01155', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 2, 2330000, 4660000, 2100000, 0, 460000, 'pcs'),
  ('TRX-A01155', 'PRD-A-KEL-0027', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A01155', 'PRD-A-AKS-0050', 'Case Redmi 9A', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A01155', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01660', '2026-11-07 15:57:12+07:00', 'Umum', 'Admin', 11029000, 0, 5514500, 5514500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101659', '', '', '', 647000, NULL, '2026-11-07 15:57:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01660', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs'),
  ('TRX-A01660', 'PRD-A-KEL-0108', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01660', 'PRD-A-AKS-0049', 'Memory Card 32GB', 1, 84000, 84000, 81000, 0, 3000, 'pcs'),
  ('TRX-A01660', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 1, 51000, 51000, 44000, 0, 7000, 'pcs'),
  ('TRX-A01660', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 3, 1570000, 4710000, 1500000, 0, 210000, 'pcs'),
  ('TRX-A01660', 'PRD-A-AKS-0050', 'Case Redmi 9A', 1, 34000, 34000, 26000, 0, 8000, 'pcs'),
  ('TRX-A01660', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 2, 2610000, 5220000, 2500000, 0, 220000, 'pcs'),
  ('TRX-A01660', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 1, 740000, 740000, 600000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01248', '2026-11-07 15:56:14+07:00', 'Nur Halimah', 'Admin', 6606000, 0, 3303000, 3303000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101247', '', '', '', 788000, NULL, '2026-11-07 15:56:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01248', 'PRD-A-AKS-0079', 'Handsfree Oppo', 1, 51000, 51000, 43000, 0, 8000, 'pcs'),
  ('TRX-A01248', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 2, 1390000, 2780000, 1200000, 0, 380000, 'pcs'),
  ('TRX-A01248', 'PRD-A-AKS-0179', 'Memory Card 32GB', 3, 102000, 306000, 88000, 0, 42000, 'pcs'),
  ('TRX-A01248', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A01248', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 2, 1660000, 3320000, 1500000, 0, 320000, 'pcs'),
  ('TRX-A01248', 'PRD-A-AKS-0143', 'Batre Samsung J1', 3, 34000, 102000, 23000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00028', '2026-11-07 15:33:24+07:00', 'Joko Prasetyo 5', 'Admin', 2854000, 0, 1427000, 1427000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100027', '', '', '', 137000, NULL, '2026-11-07 15:33:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00028', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs'),
  ('TRX-A00028', 'PRD-A-AKS-0165', 'Case Vivo Y20', 3, 43000, 129000, 31000, 0, 36000, 'pcs'),
  ('TRX-A00028', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 3, 33000, 99000, 22000, 0, 33000, 'pcs'),
  ('TRX-A00028', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 1, 2350000, 2350000, 2300000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01521', '2026-11-07 15:12:53+07:00', 'Eko Saputra', 'Admin', 14911000, 0, 7455500, 7455500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101520', '', '', '', 1468000, NULL, '2026-11-07 15:12:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01521', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 2, 1520000, 3040000, 1300000, 0, 440000, 'pcs'),
  ('TRX-A01521', 'PRD-A-AKS-0054', 'Batre Samsung J1', 3, 40000, 120000, 30000, 0, 30000, 'pcs'),
  ('TRX-A01521', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 27000, 0, 8000, 'pcs'),
  ('TRX-A01521', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 2, 740000, 1480000, 600000, 0, 280000, 'pcs'),
  ('TRX-A01521', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A01521', 'PRD-A-KEL-0118', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01521', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 3, 2870000, 8610000, 2700000, 0, 510000, 'pcs'),
  ('TRX-A01521', 'PRD-A-KEL-0037', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00643', '2026-11-07 15:10:21+07:00', 'Nur Halimah 5', 'Admin', 19716000, 0, 9858000, 9858000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100642', '', '', '', 1552000, NULL, '2026-11-07 15:10:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00643', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A00643', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 2, 18000, 36000, 14000, 0, 8000, 'pcs'),
  ('TRX-A00643', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 3, 2910000, 8730000, 2700000, 0, 630000, 'pcs'),
  ('TRX-A00643', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00643', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 2, 1560000, 3120000, 1400000, 0, 320000, 'pcs'),
  ('TRX-A00643', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01175', '2026-11-07 15:05:30+07:00', 'Umum', 'Admin', 5829000, 0, 2914500, 2914500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101174', '', '', '', 938000, NULL, '2026-11-07 15:05:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01175', 'PRD-A-AKS-0233', 'Tempered Glass Vivo', 1, 9000, 9000, 5000, 0, 4000, 'pcs'),
  ('TRX-A01175', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 2, 520000, 1040000, 300000, 0, 440000, 'pcs'),
  ('TRX-A01175', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 3, 1560000, 4680000, 1400000, 0, 480000, 'pcs'),
  ('TRX-A01175', 'PRD-A-AKS-0214', 'Memory Card 64GB', 1, 100000, 100000, 86000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01661', '2026-11-07 14:58:36+07:00', 'Fitri Rahmawati 4', 'Admin', 4957000, 0, 4957000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101660', '', '', '', 730000, NULL, '2026-11-07 14:58:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01661', 'PRD-A-AKS-0177', 'Case Samsung A03', 2, 39000, 78000, 34000, 0, 10000, 'pcs'),
  ('TRX-A01661', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 2, 1550000, 3100000, 1400000, 0, 300000, 'pcs'),
  ('TRX-A01661', 'PRD-A-KEL-0121', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01661', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 2, 460000, 920000, 400000, 0, 120000, 'pcs'),
  ('TRX-A01661', 'PRD-A-AKS-0220', 'Tempered Glass Samsung', 3, 23000, 69000, 20000, 0, 9000, 'pcs'),
  ('TRX-A01661', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 3, 42000, 126000, 27000, 0, 45000, 'pcs'),
  ('TRX-A01661', 'PRD-A-HP-0245', 'HP NOKIA C11 4/64 32903', 1, 640000, 640000, 400000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00955', '2026-11-07 14:36:11+07:00', 'Umum', 'Admin', 7883000, 0, 7883000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100954', '', '', '', 947000, NULL, '2026-11-07 14:36:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00955', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00955', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 1, 2880000, 2880000, 2700000, 0, 180000, 'pcs'),
  ('TRX-A00955', 'PRD-A-KEL-0121', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00955', 'PRD-A-KEL-0158', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00955', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 3, 1650000, 4950000, 1400000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00925', '2026-11-07 14:36:01+07:00', 'Fitri Rahmawati 2', 'Admin', 12225000, 0, 12225000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100924', '', '', '', 1790000, NULL, '2026-11-07 14:36:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00925', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 1, 21000, 21000, 17000, 0, 4000, 'pcs'),
  ('TRX-A00925', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 1, 1170000, 1170000, 1100000, 0, 70000, 'pcs'),
  ('TRX-A00925', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 1, 1410000, 1410000, 1200000, 0, 210000, 'pcs'),
  ('TRX-A00925', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 3, 1090000, 3270000, 900000, 0, 570000, 'pcs'),
  ('TRX-A00925', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 2, 2190000, 4380000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A00925', 'PRD-A-KEL-0037', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A00925', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 3, 650000, 1950000, 400000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00344', '2026-11-07 14:24:09+07:00', 'Maya Putri 3', 'Admin', 7969000, 0, 7969000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100343', '', '', '', 1044000, NULL, '2026-11-07 14:24:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00344', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 3, 590000, 1770000, 400000, 0, 570000, 'pcs'),
  ('TRX-A00344', 'PRD-A-AKS-0179', 'Memory Card 32GB', 3, 102000, 306000, 88000, 0, 42000, 'pcs'),
  ('TRX-A00344', 'PRD-A-KEL-0089', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00344', 'PRD-A-KEL-0037', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A00344', 'PRD-A-KEL-0158', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00344', 'PRD-A-AKS-0217', 'Batre Samsung J1', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A00344', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01865', '2026-11-07 14:21:31+07:00', 'Rudi Hartono 5', 'Admin', 16757000, 0, 16757000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101864', '', '', '', 745000, NULL, '2026-11-07 14:21:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01865', 'PRD-A-KEL-0098', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01865', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs'),
  ('TRX-A01865', 'PRD-A-KEL-0171', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01865', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 2, 2500000, 5000000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A01865', 'PRD-A-AKS-0067', 'Case Redmi 9A', 3, 39000, 117000, 30000, 0, 27000, 'pcs'),
  ('TRX-A01865', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 3, 2770000, 8310000, 2700000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00500', '2026-11-07 13:55:15+07:00', 'Umum', 'Admin', 14009000, 0, 14009000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100499', '', '', '', 1203000, NULL, '2026-11-07 13:55:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00500', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 2, 2100000, 4200000, 1900000, 0, 400000, 'pcs'),
  ('TRX-A00500', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 3, 2490000, 7470000, 2300000, 0, 570000, 'pcs'),
  ('TRX-A00500', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs'),
  ('TRX-A00500', 'PRD-A-KEL-0007', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01319', '2026-11-07 13:48:48+07:00', 'Umum', 'Admin', 18622000, 0, 18622000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101318', '', '', '', 1740000, NULL, '2026-11-07 13:48:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01319', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 1, 1200000, 1200000, 1100000, 0, 100000, 'pcs'),
  ('TRX-A01319', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A01319', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs'),
  ('TRX-A01319', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 3, 2050000, 6150000, 2000000, 0, 150000, 'pcs'),
  ('TRX-A01319', 'PRD-A-HP-0098', 'HP INFINIX 9A 3/64 25641', 3, 1550000, 4650000, 1400000, 0, 450000, 'pcs'),
  ('TRX-A01319', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 2, 630000, 1260000, 500000, 0, 260000, 'pcs'),
  ('TRX-A01319', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 3, 1750000, 5250000, 1500000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00151', '2026-11-07 13:13:37+07:00', 'Nur Halimah 2', 'Admin', 4859500, 0, 4859500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100150', '', '', '', 246000, NULL, '2026-11-07 13:13:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00151', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A00151', 'PRD-A-KEL-0158', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00151', 'PRD-A-KEL-0023', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00326', '2026-11-07 13:13:13+07:00', 'Umum', 'Admin', 201500, 0, 201500, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100325', '', '', '', 56000, NULL, '2026-11-07 13:13:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00326', 'PRD-A-KEL-0092', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00326', 'PRD-A-AKS-0139', 'Case Samsung A03', 1, 34000, 34000, 21000, 0, 13000, 'pcs'),
  ('TRX-A00326', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 1, 61000, 61000, 46000, 0, 15000, 'pcs'),
  ('TRX-A00326', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A00326', 'PRD-A-KEL-0079', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A00326', 'PRD-A-KEL-0164', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01614', '2026-11-07 12:50:56+07:00', 'Fitri Rahmawati 3', 'Admin', 147000, 0, 73500, 73500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101613', '', '', '', 34000, NULL, '2026-11-07 12:50:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01614', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs'),
  ('TRX-A01614', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01614', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 1, 20000, 20000, 7000, 0, 13000, 'pcs'),
  ('TRX-A01614', 'PRD-A-AKS-0069', 'Handsfree Vivo', 1, 28000, 28000, 21000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00646', '2026-11-07 12:49:51+07:00', 'Siti Aisyah', 'Admin', 14340000, 0, 14340000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100645', '', '', '', 1440000, NULL, '2026-11-07 12:49:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00646', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 3, 1170000, 3510000, 1000000, 0, 510000, 'pcs'),
  ('TRX-A00646', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 3, 2020000, 6060000, 1900000, 0, 360000, 'pcs'),
  ('TRX-A00646', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00960', '2026-11-07 12:17:38+07:00', 'Umum', 'Admin', 2040000, 0, 2040000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100959', '', '', '', 516000, NULL, '2026-11-07 12:17:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00960', 'PRD-A-KEL-0175', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A00960', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 3, 670000, 2010000, 500000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01308', '2026-11-07 12:15:15+07:00', 'Umum', 'Admin', 8991000, 0, 8991000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101307', '', '', '', 886000, NULL, '2026-11-07 12:15:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01308', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 1, 590000, 590000, 400000, 0, 190000, 'pcs'),
  ('TRX-A01308', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 1, 2560000, 2560000, 2500000, 0, 60000, 'pcs'),
  ('TRX-A01308', 'PRD-A-AKS-0169', 'Handsfree Oppo', 3, 29000, 87000, 14000, 0, 45000, 'pcs'),
  ('TRX-A01308', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 1, 1100000, 1100000, 900000, 0, 200000, 'pcs'),
  ('TRX-A01308', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01308', 'PRD-A-AKS-0231', 'Case Samsung A03', 1, 34000, 34000, 27000, 0, 7000, 'pcs'),
  ('TRX-A01308', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 1, 2770000, 2770000, 2600000, 0, 170000, 'pcs'),
  ('TRX-A01308', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01610', '2026-11-07 11:29:28+07:00', 'Umum', 'Admin', 8028000, 0, 4014000, 4014000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101609', '', '', '', 906000, NULL, '2026-11-07 11:29:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01610', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 1, 27000, 27000, 18000, 0, 9000, 'pcs'),
  ('TRX-A01610', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 1, 1630000, 1630000, 1500000, 0, 130000, 'pcs'),
  ('TRX-A01610', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 2, 28000, 56000, 21000, 0, 14000, 'pcs'),
  ('TRX-A01610', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 1, 1420000, 1420000, 1200000, 0, 220000, 'pcs'),
  ('TRX-A01610', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 1, 1700000, 1700000, 1500000, 0, 200000, 'pcs'),
  ('TRX-A01610', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 1, 39000, 39000, 30000, 0, 9000, 'pcs'),
  ('TRX-A01610', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01610', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 2, 1560000, 3120000, 1400000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00994', '2026-11-07 11:11:18+07:00', 'Umum', 'Admin', 11097000, 0, 5548500, 5548500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100993', '', '', '', 534500, NULL, '2026-11-07 11:11:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00994', 'PRD-A-KEL-0010', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00994', 'PRD-A-AKS-0144', 'Voucher Telkomsel 10GB', 3, 65000, 195000, 60000, 0, 15000, 'pcs'),
  ('TRX-A00994', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 3, 33000, 99000, 27000, 0, 18000, 'pcs'),
  ('TRX-A00994', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 2, 1770000, 3540000, 1700000, 0, 140000, 'pcs'),
  ('TRX-A00994', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 3, 2420000, 7260000, 2300000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01702', '2026-11-07 11:04:57+07:00', 'Umum', 'Admin', 82000, 0, 82000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101701', '', '', '', 10000, NULL, '2026-11-07 11:04:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01702', 'PRD-A-AKS-0128', 'Batre Vivo Y91', 2, 41000, 82000, 36000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01630', '2026-11-07 10:54:37+07:00', 'Dewi Lestari 3', 'Admin', 4838000, 0, 4838000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101629', '', '', '', 510000, NULL, '2026-11-07 10:54:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01630', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 3, 1550000, 4650000, 1400000, 0, 450000, 'pcs'),
  ('TRX-A01630', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 3, 32000, 96000, 24000, 0, 24000, 'pcs'),
  ('TRX-A01630', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 2, 34000, 68000, 20000, 0, 28000, 'pcs'),
  ('TRX-A01630', 'PRD-A-KEL-0054', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01794', '2026-11-07 10:37:03+07:00', 'Umum', 'Admin', 19000, 0, 0, 19000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101793', '', '', '', 6500, NULL, '2026-11-07 10:37:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01794', 'PRD-A-KEL-0140', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01794', 'PRD-A-KEL-0130', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00936', '2026-11-07 10:08:59+07:00', 'Joko Prasetyo 3', 'Admin', 7036000, 0, 7036000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100935', '', '', '', 855000, NULL, '2026-11-07 10:08:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00936', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00936', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 3, 460000, 1380000, 400000, 0, 180000, 'pcs'),
  ('TRX-A00936', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs'),
  ('TRX-A00936', 'PRD-A-AKS-0154', 'Memory Card 16GB', 1, 101000, 101000, 86000, 0, 15000, 'pcs'),
  ('TRX-A00936', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 3, 1800000, 5400000, 1600000, 0, 600000, 'pcs'),
  ('TRX-A00936', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 21000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00788', '2026-11-07 10:06:01+07:00', 'Intan Permata', 'Admin', 19800000, 0, 0, 19800000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100787', '', '', '', 1583000, NULL, '2026-11-07 10:06:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00788', 'PRD-A-HP-0508', 'HP REDMI 9C 4/128 88002', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A00788', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 2, 670000, 1340000, 600000, 0, 140000, 'pcs'),
  ('TRX-A00788', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 2, 2270000, 4540000, 2100000, 0, 340000, 'pcs'),
  ('TRX-A00788', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A00788', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 3, 2020000, 6060000, 1800000, 0, 660000, 'pcs'),
  ('TRX-A00788', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 1, 2160000, 2160000, 2100000, 0, 60000, 'pcs'),
  ('TRX-A00788', 'PRD-A-KEL-0093', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00116', '2026-11-07 10:02:24+07:00', 'Umum', 'Admin', 10440000, 0, 10440000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100115', '', '', '', 740000, NULL, '2026-11-07 10:02:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00116', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 2, 2190000, 4380000, 2000000, 0, 380000, 'pcs'),
  ('TRX-A00116', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 3, 2020000, 6060000, 1900000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01442', '2026-11-07 09:54:40+07:00', 'Umum', 'Admin', 271000, 0, 0, 271000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101441', '', '', '', 104500, NULL, '2026-11-07 09:54:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01442', 'PRD-A-AKS-0074', 'Handsfree Oppo', 1, 49000, 49000, 39000, 0, 10000, 'pcs'),
  ('TRX-A01442', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 27000, 0, 8000, 'pcs'),
  ('TRX-A01442', 'PRD-A-KEL-0018', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01442', 'PRD-A-KEL-0169', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01442', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 3, 21000, 63000, 9000, 0, 36000, 'pcs'),
  ('TRX-A01442', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A01442', 'PRD-A-KEL-0111', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01928', '2026-11-07 09:38:04+07:00', 'Umum', 'Admin', 7070000, 0, 7070000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101927', '', '', '', 760000, NULL, '2026-11-07 09:38:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01928', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 1, 600000, 600000, 500000, 0, 100000, 'pcs'),
  ('TRX-A01928', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 1, 1570000, 1570000, 1500000, 0, 70000, 'pcs'),
  ('TRX-A01928', 'PRD-A-KEL-0063', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01928', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00485', '2026-11-07 08:54:51+07:00', 'Umum', 'Admin', 8380000, 0, 8380000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100484', '', '', '', 735000, NULL, '2026-11-07 08:54:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00485', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 1, 580000, 580000, 400000, 0, 180000, 'pcs'),
  ('TRX-A00485', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 2, 65000, 130000, 53000, 0, 24000, 'pcs'),
  ('TRX-A00485', 'PRD-A-AKS-0076', 'Handsfree Samsung', 3, 58000, 174000, 45000, 0, 39000, 'pcs'),
  ('TRX-A00485', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 2, 2350000, 4700000, 2300000, 0, 100000, 'pcs'),
  ('TRX-A00485', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 2, 560000, 1120000, 400000, 0, 320000, 'pcs'),
  ('TRX-A00485', 'PRD-A-KEL-0111', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00485', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 1, 1670000, 1670000, 1600000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00350', '2026-11-07 08:52:50+07:00', 'Nur Halimah 3', 'Admin', 30000, 0, 0, 30000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100349', '', '', '', 9000, NULL, '2026-11-07 08:52:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00350', 'PRD-A-KEL-0194', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01134', '2026-11-07 08:42:10+07:00', 'Rudi Hartono 5', 'Admin', 6140000, 0, 6140000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101133', '', '', '', 440000, NULL, '2026-11-07 08:42:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01134', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 1, 2930000, 2930000, 2700000, 0, 230000, 'pcs'),
  ('TRX-A01134', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 3, 1070000, 3210000, 1000000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01581', '2026-11-07 08:40:16+07:00', 'Budi Santoso 2', 'Admin', 15836000, 0, 15836000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101580', '', '', '', 1400500, NULL, '2026-11-07 08:40:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01581', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 1, 430000, 430000, 300000, 0, 130000, 'pcs'),
  ('TRX-A01581', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs'),
  ('TRX-A01581', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01581', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 3, 2050000, 6150000, 2000000, 0, 150000, 'pcs'),
  ('TRX-A01581', 'PRD-A-KEL-0085', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01581', 'PRD-A-KEL-0156', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A01581', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00364', '2026-11-07 08:13:03+07:00', 'Budi Santoso 3', 'Admin', 4470000, 0, 2235000, 2235000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100363', '', '', '', 205000, NULL, '2026-11-07 08:13:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00364', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A00364', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A00364', 'PRD-A-KEL-0077', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01428', '2026-11-07 08:11:34+07:00', 'Umum', 'Admin', 9366000, 0, 9366000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101427', '', '', '', 402000, NULL, '2026-11-07 08:11:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01428', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 2, 43000, 86000, 32000, 0, 22000, 'pcs'),
  ('TRX-A01428', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01428', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01718', '2026-11-07 08:11:01+07:00', 'Siti Aisyah 4', 'Admin', 1230000, 0, 615000, 615000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101717', '', '', '', 330000, NULL, '2026-11-07 08:11:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01718', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 3, 410000, 1230000, 300000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01302', '2026-11-06 20:50:55+07:00', 'Agus Wijaya 4', 'Admin', 6698000, 0, 6698000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101301', '', '', '', 550000, NULL, '2026-11-06 20:50:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01302', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A01302', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs'),
  ('TRX-A01302', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 2, 2100000, 4200000, 1900000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00782', '2026-11-06 20:12:38+07:00', 'Lilis Suryani 2', 'Admin', 2700000, 0, 2700000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100781', '', '', '', 534000, NULL, '2026-11-06 20:12:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00782', 'PRD-A-KEL-0150', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00782', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 1, 1370000, 1370000, 1200000, 0, 170000, 'pcs'),
  ('TRX-A00782', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 3, 410000, 1230000, 300000, 0, 330000, 'pcs'),
  ('TRX-A00782', 'PRD-A-AKS-0163', 'Kartu Perdana XL', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A00782', 'PRD-A-KEL-0142', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00225', '2026-11-06 20:10:23+07:00', 'Budi Santoso 3', 'Admin', 138000, 0, 138000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100224', '', '', '', 36000, NULL, '2026-11-06 20:10:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00225', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00709', '2026-11-06 19:36:53+07:00', 'Ayu Lestari', 'Admin', 3659000, 0, 3659000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100708', '', '', '', 231000, NULL, '2026-11-06 19:36:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00709', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00709', 'PRD-A-AKS-0088', 'Case Redmi 9A', 1, 43000, 43000, 34000, 0, 9000, 'pcs'),
  ('TRX-A00709', 'PRD-A-AKS-0054', 'Batre Samsung J1', 1, 40000, 40000, 30000, 0, 10000, 'pcs'),
  ('TRX-A00709', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A00709', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01582', '2026-11-06 19:30:18+07:00', 'Umum', 'Admin', 10000, 0, 10000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101581', '', '', '', 2000, NULL, '2026-11-06 19:30:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01582', 'PRD-A-KEL-0193', 'Snack wafer', 1, 10000, 10000, 8000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00014', '2026-11-06 19:26:40+07:00', 'Umum', 'Admin', 2030000, 0, 2030000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100013', '', '', '', 514000, NULL, '2026-11-06 19:26:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00014', 'PRD-A-HP-0145', 'HP ITEL C3 3/64 46957', 1, 660000, 660000, 500000, 0, 160000, 'pcs'),
  ('TRX-A00014', 'PRD-A-HP-0391', 'HP INFINIX A03 3/32 13495', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A00014', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 2, 15000, 30000, 8000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00549', '2026-11-06 19:18:06+07:00', 'Sri Wahyuni 3', 'Admin', 3386000, 0, 3386000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100548', '', '', '', 697000, NULL, '2026-11-06 19:18:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00549', 'PRD-A-AKS-0213', 'Memory Card 16GB', 1, 72000, 72000, 65000, 0, 7000, 'pcs'),
  ('TRX-A00549', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A00549', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 3, 18000, 54000, 8000, 0, 30000, 'pcs'),
  ('TRX-A00549', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 2, 670000, 1340000, 500000, 0, 340000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00198', '2026-11-06 19:14:16+07:00', 'Umum', 'Admin', 15764000, 0, 7882000, 7882000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100197', '', '', '', 1922500, NULL, '2026-11-06 19:14:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00198', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 3, 1650000, 4950000, 1500000, 0, 450000, 'pcs'),
  ('TRX-A00198', 'PRD-A-KEL-0018', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00198', 'PRD-A-HP-0245', 'HP NOKIA C11 4/64 32903', 2, 640000, 1280000, 400000, 0, 480000, 'pcs'),
  ('TRX-A00198', 'PRD-A-AKS-0166', 'Case Redmi 9A', 1, 25000, 25000, 10000, 0, 15000, 'pcs'),
  ('TRX-A00198', 'PRD-A-AKS-0226', 'Memory Card 32GB', 1, 85000, 85000, 78000, 0, 7000, 'pcs'),
  ('TRX-A00198', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 3, 1390000, 4170000, 1200000, 0, 570000, 'pcs'),
  ('TRX-A00198', 'PRD-A-AKS-0082', 'Case Redmi 9A', 2, 26000, 52000, 23000, 0, 6000, 'pcs'),
  ('TRX-A00198', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 3, 1730000, 5190000, 1600000, 0, 390000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01330', '2026-11-06 18:25:37+07:00', 'Umum', 'Admin', 167000, 0, 83500, 83500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101329', '', '', '', 39000, NULL, '2026-11-06 18:25:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01330', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 3, 9000, 27000, 6000, 0, 9000, 'pcs'),
  ('TRX-A01330', 'PRD-A-AKS-0160', 'Memory Card 32GB', 2, 40000, 80000, 34000, 0, 12000, 'pcs'),
  ('TRX-A01330', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 3, 20000, 60000, 14000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00233', '2026-11-06 18:08:08+07:00', 'Rina Marlina 2', 'Admin', 12952000, 0, 12952000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100232', '', '', '', 1001500, NULL, '2026-11-06 18:08:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00233', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 1, 2160000, 2160000, 2100000, 0, 60000, 'pcs'),
  ('TRX-A00233', 'PRD-A-KEL-0156', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A00233', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 3, 2930000, 8790000, 2700000, 0, 690000, 'pcs'),
  ('TRX-A00233', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 1, 1900000, 1900000, 1700000, 0, 200000, 'pcs'),
  ('TRX-A00233', 'PRD-A-KEL-0169', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00233', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs'),
  ('TRX-A00233', 'PRD-A-KEL-0048', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00360', '2026-11-06 18:06:51+07:00', 'Intan Permata', 'Admin', 252000, 0, 0, 252000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100359', '', '', '', 9000, NULL, '2026-11-06 18:06:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00360', 'PRD-A-AKS-0049', 'Memory Card 32GB', 3, 84000, 252000, 81000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00576', '2026-11-06 17:52:39+07:00', 'Umum', 'Admin', 144000, 0, 0, 144000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100575', '', '', '', 62000, NULL, '2026-11-06 17:52:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00576', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A00576', 'PRD-A-KEL-0023', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A00576', 'PRD-A-KEL-0149', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A00576', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 1, 20000, 20000, 7000, 0, 13000, 'pcs'),
  ('TRX-A00576', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00522', '2026-11-06 17:44:42+07:00', 'D''Angelo Cell', 'Admin', 11719000, 0, 11719000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100521', '', '', '', 902500, NULL, '2026-11-06 17:44:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00522', 'PRD-A-HP-0229', 'HP REDMI Y55S 3/32 33051', 3, 1520000, 4560000, 1400000, 0, 360000, 'pcs'),
  ('TRX-A00522', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 3, 1210000, 3630000, 1100000, 0, 330000, 'pcs'),
  ('TRX-A00522', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A00522', 'PRD-A-KEL-0039', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00522', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00130', '2026-11-06 17:19:47+07:00', 'Rudi Hartono 5', 'Admin', 8866000, 0, 8866000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100129', '', '', '', 985000, NULL, '2026-11-06 17:19:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00130', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 2, 2930000, 5860000, 2700000, 0, 460000, 'pcs'),
  ('TRX-A00130', 'PRD-A-AKS-0105', 'Case Samsung A03', 2, 36000, 72000, 21000, 0, 30000, 'pcs'),
  ('TRX-A00130', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A00130', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01533', '2026-11-06 17:17:03+07:00', 'Umum', 'Admin', 5040000, 0, 5040000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101532', '', '', '', 619000, NULL, '2026-11-06 17:17:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01533', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 3, 1270000, 3810000, 1100000, 0, 510000, 'pcs'),
  ('TRX-A01533', 'PRD-A-KEL-0104', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01533', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 1, 1200000, 1200000, 1100000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01754', '2026-11-06 16:33:26+07:00', 'Sri Wahyuni 4', 'Admin', 966000, 0, 0, 966000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101753', '', '', '', 142000, NULL, '2026-11-06 16:33:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01754', 'PRD-A-KEL-0118', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01754', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 1, 930000, 930000, 800000, 0, 130000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01335', '2026-11-06 16:13:51+07:00', 'Ayu Lestari', 'Admin', 1703000, 0, 1703000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101334', '', '', '', 156000, NULL, '2026-11-06 16:13:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01335', 'PRD-A-KEL-0090', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A01335', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 1, 1450000, 1450000, 1400000, 0, 50000, 'pcs'),
  ('TRX-A01335', 'PRD-A-AKS-0178', 'Case Vivo Y20', 3, 36000, 108000, 24000, 0, 36000, 'pcs'),
  ('TRX-A01335', 'PRD-A-AKS-0054', 'Batre Samsung J1', 1, 40000, 40000, 30000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00105', '2026-11-06 16:11:28+07:00', 'Fajar Nugroho 4', 'Admin', 55000, 0, 55000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100104', '', '', '', 13000, NULL, '2026-11-06 16:11:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00105', 'PRD-A-AKS-0088', 'Case Redmi 9A', 1, 43000, 43000, 34000, 0, 9000, 'pcs'),
  ('TRX-A00105', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00439', '2026-11-06 16:03:45+07:00', 'Budi Santoso 3', 'Admin', 2400000, 0, 2400000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100438', '', '', '', 100000, NULL, '2026-11-06 16:03:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00439', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01855', '2026-11-06 15:57:04+07:00', 'Eko Saputra 2', 'Admin', 9400000, 0, 9400000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101854', '', '', '', 890000, NULL, '2026-11-06 15:57:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01855', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 3, 28000, 84000, 19000, 0, 27000, 'pcs'),
  ('TRX-A01855', 'PRD-A-KEL-0121', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01855', 'PRD-A-KEL-0068', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01855', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 2, 1850000, 3700000, 1600000, 0, 500000, 'pcs'),
  ('TRX-A01855', 'PRD-A-AKS-0187', 'Kartu Perdana XL', 3, 16000, 48000, 10000, 0, 18000, 'pcs'),
  ('TRX-A01855', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 2, 2770000, 5540000, 2600000, 0, 340000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00951', '2026-11-06 15:34:51+07:00', 'Umum', 'Admin', 4084500, 0, 0, 4084500, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100950', '', '', '', 401100, NULL, '2026-11-06 15:34:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00951', 'PRD-A-KEL-0076', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00951', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 3, 1320000, 3960000, 1200000, 0, 360000, 'pcs'),
  ('TRX-A00951', 'PRD-A-AKS-0167', 'Tempered Glass Oppo', 2, 32000, 64000, 18000, 0, 28000, 'pcs'),
  ('TRX-A00951', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 1, 56000, 56000, 45000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00840', '2026-11-06 15:29:20+07:00', 'Umum', 'Admin', 5248000, 0, 5248000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100839', '', '', '', 588000, NULL, '2026-11-06 15:29:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00840', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 2, 39000, 78000, 30000, 0, 18000, 'pcs'),
  ('TRX-A00840', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 2, 1680000, 3360000, 1500000, 0, 360000, 'pcs'),
  ('TRX-A00840', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00359', '2026-11-06 15:17:47+07:00', 'Sri Wahyuni 5', 'Admin', 8656000, 0, 8656000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100358', '', '', '', 832000, NULL, '2026-11-06 15:17:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00359', 'PRD-A-KEL-0145', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00359', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs'),
  ('TRX-A00359', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 1, 1990000, 1990000, 1900000, 0, 90000, 'pcs'),
  ('TRX-A00359', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 1, 1210000, 1210000, 1100000, 0, 110000, 'pcs'),
  ('TRX-A00359', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 2, 1060000, 2120000, 900000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00378', '2026-11-06 15:12:48+07:00', 'Umum', 'Admin', 4530000, 0, 2265000, 2265000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100377', '', '', '', 930000, NULL, '2026-11-06 15:12:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00378', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 3, 410000, 1230000, 300000, 0, 330000, 'pcs'),
  ('TRX-A00378', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 3, 1100000, 3300000, 900000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01680', '2026-11-06 15:12:29+07:00', 'Umum', 'Admin', 243000, 0, 0, 243000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101679', '', '', '', 51000, NULL, '2026-11-06 15:12:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01680', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 3, 33000, 99000, 22000, 0, 33000, 'pcs'),
  ('TRX-A01680', 'PRD-A-AKS-0236', 'Memory Card 64GB', 2, 72000, 144000, 63000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00723', '2026-11-06 14:57:27+07:00', 'Yusuf Maulana', 'Admin', 8349000, 0, 8349000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100722', '', '', '', 943000, NULL, '2026-11-06 14:57:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00723', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 1, 1560000, 1560000, 1400000, 0, 160000, 'pcs'),
  ('TRX-A00723', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 2, 1170000, 2340000, 1000000, 0, 340000, 'pcs'),
  ('TRX-A00723', 'PRD-A-KEL-0007', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00723', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 2, 2220000, 4440000, 2000000, 0, 440000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00001', '2026-11-06 14:25:16+07:00', 'Fajar Nugroho 3', 'Admin', 1380000, 0, 1380000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100000', '', '', '', 180000, NULL, '2026-11-06 14:25:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00001', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 3, 460000, 1380000, 400000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00895', '2026-11-06 14:23:55+07:00', 'Umum', 'Admin', 5443000, 0, 5443000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100894', '', '', '', 941400, NULL, '2026-11-06 14:23:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00895', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 2, 2000000, 4000000, 1800000, 0, 400000, 'pcs'),
  ('TRX-A00895', 'PRD-A-KEL-0076', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00895', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 3, 480000, 1440000, 300000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00341', '2026-11-06 14:22:27+07:00', 'Dedi Supriadi 4', 'Admin', 4676000, 0, 0, 4676000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100340', '', '', '', 674000, NULL, '2026-11-06 14:22:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00341', 'PRD-A-KEL-0172', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00341', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 2, 18000, 36000, 14000, 0, 8000, 'pcs'),
  ('TRX-A00341', 'PRD-A-KEL-0129', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00341', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A00341', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 1, 1660000, 1660000, 1500000, 0, 160000, 'pcs'),
  ('TRX-A00341', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 2, 33000, 66000, 25000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01422', '2026-11-06 14:19:55+07:00', 'Umum', 'Admin', 18000, 0, 9000, 9000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101421', '', '', '', 6000, NULL, '2026-11-06 14:19:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01422', 'PRD-A-KEL-0168', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01969', '2026-11-06 14:13:17+07:00', 'Agus Wijaya 5', 'Admin', 1514000, 0, 1514000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101968', '', '', '', 273000, NULL, '2026-11-06 14:13:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01969', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 1, 21000, 21000, 17000, 0, 4000, 'pcs'),
  ('TRX-A01969', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 3, 54000, 162000, 47000, 0, 21000, 'pcs'),
  ('TRX-A01969', 'PRD-A-KEL-0003', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A01969', 'PRD-A-AKS-0071', 'Case Oppo A57', 2, 31000, 62000, 19000, 0, 24000, 'pcs'),
  ('TRX-A01969', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A01969', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 1, 960000, 960000, 800000, 0, 160000, 'pcs'),
  ('TRX-A01969', 'PRD-A-AKS-0179', 'Memory Card 32GB', 2, 102000, 204000, 88000, 0, 28000, 'pcs'),
  ('TRX-A01969', 'PRD-A-AKS-0053', 'Memory Card 16GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01032', '2026-11-06 14:04:57+07:00', 'Maya Putri 4', 'Admin', 6816000, 0, 6816000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101031', '', '', '', 441000, NULL, '2026-11-06 14:04:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01032', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 1, 2140000, 2140000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A01032', 'PRD-A-KEL-0166', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01032', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 2, 2290000, 4580000, 2200000, 0, 180000, 'pcs'),
  ('TRX-A01032', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 1, 43000, 43000, 32000, 0, 11000, 'pcs'),
  ('TRX-A01032', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 1, 29000, 29000, 25000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01820', '2026-11-06 14:04:17+07:00', 'Umum', 'Admin', 5969000, 0, 2984500, 2984500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101819', '', '', '', 356000, NULL, '2026-11-06 14:04:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01820', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01820', 'PRD-A-HP-0050', 'HP REALME S23 2/16 76169', 2, 2860000, 5720000, 2700000, 0, 320000, 'pcs'),
  ('TRX-A01820', 'PRD-A-KEL-0045', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00226', '2026-11-06 13:57:46+07:00', 'Nur Halimah 4', 'Admin', 8319000, 0, 4159500, 4159500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100225', '', '', '', 865000, NULL, '2026-11-06 13:57:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00226', 'PRD-A-AKS-0233', 'Tempered Glass Vivo', 2, 9000, 18000, 5000, 0, 8000, 'pcs'),
  ('TRX-A00226', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00226', 'PRD-A-AKS-0141', 'Batre Oppo A57', 2, 62000, 124000, 50000, 0, 24000, 'pcs'),
  ('TRX-A00226', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 2, 1170000, 2340000, 1100000, 0, 140000, 'pcs'),
  ('TRX-A00226', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 2, 520000, 1040000, 300000, 0, 440000, 'pcs'),
  ('TRX-A00226', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00226', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 3, 1570000, 4710000, 1500000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01734', '2026-11-06 13:57:36+07:00', 'Lilis Suryani 3', 'Admin', 11767000, 0, 11767000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101733', '', '', '', 517500, NULL, '2026-11-06 13:57:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01734', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01734', 'PRD-A-HP-0334', 'HP SAMSUNG Y16 3/64 17970', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A01734', 'PRD-A-KEL-0123', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01734', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00553', '2026-11-06 13:49:38+07:00', 'Dedi Supriadi 4', 'Admin', 6000, 0, 6000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100552', '', '', '', 2000, NULL, '2026-11-06 13:49:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00553', 'PRD-A-KEL-0016', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00168', '2026-11-06 13:40:33+07:00', 'D''Angelo Cell', 'Admin', 10768000, 0, 10768000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100167', '', '', '', 650000, NULL, '2026-11-06 13:40:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00168', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 2, 1520000, 3040000, 1400000, 0, 240000, 'pcs'),
  ('TRX-A00168', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 2, 14000, 28000, 9000, 0, 10000, 'pcs'),
  ('TRX-A00168', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 1, 2480000, 2480000, 2300000, 0, 180000, 'pcs'),
  ('TRX-A00168', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 2, 2610000, 5220000, 2500000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01219', '2026-11-06 13:36:44+07:00', 'Toko O''Brien', 'Admin', 20960000, 0, 0, 20960000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101218', '', '', '', 2160000, NULL, '2026-11-06 13:36:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01219', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 3, 750000, 2250000, 500000, 0, 750000, 'pcs'),
  ('TRX-A01219', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 2, 2290000, 4580000, 2200000, 0, 180000, 'pcs'),
  ('TRX-A01219', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A01219', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01934', '2026-11-06 13:33:10+07:00', 'Umum', 'Admin', 7269000, 0, 3634500, 3634500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101933', '', '', '', 602000, NULL, '2026-11-06 13:33:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01934', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 3, 33000, 99000, 28000, 0, 15000, 'pcs'),
  ('TRX-A01934', 'PRD-A-AKS-0223', 'Memory Card 32GB', 1, 51000, 51000, 48000, 0, 3000, 'pcs'),
  ('TRX-A01934', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 3, 520000, 1560000, 400000, 0, 360000, 'pcs'),
  ('TRX-A01934', 'PRD-A-AKS-0023', 'Memory Card 32GB', 3, 53000, 159000, 45000, 0, 24000, 'pcs'),
  ('TRX-A01934', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 2, 2700000, 5400000, 2600000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01309', '2026-11-06 13:31:38+07:00', 'Rina Marlina', 'Admin', 9248000, 0, 9248000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101308', '', '', '', 812000, NULL, '2026-11-06 13:31:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01309', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 2, 1870000, 3740000, 1800000, 0, 140000, 'pcs'),
  ('TRX-A01309', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 2, 1760000, 3520000, 1700000, 0, 120000, 'pcs'),
  ('TRX-A01309', 'PRD-A-AKS-0102', 'Case Vivo Y20', 1, 36000, 36000, 30000, 0, 6000, 'pcs'),
  ('TRX-A01309', 'PRD-A-AKS-0154', 'Memory Card 16GB', 2, 101000, 202000, 86000, 0, 30000, 'pcs'),
  ('TRX-A01309', 'PRD-A-KEL-0029', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A01309', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A01309', 'PRD-A-HP-0292', 'HP VIVO C3 4/64 55632', 2, 850000, 1700000, 600000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01502', '2026-11-06 13:24:58+07:00', 'Umum', 'Admin', 6210000, 0, 6210000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101501', '', '', '', 482000, NULL, '2026-11-06 13:24:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01502', 'PRD-A-KEL-0048', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01502', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01502', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 1, 1700000, 1700000, 1600000, 0, 100000, 'pcs'),
  ('TRX-A01502', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A01502', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 1, 960000, 960000, 800000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00191', '2026-11-06 13:19:35+07:00', 'Siti Aisyah 3', 'Admin', 15000, 0, 15000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100190', '', '', '', 6000, NULL, '2026-11-06 13:19:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00191', 'PRD-A-KEL-0008', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00191', 'PRD-A-KEL-0091', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00256', '2026-11-06 12:45:16+07:00', 'Umum', 'Admin', 101000, 0, 101000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100255', '', '', '', 38000, NULL, '2026-11-06 12:45:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00256', 'PRD-A-KEL-0184', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00256', 'PRD-A-AKS-0071', 'Case Oppo A57', 3, 31000, 93000, 19000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00537', '2026-11-06 12:38:21+07:00', 'Umum', 'Admin', 2627000, 0, 2627000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100536', '', '', '', 152000, NULL, '2026-11-06 12:38:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00537', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 1, 2540000, 2540000, 2400000, 0, 140000, 'pcs'),
  ('TRX-A00537', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 3, 29000, 87000, 25000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01864', '2026-11-06 12:38:06+07:00', 'Umum', 'Admin', 11922500, 0, 0, 11922500, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101863', '', '', '', 779700, NULL, '2026-11-06 12:38:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01864', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 1, 2000000, 2000000, 1900000, 0, 100000, 'pcs'),
  ('TRX-A01864', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 3, 2420000, 7260000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A01864', 'PRD-A-KEL-0070', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A01864', 'PRD-A-AKS-0245', 'Batre Samsung J1', 3, 57000, 171000, 43000, 0, 42000, 'pcs'),
  ('TRX-A01864', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 1, 1260000, 1260000, 1100000, 0, 160000, 'pcs'),
  ('TRX-A01864', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 1, 14000, 14000, 9000, 0, 5000, 'pcs'),
  ('TRX-A01864', 'PRD-A-KEL-0007', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01864', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 1, 1210000, 1210000, 1100000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00641', '2026-11-06 12:16:43+07:00', 'Joko Prasetyo 3', 'Admin', 7036000, 0, 3518000, 3518000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100640', '', '', '', 1154000, NULL, '2026-11-06 12:16:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00641', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 2, 1860000, 3720000, 1700000, 0, 320000, 'pcs'),
  ('TRX-A00641', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 1, 820000, 820000, 600000, 0, 220000, 'pcs'),
  ('TRX-A00641', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 3, 790000, 2370000, 600000, 0, 570000, 'pcs'),
  ('TRX-A00641', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A00641', 'PRD-A-KEL-0029', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A00641', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00799', '2026-11-06 12:01:03+07:00', 'Yusuf Maulana 5', 'Admin', 9103000, 0, 4551500, 4551500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100798', '', '', '', 667000, NULL, '2026-11-06 12:01:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00799', 'PRD-A-AKS-0079', 'Handsfree Oppo', 2, 51000, 102000, 43000, 0, 16000, 'pcs'),
  ('TRX-A00799', 'PRD-A-KEL-0034', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A00799', 'PRD-A-KEL-0188', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00799', 'PRD-A-AKS-0245', 'Batre Samsung J1', 2, 57000, 114000, 43000, 0, 28000, 'pcs'),
  ('TRX-A00799', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 2, 33000, 66000, 27000, 0, 12000, 'pcs'),
  ('TRX-A00799', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A00799', 'PRD-A-AKS-0154', 'Memory Card 16GB', 3, 101000, 303000, 86000, 0, 45000, 'pcs'),
  ('TRX-A00799', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 3, 2780000, 8340000, 2600000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00935', '2026-11-06 11:58:12+07:00', 'Umum', 'Admin', 13082000, 0, 6541000, 6541000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100934', '', '', '', 1073000, NULL, '2026-11-06 11:58:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00935', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 1, 2700000, 2700000, 2500000, 0, 200000, 'pcs'),
  ('TRX-A00935', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 1, 1520000, 1520000, 1300000, 0, 220000, 'pcs'),
  ('TRX-A00935', 'PRD-A-KEL-0037', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A00935', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs'),
  ('TRX-A00935', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A00935', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00935', 'PRD-A-KEL-0196', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00935', 'PRD-A-AKS-0125', 'Handsfree Samsung', 1, 52000, 52000, 37000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01801', '2026-11-06 11:55:20+07:00', 'Umum', 'Admin', 54000, 0, 54000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101800', '', '', '', 14000, NULL, '2026-11-06 11:55:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01801', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A01801', 'PRD-A-AKS-0102', 'Case Vivo Y20', 1, 36000, 36000, 30000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01064', '2026-11-06 11:38:31+07:00', 'Toko O''Brien', 'Admin', 3205000, 0, 3205000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101063', '', '', '', 511000, NULL, '2026-11-06 11:38:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01064', 'PRD-A-KEL-0003', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A01064', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 27000, 0, 8000, 'pcs'),
  ('TRX-A01064', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 2, 23000, 46000, 16000, 0, 14000, 'pcs'),
  ('TRX-A01064', 'PRD-A-KEL-0047', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01064', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 2, 1540000, 3080000, 1300000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01144', '2026-11-06 11:04:45+07:00', 'Umum', 'Admin', 1563000, 0, 1563000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101143', '', '', '', 532000, NULL, '2026-11-06 11:04:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01144', 'PRD-A-AKS-0041', 'Tempered Glass Vivo', 3, 19000, 57000, 5000, 0, 42000, 'pcs'),
  ('TRX-A01144', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A01144', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 2, 740000, 1480000, 500000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01825', '2026-11-06 11:03:20+07:00', 'Ayu Lestari 5', 'Admin', 6549000, 0, 0, 6549000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101824', '', '', '', 183500, NULL, '2026-11-06 11:03:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01825', 'PRD-A-KEL-0057', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01825', 'PRD-A-KEL-0008', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01825', 'PRD-A-KEL-0143', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01825', 'PRD-A-AKS-0186', 'Case Redmi 9A', 1, 25000, 25000, 14000, 0, 11000, 'pcs'),
  ('TRX-A01825', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 3, 2150000, 6450000, 2100000, 0, 150000, 'pcs'),
  ('TRX-A01825', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 1, 26000, 26000, 16000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01903', '2026-11-06 11:01:48+07:00', 'Nur Halimah 4', 'Admin', 2756000, 0, 2756000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101902', '', '', '', 288000, NULL, '2026-11-06 11:01:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01903', 'PRD-A-AKS-0088', 'Case Redmi 9A', 2, 43000, 86000, 34000, 0, 18000, 'pcs'),
  ('TRX-A01903', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 3, 890000, 2670000, 800000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00445', '2026-11-06 10:58:11+07:00', 'Lilis Suryani 2', 'Admin', 9400000, 0, 9400000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100444', '', '', '', 800000, NULL, '2026-11-06 10:58:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00445', 'PRD-A-HP-0005', 'HP VIVO Y53 8/256 91381', 2, 2720000, 5440000, 2500000, 0, 440000, 'pcs'),
  ('TRX-A00445', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 3, 1320000, 3960000, 1200000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01737', '2026-11-06 10:53:36+07:00', 'Umum', 'Admin', 2730000, 0, 2730000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101736', '', '', '', 630000, NULL, '2026-11-06 10:53:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01737', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 3, 910000, 2730000, 700000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00918', '2026-11-06 10:52:29+07:00', 'Siti Aisyah 3', 'Admin', 11397000, 0, 11397000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100917', '', '', '', 783000, NULL, '2026-11-06 10:52:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00918', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 2, 580000, 1160000, 500000, 0, 160000, 'pcs'),
  ('TRX-A00918', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A00918', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00918', 'PRD-A-HP-0516', 'HP OPPO Y91C 2/16 44748', 2, 3040000, 6080000, 2800000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00727', '2026-11-06 10:44:00+07:00', 'Umum', 'Admin', 9971000, 0, 9971000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100726', '', '', '', 1142000, NULL, '2026-11-06 10:44:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00727', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 3, 2000000, 6000000, 1800000, 0, 600000, 'pcs'),
  ('TRX-A00727', 'PRD-A-KEL-0157', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00727', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 2, 1800000, 3600000, 1600000, 0, 400000, 'pcs'),
  ('TRX-A00727', 'PRD-A-KEL-0184', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00727', 'PRD-A-KEL-0097', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00727', 'PRD-A-AKS-0054', 'Batre Samsung J1', 3, 40000, 120000, 30000, 0, 30000, 'pcs'),
  ('TRX-A00727', 'PRD-A-AKS-0082', 'Case Redmi 9A', 2, 26000, 52000, 23000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01358', '2026-11-06 10:38:24+07:00', 'Eko Saputra 3', 'Admin', 3314000, 0, 3314000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101357', '', '', '', 313000, NULL, '2026-11-06 10:38:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01358', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A01358', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 1, 75000, 75000, 50000, 0, 25000, 'pcs'),
  ('TRX-A01358', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 2, 45000, 90000, 33000, 0, 24000, 'pcs'),
  ('TRX-A01358', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs'),
  ('TRX-A01358', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 1, 39000, 39000, 35000, 0, 4000, 'pcs'),
  ('TRX-A01358', 'PRD-A-AKS-0178', 'Case Vivo Y20', 2, 36000, 72000, 24000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01486', '2026-11-06 10:15:32+07:00', 'Umum', 'Admin', 1811000, 0, 905500, 905500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101485', '', '', '', 573500, NULL, '2026-11-06 10:15:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01486', 'PRD-A-KEL-0065', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01486', 'PRD-A-AKS-0067', 'Case Redmi 9A', 2, 39000, 78000, 30000, 0, 18000, 'pcs'),
  ('TRX-A01486', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 1, 55000, 55000, 48000, 0, 7000, 'pcs'),
  ('TRX-A01486', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 1, 590000, 590000, 400000, 0, 190000, 'pcs'),
  ('TRX-A01486', 'PRD-A-KEL-0140', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01486', 'PRD-A-HP-0143', 'HP NOKIA Y53 4/128 49361', 2, 450000, 900000, 300000, 0, 300000, 'pcs'),
  ('TRX-A01486', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 3, 29000, 87000, 25000, 0, 12000, 'pcs'),
  ('TRX-A01486', 'PRD-A-KEL-0097', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01347', '2026-11-06 10:15:25+07:00', 'Umum', 'Admin', 11080000, 0, 11080000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101346', '', '', '', 1166000, NULL, '2026-11-06 10:15:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01347', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 1, 1280000, 1280000, 1200000, 0, 80000, 'pcs'),
  ('TRX-A01347', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 2, 2490000, 4980000, 2300000, 0, 380000, 'pcs'),
  ('TRX-A01347', 'PRD-A-KEL-0062', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01347', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 3, 1390000, 4170000, 1200000, 0, 570000, 'pcs'),
  ('TRX-A01347', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 1, 630000, 630000, 500000, 0, 130000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00664', '2026-11-06 10:10:02+07:00', 'D''Angelo Cell', 'Admin', 4791000, 0, 4791000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100663', '', '', '', 733000, NULL, '2026-11-06 10:10:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00664', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 2, 580000, 1160000, 400000, 0, 360000, 'pcs'),
  ('TRX-A00664', 'PRD-A-KEL-0170', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A00664', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 1, 1620000, 1620000, 1500000, 0, 120000, 'pcs'),
  ('TRX-A00664', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00664', 'PRD-A-KEL-0041', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00664', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A00664', 'PRD-A-KEL-0027', 'Pensil', 2, 2000, 4000, 1500, 0, 1000, 'pcs'),
  ('TRX-A00664', 'PRD-A-AKS-0168', 'Memory Card 32GB', 2, 40000, 80000, 32000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01402', '2026-11-06 09:53:33+07:00', 'Fajar Nugroho 2', 'Admin', 293000, 0, 293000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101401', '', '', '', 72000, NULL, '2026-11-06 09:53:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01402', 'PRD-A-KEL-0078', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01402', 'PRD-A-KEL-0141', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01402', 'PRD-A-KEL-0065', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01402', 'PRD-A-AKS-0188', 'Batre Oppo A57', 1, 52000, 52000, 40000, 0, 12000, 'pcs'),
  ('TRX-A01402', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 2, 43000, 86000, 35000, 0, 16000, 'pcs'),
  ('TRX-A01402', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 21000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01007', '2026-11-06 09:38:15+07:00', 'Umum', 'Admin', 4913000, 0, 4913000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101006', '', '', '', 684000, NULL, '2026-11-06 09:38:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01007', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 3, 740000, 2220000, 600000, 0, 420000, 'pcs'),
  ('TRX-A01007', 'PRD-A-HP-0175', 'HP REALME S23 4/64 80825', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A01007', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A01007', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 3, 41000, 123000, 30000, 0, 33000, 'pcs'),
  ('TRX-A01007', 'PRD-A-KEL-0168', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01007', 'PRD-A-KEL-0110', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01007', 'PRD-A-KEL-0072', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00081', '2026-11-06 09:32:26+07:00', 'Fajar Nugroho 3', 'Admin', 1922000, 0, 1922000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100080', '', '', '', 444000, NULL, '2026-11-06 09:32:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00081', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A00081', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 2, 910000, 1820000, 700000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01839', '2026-11-06 09:28:41+07:00', 'Eko Saputra 5', 'Admin', 7116000, 0, 7116000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101838', '', '', '', 812000, NULL, '2026-11-06 09:28:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01839', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs'),
  ('TRX-A01839', 'PRD-A-KEL-0185', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01839', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 3, 520000, 1560000, 400000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00868', '2026-11-06 09:26:16+07:00', 'Fitri Rahmawati 4', 'Admin', 18242000, 0, 9121000, 9121000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100867', '', '', '', 1449000, NULL, '2026-11-06 09:26:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00868', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 2, 2600000, 5200000, 2400000, 0, 400000, 'pcs'),
  ('TRX-A00868', 'PRD-A-HP-0002', 'HP REALME A16 2/16 79012', 2, 500000, 1000000, 400000, 0, 200000, 'pcs'),
  ('TRX-A00868', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 3, 1550000, 4650000, 1400000, 0, 450000, 'pcs'),
  ('TRX-A00868', 'PRD-A-KEL-0121', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00868', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 3, 2420000, 7260000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A00868', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 3, 36000, 108000, 25000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00192', '2026-11-06 09:03:06+07:00', 'Sri Wahyuni 5', 'Admin', 11973000, 0, 11973000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100191', '', '', '', 871500, NULL, '2026-11-06 09:03:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00192', 'PRD-A-KEL-0039', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00192', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 3, 2090000, 6270000, 2000000, 0, 270000, 'pcs'),
  ('TRX-A00192', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 3, 1900000, 5700000, 1700000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00867', '2026-11-06 08:37:06+07:00', 'Sri Wahyuni 5', 'Admin', 2720000, 0, 2720000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100866', '', '', '', 220000, NULL, '2026-11-06 08:37:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00867', 'PRD-A-HP-0005', 'HP VIVO Y53 8/256 91381', 1, 2720000, 2720000, 2500000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01390', '2026-11-06 08:34:43+07:00', 'Umum', 'Admin', 1023500, 0, 1023500, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101389', '', '', '', 176700, NULL, '2026-11-06 08:34:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01390', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01390', 'PRD-A-AKS-0235', 'Handsfree Xiaomi', 1, 32000, 32000, 22000, 0, 10000, 'pcs'),
  ('TRX-A01390', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 2, 480000, 960000, 400000, 0, 160000, 'pcs'),
  ('TRX-A01390', 'PRD-A-KEL-0054', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01390', 'PRD-A-KEL-0083', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00482', '2026-11-06 08:16:47+07:00', 'Umum', 'Admin', 34500, 0, 34500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100481', '', '', '', 11100, NULL, '2026-11-06 08:16:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00482', 'PRD-A-KEL-0005', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00482', 'PRD-A-KEL-0165', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00331', '2026-11-06 08:06:24+07:00', 'Umum', 'Admin', 4409000, 0, 4409000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100330', '', '', '', 521000, NULL, '2026-11-06 08:06:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00331', 'PRD-A-AKS-0105', 'Case Samsung A03', 2, 36000, 72000, 21000, 0, 30000, 'pcs'),
  ('TRX-A00331', 'PRD-A-KEL-0125', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00331', 'PRD-A-AKS-0168', 'Memory Card 32GB', 1, 40000, 40000, 32000, 0, 8000, 'pcs'),
  ('TRX-A00331', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00892', '2026-11-06 08:03:59+07:00', 'Umum', 'Admin', 8637000, 0, 4318500, 4318500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100891', '', '', '', 749000, NULL, '2026-11-06 08:03:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00892', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 2, 1620000, 3240000, 1500000, 0, 240000, 'pcs'),
  ('TRX-A00892', 'PRD-A-KEL-0138', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00892', 'PRD-A-KEL-0020', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00892', 'PRD-A-AKS-0172', 'Case Samsung A03', 1, 24000, 24000, 20000, 0, 4000, 'pcs'),
  ('TRX-A00892', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00892', 'PRD-A-KEL-0169', 'Teh celup', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00892', 'PRD-A-KEL-0057', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00892', 'PRD-A-KEL-0056', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00442', '2026-11-06 08:00:35+07:00', 'Umum', 'Admin', 8076000, 0, 4038000, 4038000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100441', '', '', '', 439000, NULL, '2026-11-06 08:00:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00442', 'PRD-A-KEL-0198', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A00442', 'PRD-A-AKS-0055', 'Memory Card 16GB', 3, 66000, 198000, 56000, 0, 30000, 'pcs'),
  ('TRX-A00442', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 1, 1450000, 1450000, 1400000, 0, 50000, 'pcs'),
  ('TRX-A00442', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A00442', 'PRD-A-AKS-0134', 'Case Oppo A57', 1, 35000, 35000, 28000, 0, 7000, 'pcs'),
  ('TRX-A00442', 'PRD-A-KEL-0182', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00442', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01919', '2026-11-05 20:54:31+07:00', 'Umum', 'Admin', 5397000, 0, 5397000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101918', '', '', '', 508000, NULL, '2026-11-05 20:54:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01919', 'PRD-A-AKS-0206', 'Tempered Glass Vivo', 2, 15000, 30000, 7000, 0, 16000, 'pcs'),
  ('TRX-A01919', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A01919', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 3, 29000, 87000, 25000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00999', '2026-11-05 20:46:32+07:00', 'Rudi Hartono 5', 'Admin', 1919000, 0, 959500, 959500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100998', '', '', '', 400500, NULL, '2026-11-05 20:46:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00999', 'PRD-A-KEL-0119', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00999', 'PRD-A-KEL-0129', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A00999', 'PRD-A-KEL-0011', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00999', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 3, 630000, 1890000, 500000, 0, 390000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00715', '2026-11-05 20:43:22+07:00', 'Lilis Suryani 2', 'Admin', 9917000, 0, 4958500, 4958500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100714', '', '', '', 494000, NULL, '2026-11-05 20:43:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00715', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 1, 1990000, 1990000, 1800000, 0, 190000, 'pcs'),
  ('TRX-A00715', 'PRD-A-AKS-0233', 'Tempered Glass Vivo', 1, 9000, 9000, 5000, 0, 4000, 'pcs'),
  ('TRX-A00715', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 2, 74000, 148000, 59000, 0, 30000, 'pcs'),
  ('TRX-A00715', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 3, 2590000, 7770000, 2500000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01391', '2026-11-05 20:30:04+07:00', 'Umum', 'Admin', 11942000, 0, 5971000, 5971000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101390', '', '', '', 785000, NULL, '2026-11-05 20:30:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01391', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 2, 32000, 64000, 24000, 0, 16000, 'pcs'),
  ('TRX-A01391', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01391', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 3, 2090000, 6270000, 2000000, 0, 270000, 'pcs'),
  ('TRX-A01391', 'PRD-A-KEL-0072', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01391', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 2, 550000, 1100000, 400000, 0, 300000, 'pcs'),
  ('TRX-A01391', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs'),
  ('TRX-A01391', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A01391', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00430', '2026-11-05 20:26:24+07:00', 'Dewi Lestari 5', 'Admin', 173000, 0, 86500, 86500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100429', '', '', '', 66500, NULL, '2026-11-05 20:26:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00430', 'PRD-A-KEL-0027', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A00430', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A00430', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 3, 27000, 81000, 18000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01994', '2026-11-05 20:10:18+07:00', 'Lilis Suryani', 'Admin', 51000, 0, 51000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101993', '', '', '', 9000, NULL, '2026-11-05 20:10:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01994', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 3, 17000, 51000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00580', '2026-11-05 19:46:11+07:00', 'Umum', 'Admin', 18568000, 0, 18568000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100579', '', '', '', 828000, NULL, '2026-11-05 19:46:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00580', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00580', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 3, 2580000, 7740000, 2500000, 0, 240000, 'pcs'),
  ('TRX-A00580', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00580', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 2, 1640000, 3280000, 1500000, 0, 280000, 'pcs'),
  ('TRX-A00580', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 3, 2500000, 7500000, 2400000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00724', '2026-11-05 19:44:08+07:00', 'Umum', 'Admin', 12286500, 0, 6143250, 6143250, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100723', '', '', '', 1644000, NULL, '2026-11-05 19:44:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00724', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 2, 27000, 54000, 23000, 0, 8000, 'pcs'),
  ('TRX-A00724', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A00724', 'PRD-A-KEL-0023', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00724', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00724', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 1, 69000, 69000, 58000, 0, 11000, 'pcs'),
  ('TRX-A00724', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 3, 520000, 1560000, 400000, 0, 360000, 'pcs'),
  ('TRX-A00724', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 2, 940000, 1880000, 700000, 0, 480000, 'pcs'),
  ('TRX-A00724', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01601', '2026-11-05 19:36:41+07:00', 'Umum', 'Admin', 8356000, 0, 0, 8356000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101600', '', '', '', 893000, NULL, '2026-11-05 19:36:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01601', 'PRD-A-KEL-0194', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01601', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01601', 'PRD-A-KEL-0011', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01601', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 2, 1100000, 2200000, 900000, 0, 400000, 'pcs'),
  ('TRX-A01601', 'PRD-A-KEL-0091', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01601', 'PRD-A-KEL-0081', 'Pensil', 2, 2000, 4000, 1500, 0, 1000, 'pcs'),
  ('TRX-A01601', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 1, 30000, 30000, 18000, 0, 12000, 'pcs'),
  ('TRX-A01601', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 2, 3030000, 6060000, 2800000, 0, 460000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00559', '2026-11-05 19:32:10+07:00', 'Rina Marlina 3', 'Admin', 2220000, 0, 2220000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100558', '', '', '', 720000, NULL, '2026-11-05 19:32:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00559', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 3, 740000, 2220000, 500000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01036', '2026-11-05 19:23:47+07:00', 'Dewi Lestari', 'Admin', 5430000, 0, 5430000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101035', '', '', '', 630000, NULL, '2026-11-05 19:23:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01036', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01641', '2026-11-05 19:10:32+07:00', 'Maya Putri 4', 'Admin', 18485000, 0, 18485000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101640', '', '', '', 2092000, NULL, '2026-11-05 19:10:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01641', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 3, 590000, 1770000, 400000, 0, 570000, 'pcs'),
  ('TRX-A01641', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A01641', 'PRD-A-AKS-0102', 'Case Vivo Y20', 2, 36000, 72000, 30000, 0, 12000, 'pcs'),
  ('TRX-A01641', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 2, 2700000, 5400000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01641', 'PRD-A-HP-0348', 'HP REALME C15 8/256 21999', 3, 910000, 2730000, 700000, 0, 630000, 'pcs'),
  ('TRX-A01641', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 1, 35000, 35000, 20000, 0, 15000, 'pcs'),
  ('TRX-A01641', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 3, 2270000, 6810000, 2100000, 0, 510000, 'pcs'),
  ('TRX-A01641', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 1, 18000, 18000, 13000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01074', '2026-11-05 19:06:51+07:00', 'Fajar Nugroho 3', 'Admin', 4822000, 0, 4822000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101073', '', '', '', 715000, NULL, '2026-11-05 19:06:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01074', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs'),
  ('TRX-A01074', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A01074', 'PRD-A-KEL-0022', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01074', 'PRD-A-AKS-0236', 'Memory Card 64GB', 1, 72000, 72000, 63000, 0, 9000, 'pcs'),
  ('TRX-A01074', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A01074', 'PRD-A-AKS-0027', 'Batre Samsung J1', 2, 51000, 102000, 39000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00354', '2026-11-05 18:44:53+07:00', 'Umum', 'Admin', 4688000, 0, 4688000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100353', '', '', '', 844000, NULL, '2026-11-05 18:44:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00354', 'PRD-A-HP-0254', 'HP VIVO J5 2/16 85377', 3, 1000000, 3000000, 800000, 0, 600000, 'pcs'),
  ('TRX-A00354', 'PRD-A-AKS-0073', 'Memory Card 64GB', 3, 35000, 105000, 31000, 0, 12000, 'pcs'),
  ('TRX-A00354', 'PRD-A-AKS-0079', 'Handsfree Oppo', 1, 51000, 51000, 43000, 0, 8000, 'pcs'),
  ('TRX-A00354', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 1, 1520000, 1520000, 1300000, 0, 220000, 'pcs'),
  ('TRX-A00354', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01222', '2026-11-05 18:43:26+07:00', 'Andi Kurnia 4', 'Admin', 11467000, 0, 11467000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101221', '', '', '', 922000, NULL, '2026-11-05 18:43:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01222', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 2, 1680000, 3360000, 1600000, 0, 160000, 'pcs'),
  ('TRX-A01222', 'PRD-A-AKS-0239', 'Batre Samsung J1', 1, 43000, 43000, 30000, 0, 13000, 'pcs'),
  ('TRX-A01222', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A01222', 'PRD-A-AKS-0043', 'Case Oppo A57', 1, 28000, 28000, 13000, 0, 15000, 'pcs'),
  ('TRX-A01222', 'PRD-A-AKS-0234', 'Case Samsung A03', 1, 24000, 24000, 16000, 0, 8000, 'pcs'),
  ('TRX-A01222', 'PRD-A-AKS-0153', 'Memory Card 32GB', 1, 92000, 92000, 86000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01940', '2026-11-05 18:09:38+07:00', 'Joko Prasetyo 3', 'Admin', 902000, 0, 902000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101939', '', '', '', 116000, NULL, '2026-11-05 18:09:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01940', 'PRD-A-AKS-0230', 'Handsfree Oppo', 2, 52000, 104000, 38000, 0, 28000, 'pcs'),
  ('TRX-A01940', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 1, 780000, 780000, 700000, 0, 80000, 'pcs'),
  ('TRX-A01940', 'PRD-A-AKS-0137', 'Tempered Glass Samsung', 1, 18000, 18000, 10000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01549', '2026-11-05 18:08:35+07:00', 'Umum', 'Admin', 55000, 0, 0, 55000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101548', '', '', '', 7000, NULL, '2026-11-05 18:08:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01549', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 1, 55000, 55000, 48000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00964', '2026-11-05 17:57:06+07:00', 'Andi Kurnia', 'Admin', 206000, 0, 0, 206000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100963', '', '', '', 50000, NULL, '2026-11-05 17:57:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00964', 'PRD-A-AKS-0102', 'Case Vivo Y20', 1, 36000, 36000, 30000, 0, 6000, 'pcs'),
  ('TRX-A00964', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 1, 25000, 25000, 13000, 0, 12000, 'pcs'),
  ('TRX-A00964', 'PRD-A-AKS-0158', 'Kabel Charger 2m', 1, 24000, 24000, 11000, 0, 13000, 'pcs'),
  ('TRX-A00964', 'PRD-A-AKS-0108', 'Memory Card 16GB', 1, 96000, 96000, 87000, 0, 9000, 'pcs'),
  ('TRX-A00964', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 1, 25000, 25000, 15000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01530', '2026-11-05 17:47:38+07:00', 'Rudi Hartono 2', 'Admin', 3000000, 0, 3000000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101529', '', '', '', 172000, NULL, '2026-11-05 17:47:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01530', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 1, 2950000, 2950000, 2800000, 0, 150000, 'pcs'),
  ('TRX-A01530', 'PRD-A-AKS-0186', 'Case Redmi 9A', 2, 25000, 50000, 14000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01116', '2026-11-05 17:43:58+07:00', 'Ayu Lestari 5', 'Admin', 16468000, 0, 16468000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101115', '', '', '', 1669000, NULL, '2026-11-05 17:43:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01116', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 2, 1350000, 2700000, 1200000, 0, 300000, 'pcs'),
  ('TRX-A01116', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A01116', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 3, 1110000, 3330000, 1000000, 0, 330000, 'pcs'),
  ('TRX-A01116', 'PRD-A-AKS-0193', 'Case Oppo A57', 1, 25000, 25000, 21000, 0, 4000, 'pcs'),
  ('TRX-A01116', 'PRD-A-AKS-0174', 'Case Redmi 9A', 3, 41000, 123000, 26000, 0, 45000, 'pcs'),
  ('TRX-A01116', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A01116', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 3, 600000, 1800000, 500000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00355', '2026-11-05 17:27:35+07:00', 'Joko Prasetyo 4', 'Admin', 16376000, 0, 8188000, 8188000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100354', '', '', '', 1074000, NULL, '2026-11-05 17:27:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00355', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 3, 52000, 156000, 46000, 0, 18000, 'pcs'),
  ('TRX-A00355', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 3, 1900000, 5700000, 1700000, 0, 600000, 'pcs'),
  ('TRX-A00355', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00355', 'PRD-A-HP-0050', 'HP REALME S23 2/16 76169', 1, 2860000, 2860000, 2700000, 0, 160000, 'pcs'),
  ('TRX-A00355', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 2, 20000, 40000, 14000, 0, 12000, 'pcs'),
  ('TRX-A00355', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 2, 2700000, 5400000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A00355', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00653', '2026-11-05 17:16:08+07:00', 'Yusuf Maulana', 'Admin', 15320000, 0, 15320000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100652', '', '', '', 1420000, NULL, '2026-11-05 17:16:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00653', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 3, 2480000, 7440000, 2300000, 0, 540000, 'pcs'),
  ('TRX-A00653', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 2, 2110000, 4220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A00653', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 3, 1220000, 3660000, 1000000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01600', '2026-11-05 17:09:27+07:00', 'Umum', 'Admin', 16726000, 0, 0, 16726000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101599', '', '', '', 1746000, NULL, '2026-11-05 17:09:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01600', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 2, 2560000, 5120000, 2500000, 0, 120000, 'pcs'),
  ('TRX-A01600', 'PRD-A-KEL-0161', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01600', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 3, 2350000, 7050000, 2100000, 0, 750000, 'pcs'),
  ('TRX-A01600', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 3, 430000, 1290000, 300000, 0, 390000, 'pcs'),
  ('TRX-A01600', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 2, 33000, 66000, 28000, 0, 10000, 'pcs'),
  ('TRX-A01600', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A01600', 'PRD-A-HP-0510', 'HP SAMSUNG Y91C 2/32 52223', 1, 350000, 350000, 300000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01480', '2026-11-05 17:06:09+07:00', 'Hendra Gunawan 4', 'Admin', 1432000, 0, 1432000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101479', '', '', '', 224500, NULL, '2026-11-05 17:06:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01480', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 1, 1420000, 1420000, 1200000, 0, 220000, 'pcs'),
  ('TRX-A01480', 'PRD-A-KEL-0119', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01435', '2026-11-05 16:34:06+07:00', 'Lilis Suryani 3', 'Admin', 3078000, 0, 1539000, 1539000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101434', '', '', '', 255500, NULL, '2026-11-05 16:34:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01435', 'PRD-A-KEL-0045', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A01435', 'PRD-A-KEL-0043', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01435', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A01435', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01435', 'PRD-A-KEL-0118', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01435', 'PRD-A-KEL-0176', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01242', '2026-11-05 16:33:49+07:00', 'Budi Santoso', 'Admin', 11924000, 0, 11924000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101241', '', '', '', 606000, NULL, '2026-11-05 16:33:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01242', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 3, 1650000, 4950000, 1500000, 0, 450000, 'pcs'),
  ('TRX-A01242', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 1, 2850000, 2850000, 2800000, 0, 50000, 'pcs'),
  ('TRX-A01242', 'PRD-A-KEL-0078', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01242', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 2, 2050000, 4100000, 2000000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00625', '2026-11-05 15:59:55+07:00', 'Umum', 'Admin', 232000, 0, 232000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100624', '', '', '', 64000, NULL, '2026-11-05 15:59:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00625', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 3, 42000, 126000, 30000, 0, 36000, 'pcs'),
  ('TRX-A00625', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A00625', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 1, 54000, 54000, 39000, 0, 15000, 'pcs'),
  ('TRX-A00625', 'PRD-A-KEL-0172', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00573', '2026-11-05 15:49:38+07:00', 'Dedi Supriadi 3', 'Admin', 11600000, 0, 5800000, 5800000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100572', '', '', '', 515000, NULL, '2026-11-05 15:49:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00573', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 1, 2920000, 2920000, 2700000, 0, 220000, 'pcs'),
  ('TRX-A00573', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 3, 2770000, 8310000, 2700000, 0, 210000, 'pcs'),
  ('TRX-A00573', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00573', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A00573', 'PRD-A-AKS-0149', 'Case Samsung A03', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00573', 'PRD-A-KEL-0021', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00573', 'PRD-A-KEL-0148', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00573', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 3, 34000, 102000, 20000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00045', '2026-11-05 15:24:12+07:00', 'Umum', 'Admin', 4879000, 0, 4879000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100044', '', '', '', 391000, NULL, '2026-11-05 15:24:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00045', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs'),
  ('TRX-A00045', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 2, 1730000, 3460000, 1600000, 0, 260000, 'pcs'),
  ('TRX-A00045', 'PRD-A-KEL-0109', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00045', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 1, 1290000, 1290000, 1200000, 0, 90000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00339', '2026-11-05 14:32:05+07:00', 'Ayu Lestari 4', 'Admin', 8730000, 0, 8730000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100338', '', '', '', 630000, NULL, '2026-11-05 14:32:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00339', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 3, 2910000, 8730000, 2700000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01678', '2026-11-05 14:29:13+07:00', 'Budi Santoso 4', 'Admin', 8660000, 0, 0, 8660000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101677', '', '', '', 552000, NULL, '2026-11-05 14:29:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01678', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01678', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A01678', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01639', '2026-11-05 14:10:23+07:00', 'Umum', 'Admin', 4293000, 0, 4293000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101638', '', '', '', 518000, NULL, '2026-11-05 14:10:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01639', 'PRD-A-KEL-0052', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01639', 'PRD-A-AKS-0206', 'Tempered Glass Vivo', 2, 15000, 30000, 7000, 0, 16000, 'pcs'),
  ('TRX-A01639', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 1, 1170000, 1170000, 1100000, 0, 70000, 'pcs'),
  ('TRX-A01639', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 2, 1510000, 3020000, 1300000, 0, 420000, 'pcs'),
  ('TRX-A01639', 'PRD-A-KEL-0045', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01826', '2026-11-05 14:07:50+07:00', 'Umum', 'Admin', 4901000, 0, 4901000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101825', '', '', '', 544000, NULL, '2026-11-05 14:07:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01826', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A01826', 'PRD-A-KEL-0075', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01826', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01826', 'PRD-A-HP-0002', 'HP REALME A16 2/16 79012', 2, 500000, 1000000, 400000, 0, 200000, 'pcs'),
  ('TRX-A01826', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 2, 1850000, 3700000, 1700000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00932', '2026-11-05 13:58:32+07:00', 'Umum', 'Admin', 198000, 0, 198000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100931', '', '', '', 42000, NULL, '2026-11-05 13:58:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00932', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs'),
  ('TRX-A00932', 'PRD-A-AKS-0054', 'Batre Samsung J1', 3, 40000, 120000, 30000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01964', '2026-11-05 13:54:58+07:00', 'Umum', 'Admin', 8225000, 0, 8225000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101963', '', '', '', 784000, NULL, '2026-11-05 13:54:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01964', 'PRD-A-HP-0536', 'HP ITEL HOT30i 8/256 76951', 2, 1080000, 2160000, 1000000, 0, 160000, 'pcs'),
  ('TRX-A01964', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 2, 520000, 1040000, 400000, 0, 240000, 'pcs'),
  ('TRX-A01964', 'PRD-A-AKS-0220', 'Tempered Glass Samsung', 2, 23000, 46000, 20000, 0, 6000, 'pcs'),
  ('TRX-A01964', 'PRD-A-AKS-0038', 'Case Vivo Y20', 2, 40000, 80000, 26000, 0, 28000, 'pcs'),
  ('TRX-A01964', 'PRD-A-AKS-0023', 'Memory Card 32GB', 1, 53000, 53000, 45000, 0, 8000, 'pcs'),
  ('TRX-A01964', 'PRD-A-HP-0150', 'HP OPPO Y55S 8/256 41252', 1, 1300000, 1300000, 1200000, 0, 100000, 'pcs'),
  ('TRX-A01964', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 3, 1180000, 3540000, 1100000, 0, 240000, 'pcs'),
  ('TRX-A01964', 'PRD-A-KEL-0139', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01609', '2026-11-05 13:47:52+07:00', 'Budi Santoso 2', 'Admin', 34000, 0, 34000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101608', '', '', '', 6000, NULL, '2026-11-05 13:47:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01609', 'PRD-A-KEL-0192', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00189', '2026-11-05 13:27:38+07:00', 'Umum', 'Admin', 12210000, 0, 6105000, 6105000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100188', '', '', '', 1410000, NULL, '2026-11-05 13:27:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00189', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 3, 700000, 2100000, 500000, 0, 600000, 'pcs'),
  ('TRX-A00189', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A00189', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 3, 1260000, 3780000, 1100000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01395', '2026-11-05 12:59:21+07:00', 'Hendra Gunawan', 'Admin', 2306000, 0, 1153000, 1153000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101394', '', '', '', 182000, NULL, '2026-11-05 12:59:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01395', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 1, 2270000, 2270000, 2100000, 0, 170000, 'pcs'),
  ('TRX-A01395', 'PRD-A-KEL-0012', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01189', '2026-11-05 12:43:41+07:00', 'Ayu Lestari 3', 'Admin', 58000, 0, 29000, 29000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101188', '', '', '', 30000, NULL, '2026-11-05 12:43:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01189', 'PRD-A-AKS-0169', 'Handsfree Oppo', 2, 29000, 58000, 14000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01811', '2026-11-05 12:42:24+07:00', 'Umum', 'Admin', 5878000, 0, 5878000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101810', '', '', '', 541000, NULL, '2026-11-05 12:42:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01811', 'PRD-A-KEL-0196', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01811', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 2, 24000, 48000, 15000, 0, 18000, 'pcs'),
  ('TRX-A01811', 'PRD-A-HP-0454', 'HP INFINIX A16 4/128 75084', 2, 1160000, 2320000, 1000000, 0, 320000, 'pcs'),
  ('TRX-A01811', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 1, 2160000, 2160000, 2100000, 0, 60000, 'pcs'),
  ('TRX-A01811', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 2, 670000, 1340000, 600000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01267', '2026-11-05 12:32:12+07:00', 'Siti Aisyah 2', 'Admin', 6352000, 0, 6352000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101266', '', '', '', 620000, NULL, '2026-11-05 12:32:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01267', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A01267', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 2, 26000, 52000, 16000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01980', '2026-11-05 12:27:42+07:00', 'Umum', 'Admin', 7666000, 0, 7666000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101979', '', '', '', 664000, NULL, '2026-11-05 12:27:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01980', 'PRD-A-AKS-0049', 'Memory Card 32GB', 2, 84000, 168000, 81000, 0, 6000, 'pcs'),
  ('TRX-A01980', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 1, 33000, 33000, 25000, 0, 8000, 'pcs'),
  ('TRX-A01980', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 1, 2590000, 2590000, 2400000, 0, 190000, 'pcs'),
  ('TRX-A01980', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 3, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A01980', 'PRD-A-KEL-0090', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01980', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A01980', 'PRD-A-HP-0483', 'HP REALME Y20 2/16 63302', 1, 1690000, 1690000, 1600000, 0, 90000, 'pcs'),
  ('TRX-A01980', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 1, 1500000, 1500000, 1300000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01210', '2026-11-05 12:22:01+07:00', 'Umum', 'Admin', 2031000, 0, 2031000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101209', '', '', '', 101000, NULL, '2026-11-05 12:22:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01210', 'PRD-A-KEL-0026', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01210', 'PRD-A-AKS-0163', 'Kartu Perdana XL', 1, 24000, 24000, 16000, 0, 8000, 'pcs'),
  ('TRX-A01210', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 1, 1990000, 1990000, 1900000, 0, 90000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01224', '2026-11-05 12:11:48+07:00', 'Fitri Rahmawati 3', 'Admin', 9865000, 0, 9865000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101223', '', '', '', 457000, NULL, '2026-11-05 12:11:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01224', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 1, 1550000, 1550000, 1400000, 0, 150000, 'pcs'),
  ('TRX-A01224', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 1, 1760000, 1760000, 1700000, 0, 60000, 'pcs'),
  ('TRX-A01224', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 1, 15000, 15000, 8000, 0, 7000, 'pcs'),
  ('TRX-A01224', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 3, 2180000, 6540000, 2100000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00662', '2026-11-05 12:09:48+07:00', 'Agus Wijaya 2', 'Admin', 8258000, 0, 8258000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100661', '', '', '', 445000, NULL, '2026-11-05 12:09:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00662', 'PRD-A-AKS-0021', 'Handsfree Samsung', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A00662', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 2, 25000, 50000, 19000, 0, 12000, 'pcs'),
  ('TRX-A00662', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 1, 2560000, 2560000, 2500000, 0, 60000, 'pcs'),
  ('TRX-A00662', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 2, 2780000, 5560000, 2600000, 0, 360000, 'pcs'),
  ('TRX-A00662', 'PRD-A-AKS-0195', 'Memory Card 16GB', 1, 70000, 70000, 65000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00058', '2026-11-05 12:00:15+07:00', 'Intan Permata 5', 'Admin', 12370000, 0, 0, 12370000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100057', '', '', '', 1141000, NULL, '2026-11-05 12:00:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00058', 'PRD-A-KEL-0015', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A00058', 'PRD-A-HP-0536', 'HP ITEL HOT30i 8/256 76951', 2, 1080000, 2160000, 1000000, 0, 160000, 'pcs'),
  ('TRX-A00058', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 1, 2020000, 2020000, 1900000, 0, 120000, 'pcs'),
  ('TRX-A00058', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 3, 1780000, 5340000, 1600000, 0, 540000, 'pcs'),
  ('TRX-A00058', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 1, 25000, 25000, 17000, 0, 8000, 'pcs'),
  ('TRX-A00058', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A00058', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 1, 960000, 960000, 800000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01692', '2026-11-05 11:30:29+07:00', 'Andi Kurnia 4', 'Admin', 2433000, 0, 1216500, 1216500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101691', '', '', '', 123000, NULL, '2026-11-05 11:30:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01692', 'PRD-A-AKS-0134', 'Case Oppo A57', 3, 35000, 105000, 28000, 0, 21000, 'pcs'),
  ('TRX-A01692', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 2, 14000, 28000, 9000, 0, 10000, 'pcs'),
  ('TRX-A01692', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01692', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00889', '2026-11-05 11:19:10+07:00', 'Lilis Suryani 4', 'Admin', 8064000, 0, 8064000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100888', '', '', '', 548000, NULL, '2026-11-05 11:19:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00889', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00889', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 3, 2680000, 8040000, 2500000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01986', '2026-11-05 10:55:00+07:00', 'Umum', 'Admin', 6821000, 0, 6821000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101985', '', '', '', 846000, NULL, '2026-11-05 10:55:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01986', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 3, 25000, 75000, 15000, 0, 30000, 'pcs'),
  ('TRX-A01986', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 3, 35000, 105000, 20000, 0, 45000, 'pcs'),
  ('TRX-A01986', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 1, 28000, 28000, 24000, 0, 4000, 'pcs'),
  ('TRX-A01986', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A01986', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A01986', 'PRD-A-KEL-0168', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01986', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 2, 480000, 960000, 300000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01339', '2026-11-05 10:51:55+07:00', 'Maya Putri', 'Admin', 4933000, 0, 4933000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101338', '', '', '', 388000, NULL, '2026-11-05 10:51:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01339', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs'),
  ('TRX-A01339', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01339', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 1, 2290000, 2290000, 2200000, 0, 90000, 'pcs'),
  ('TRX-A01339', 'PRD-A-AKS-0148', 'Case Vivo Y20', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A01339', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A01339', 'PRD-A-AKS-0214', 'Memory Card 64GB', 1, 100000, 100000, 86000, 0, 14000, 'pcs'),
  ('TRX-A01339', 'PRD-A-KEL-0099', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01339', 'PRD-A-KEL-0091', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00303', '2026-11-05 10:34:18+07:00', 'Yusuf Maulana 5', 'Admin', 13175000, 0, 13175000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100302', '', '', '', 1327000, NULL, '2026-11-05 10:34:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00303', 'PRD-A-AKS-0053', 'Memory Card 16GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs'),
  ('TRX-A00303', 'PRD-A-HP-0400', 'HP SAMSUNG 5A 2/32 51721', 3, 2320000, 6960000, 2100000, 0, 660000, 'pcs'),
  ('TRX-A00303', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs'),
  ('TRX-A00303', 'PRD-A-AKS-0174', 'Case Redmi 9A', 2, 41000, 82000, 26000, 0, 30000, 'pcs'),
  ('TRX-A00303', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 3, 2000000, 6000000, 1800000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00815', '2026-11-05 10:18:33+07:00', 'Agus Wijaya 2', 'Admin', 15665000, 0, 15665000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100814', '', '', '', 619000, NULL, '2026-11-05 10:18:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00815', 'PRD-A-KEL-0143', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00815', 'PRD-A-HP-0508', 'HP REDMI 9C 4/128 88002', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A00815', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs'),
  ('TRX-A00815', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 3, 25000, 75000, 16000, 0, 27000, 'pcs'),
  ('TRX-A00815', 'PRD-A-AKS-0084', 'Memory Card 64GB', 2, 95000, 190000, 82000, 0, 26000, 'pcs'),
  ('TRX-A00815', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 3, 2580000, 7740000, 2500000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;
