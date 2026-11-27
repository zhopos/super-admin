-- ============================================================================
-- TEST BERAT TOKORAFI — Dataset A (1.000 produk + 2.000 transaksi)
-- File: A-03-transaksi-04.sql  (bagian 4 dari 7 langkah ini — jalankan berurutan)
-- Isi: transaksi: 320, transaksi_detail: 1461
-- Transaksi 28 hari terakhir + detail (induk & detail satu unit).
-- Semua INSERT memakai ON CONFLICT DO NOTHING — aman dijalankan 2x dan
-- tidak bentrok dengan seed bawaan tokorafi (TES Kopi, TRX-8250237222,
-- CBG-UTAMA, PLG-UMUM). Dibuat oleh gen-tokorafi.js (deterministik).
-- ============================================================================

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00052', '2026-11-14 10:35:48+07:00', 'Umum', 'Admin', 12967000, 0, 12967000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100051', '', '', '', 863000, NULL, '2026-11-14 10:35:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00052', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00052', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 2, 2330000, 4660000, 2100000, 0, 460000, 'pcs'),
  ('TRX-A00052', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 3, 41000, 123000, 34000, 0, 21000, 'pcs'),
  ('TRX-A00052', 'PRD-A-KEL-0072', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00052', 'PRD-A-KEL-0052', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00052', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 1, 30000, 30000, 17000, 0, 13000, 'pcs'),
  ('TRX-A00052', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 3, 2610000, 7830000, 2500000, 0, 330000, 'pcs'),
  ('TRX-A00052', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01004', '2026-11-14 10:18:02+07:00', 'Sri Wahyuni 3', 'Admin', 34658000, 0, 34658000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101003', '', '', '', 2596500, NULL, '2026-11-14 10:18:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01004', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A01004', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 1, 930000, 930000, 700000, 0, 230000, 'pcs'),
  ('TRX-A01004', 'PRD-A-AKS-0201', 'Memory Card 32GB', 2, 38000, 76000, 27000, 0, 22000, 'pcs'),
  ('TRX-A01004', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 2, 2480000, 4960000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A01004', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 3, 2960000, 8880000, 2800000, 0, 480000, 'pcs'),
  ('TRX-A01004', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A01004', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs'),
  ('TRX-A01004', 'PRD-A-KEL-0102', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01377', '2026-11-14 10:05:39+07:00', 'Umum', 'Admin', 11664000, 0, 11664000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101376', '', '', '', 1103000, NULL, '2026-11-14 10:05:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01377', 'PRD-A-AKS-0113', 'Tempered Glass Samsung', 2, 15000, 30000, 7000, 0, 16000, 'pcs'),
  ('TRX-A01377', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 3, 33000, 99000, 27000, 0, 18000, 'pcs'),
  ('TRX-A01377', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 2, 2590000, 5180000, 2400000, 0, 380000, 'pcs'),
  ('TRX-A01377', 'PRD-A-KEL-0056', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01377', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A01377', 'PRD-A-KEL-0094', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01377', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 2, 1660000, 3320000, 1500000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01216', '2026-11-14 09:47:33+07:00', 'Umum', 'Admin', 6370000, 0, 6370000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101215', '', '', '', 868000, NULL, '2026-11-14 09:47:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01216', 'PRD-A-AKS-0054', 'Batre Samsung J1', 1, 40000, 40000, 30000, 0, 10000, 'pcs'),
  ('TRX-A01216', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01216', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 3, 520000, 1560000, 400000, 0, 360000, 'pcs'),
  ('TRX-A01216', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs'),
  ('TRX-A01216', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 1, 740000, 740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01216', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 1, 1050000, 1050000, 1000000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01143', '2026-11-14 09:46:45+07:00', 'Umum', 'Admin', 15149000, 0, 15149000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101142', '', '', '', 888000, NULL, '2026-11-14 09:46:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01143', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 1, 25000, 25000, 13000, 0, 12000, 'pcs'),
  ('TRX-A01143', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 2, 2580000, 5160000, 2500000, 0, 160000, 'pcs'),
  ('TRX-A01143', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs'),
  ('TRX-A01143', 'PRD-A-HP-0254', 'HP VIVO J5 2/16 85377', 1, 1000000, 1000000, 800000, 0, 200000, 'pcs'),
  ('TRX-A01143', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01871', '2026-11-14 09:37:21+07:00', 'Dedi Supriadi 4', 'Admin', 14922500, 0, 14922500, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101870', '', '', '', 1443100, NULL, '2026-11-14 09:37:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01871', 'PRD-A-KEL-0070', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A01871', 'PRD-A-AKS-0141', 'Batre Oppo A57', 1, 62000, 62000, 50000, 0, 12000, 'pcs'),
  ('TRX-A01871', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs'),
  ('TRX-A01871', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A01871', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 2, 2160000, 4320000, 2000000, 0, 320000, 'pcs'),
  ('TRX-A01871', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A01871', 'PRD-A-HP-0348', 'HP REALME C15 8/256 21999', 2, 910000, 1820000, 700000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00159', '2026-11-14 09:27:19+07:00', 'Umum', 'Admin', 3467000, 0, 1733500, 1733500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100158', '', '', '', 547000, NULL, '2026-11-14 09:27:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00159', 'PRD-A-AKS-0220', 'Tempered Glass Samsung', 2, 23000, 46000, 20000, 0, 6000, 'pcs'),
  ('TRX-A00159', 'PRD-A-AKS-0192', 'Handsfree Oppo', 2, 49000, 98000, 40000, 0, 18000, 'pcs'),
  ('TRX-A00159', 'PRD-A-AKS-0216', 'Memory Card 16GB', 2, 41000, 82000, 33000, 0, 16000, 'pcs'),
  ('TRX-A00159', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 2, 1540000, 3080000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A00159', 'PRD-A-AKS-0186', 'Case Redmi 9A', 1, 25000, 25000, 14000, 0, 11000, 'pcs'),
  ('TRX-A00159', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00159', 'PRD-A-KEL-0121', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00208', '2026-11-14 09:18:15+07:00', 'Fitri Rahmawati 4', 'Admin', 129000, 0, 129000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100207', '', '', '', 39000, NULL, '2026-11-14 09:18:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00208', 'PRD-A-AKS-0239', 'Batre Samsung J1', 3, 43000, 129000, 30000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01950', '2026-11-14 09:13:14+07:00', 'Joko Prasetyo', 'Admin', 4630000, 0, 4630000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101949', '', '', '', 549000, NULL, '2026-11-14 09:13:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01950', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01950', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 3, 780000, 2340000, 700000, 0, 240000, 'pcs'),
  ('TRX-A01950', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 1, 51000, 51000, 44000, 0, 7000, 'pcs'),
  ('TRX-A01950', 'PRD-A-AKS-0223', 'Memory Card 32GB', 2, 51000, 102000, 48000, 0, 6000, 'pcs'),
  ('TRX-A01950', 'PRD-A-KEL-0031', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01950', 'PRD-A-HP-0449', 'HP REALME HOT30i 2/32 56128', 3, 570000, 1710000, 500000, 0, 210000, 'pcs'),
  ('TRX-A01950', 'PRD-A-AKS-0146', 'Memory Card 32GB', 1, 91000, 91000, 82000, 0, 9000, 'pcs'),
  ('TRX-A01950', 'PRD-A-AKS-0116', 'Memory Card 16GB', 3, 88000, 264000, 76000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00744', '2026-11-14 09:08:06+07:00', 'Lilis Suryani 5', 'Admin', 11689000, 0, 5844500, 5844500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100743', '', '', '', 1028000, NULL, '2026-11-14 09:08:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00744', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 1, 1280000, 1280000, 1200000, 0, 80000, 'pcs'),
  ('TRX-A00744', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 3, 2880000, 8640000, 2700000, 0, 540000, 'pcs'),
  ('TRX-A00744', 'PRD-A-AKS-0245', 'Batre Samsung J1', 2, 57000, 114000, 43000, 0, 28000, 'pcs'),
  ('TRX-A00744', 'PRD-A-KEL-0009', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A00744', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 2, 15000, 30000, 10000, 0, 10000, 'pcs'),
  ('TRX-A00744', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 3, 520000, 1560000, 400000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01672', '2026-11-14 08:59:28+07:00', 'Yusuf Maulana 5', 'Admin', 7690000, 0, 7690000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101671', '', '', '', 829000, NULL, '2026-11-14 08:59:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01672', 'PRD-A-KEL-0143', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01672', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 2, 620000, 1240000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01672', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 2, 1310000, 2620000, 1100000, 0, 420000, 'pcs'),
  ('TRX-A01672', 'PRD-A-AKS-0186', 'Case Redmi 9A', 1, 25000, 25000, 14000, 0, 11000, 'pcs'),
  ('TRX-A01672', 'PRD-A-KEL-0078', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01672', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 1, 24000, 24000, 15000, 0, 9000, 'pcs'),
  ('TRX-A01672', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 2, 1870000, 3740000, 1800000, 0, 140000, 'pcs'),
  ('TRX-A01672', 'PRD-A-KEL-0129', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01172', '2026-11-14 08:53:15+07:00', 'Umum', 'Admin', 1884000, 0, 1884000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101171', '', '', '', 642000, NULL, '2026-11-14 08:53:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01172', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs'),
  ('TRX-A01172', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 3, 600000, 1800000, 400000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00030', '2026-11-14 08:50:38+07:00', 'Umum', 'Admin', 19447000, 0, 19447000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100029', '', '', '', 1507000, NULL, '2026-11-14 08:50:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00030', 'PRD-A-KEL-0077', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00030', 'PRD-A-KEL-0184', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00030', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 3, 2510000, 7530000, 2300000, 0, 630000, 'pcs'),
  ('TRX-A00030', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 2, 25000, 50000, 16000, 0, 18000, 'pcs'),
  ('TRX-A00030', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A00030', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A00030', 'PRD-A-AKS-0098', 'Tempered Glass Oppo', 1, 23000, 23000, 11000, 0, 12000, 'pcs'),
  ('TRX-A00030', 'PRD-A-AKS-0191', 'Batre Samsung J1', 2, 54000, 108000, 39000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01124', '2026-11-14 08:34:50+07:00', 'Umum', 'Admin', 1906500, 0, 1906500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101123', '', '', '', 369700, NULL, '2026-11-14 08:34:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01124', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 3, 620000, 1860000, 500000, 0, 360000, 'pcs'),
  ('TRX-A01124', 'PRD-A-KEL-0015', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01124', 'PRD-A-KEL-0083', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01397', '2026-11-14 08:08:22+07:00', 'Hendra Gunawan 4', 'Admin', 313000, 0, 156500, 156500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101396', '', '', '', 78000, NULL, '2026-11-14 08:08:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01397', 'PRD-A-KEL-0175', 'Snack wafer', 2, 10000, 20000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01397', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01397', 'PRD-A-KEL-0098', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01397', 'PRD-A-KEL-0108', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01397', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 3, 42000, 126000, 27000, 0, 45000, 'pcs'),
  ('TRX-A01397', 'PRD-A-KEL-0180', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00743', '2026-11-14 08:06:06+07:00', 'Siti Aisyah', 'Admin', 14700000, 0, 7350000, 7350000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100742', '', '', '', 500000, NULL, '2026-11-14 08:06:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00743', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A00743', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 3, 2850000, 8550000, 2800000, 0, 150000, 'pcs'),
  ('TRX-A00743', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 2, 2020000, 4040000, 1900000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00912', '2026-11-14 08:03:51+07:00', 'Sri Wahyuni 5', 'Admin', 16856000, 0, 16856000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100911', '', '', '', 1556000, NULL, '2026-11-14 08:03:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00912', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 2, 25000, 50000, 15000, 0, 20000, 'pcs'),
  ('TRX-A00912', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 2, 1910000, 3820000, 1800000, 0, 220000, 'pcs'),
  ('TRX-A00912', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 2, 2190000, 4380000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A00912', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A00912', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 3, 670000, 2010000, 500000, 0, 510000, 'pcs'),
  ('TRX-A00912', 'PRD-A-HP-0271', 'HP REDMI A15 2/32 43955', 2, 2480000, 4960000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A00912', 'PRD-A-AKS-0224', 'Case Samsung A03', 2, 48000, 96000, 35000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01173', '2026-11-14 08:03:09+07:00', 'Intan Permata 2', 'Admin', 6656000, 0, 6656000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101172', '', '', '', 935000, NULL, '2026-11-14 08:03:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01173', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 1, 2250000, 2250000, 2000000, 0, 250000, 'pcs'),
  ('TRX-A01173', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 3, 1410000, 4230000, 1200000, 0, 630000, 'pcs'),
  ('TRX-A01173', 'PRD-A-AKS-0177', 'Case Samsung A03', 1, 39000, 39000, 34000, 0, 5000, 'pcs'),
  ('TRX-A01173', 'PRD-A-KEL-0077', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01173', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01173', 'PRD-A-KEL-0094', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01173', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 2, 24000, 48000, 15000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01847', '2026-11-13 20:53:06+07:00', 'Umum', 'Admin', 626000, 0, 313000, 313000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101846', '', '', '', 99000, NULL, '2026-11-13 20:53:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01847', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 1, 580000, 580000, 500000, 0, 80000, 'pcs'),
  ('TRX-A01847', 'PRD-A-AKS-0234', 'Case Samsung A03', 1, 24000, 24000, 16000, 0, 8000, 'pcs'),
  ('TRX-A01847', 'PRD-A-AKS-0091', 'Case Oppo A57', 1, 22000, 22000, 11000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01867', '2026-11-13 20:46:02+07:00', 'Maya Putri 3', 'Admin', 12035000, 0, 12035000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101866', '', '', '', 978000, NULL, '2026-11-13 20:46:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01867', 'PRD-A-KEL-0170', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A01867', 'PRD-A-AKS-0050', 'Case Redmi 9A', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A01867', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 2, 2870000, 5740000, 2700000, 0, 340000, 'pcs'),
  ('TRX-A01867', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A01867', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 3, 1990000, 5970000, 1800000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00987', '2026-11-13 20:45:05+07:00', 'Umum', 'Admin', 125000, 0, 125000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100986', '', '', '', 37000, NULL, '2026-11-13 20:45:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00987', 'PRD-A-AKS-0038', 'Case Vivo Y20', 2, 40000, 80000, 26000, 0, 28000, 'pcs'),
  ('TRX-A00987', 'PRD-A-KEL-0159', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00793', '2026-11-13 20:35:51+07:00', 'Rudi Hartono 3', 'Admin', 5268000, 0, 5268000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100792', '', '', '', 397000, NULL, '2026-11-13 20:35:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00793', 'PRD-A-AKS-0183', 'Kabel Charger 2m', 2, 14000, 28000, 10000, 0, 8000, 'pcs'),
  ('TRX-A00793', 'PRD-A-KEL-0085', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00793', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 2, 2590000, 5180000, 2400000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00650', '2026-11-13 19:50:56+07:00', 'D''Angelo Cell', 'Admin', 4497000, 0, 0, 4497000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100649', '', '', '', 390000, NULL, '2026-11-13 19:50:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00650', 'PRD-A-KEL-0177', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00650', 'PRD-A-KEL-0047', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00650', 'PRD-A-AKS-0198', 'Batre Oppo A57', 1, 19000, 19000, 14000, 0, 5000, 'pcs'),
  ('TRX-A00650', 'PRD-A-AKS-0054', 'Batre Samsung J1', 1, 40000, 40000, 30000, 0, 10000, 'pcs'),
  ('TRX-A00650', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 2, 780000, 1560000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00650', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00989', '2026-11-13 19:37:15+07:00', 'Agus Wijaya 4', 'Admin', 17000, 0, 17000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100988', '', '', '', 3000, NULL, '2026-11-13 19:37:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00989', 'PRD-A-AKS-0149', 'Case Samsung A03', 1, 17000, 17000, 14000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01618', '2026-11-13 19:28:21+07:00', 'Andi Kurnia 5', 'Admin', 963500, 0, 481750, 481750, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101617', '', '', '', 161000, NULL, '2026-11-13 19:28:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01618', 'PRD-A-KEL-0186', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A01618', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 2, 480000, 960000, 400000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00600', '2026-11-13 19:16:55+07:00', 'Lilis Suryani 2', 'Admin', 5280000, 0, 5280000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100599', '', '', '', 780000, NULL, '2026-11-13 19:16:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00600', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 3, 1220000, 3660000, 1000000, 0, 660000, 'pcs'),
  ('TRX-A00600', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 1, 1620000, 1620000, 1500000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01781', '2026-11-13 19:03:06+07:00', 'Sri Wahyuni 5', 'Admin', 11708000, 0, 11708000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101780', '', '', '', 1190000, NULL, '2026-11-13 19:03:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01781', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 1, 2870000, 2870000, 2700000, 0, 170000, 'pcs'),
  ('TRX-A01781', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs'),
  ('TRX-A01781', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 21000, 0, 30000, 'pcs'),
  ('TRX-A01781', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A01781', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 2, 1370000, 2740000, 1200000, 0, 340000, 'pcs'),
  ('TRX-A01781', 'PRD-A-KEL-0009', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01427', '2026-11-13 18:40:09+07:00', 'Umum', 'Admin', 5844000, 0, 2922000, 2922000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101426', '', '', '', 296000, NULL, '2026-11-13 18:40:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01427', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 1, 2580000, 2580000, 2500000, 0, 80000, 'pcs'),
  ('TRX-A01427', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 3, 1070000, 3210000, 1000000, 0, 210000, 'pcs'),
  ('TRX-A01427', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00855', '2026-11-13 18:26:04+07:00', 'Andi Kurnia 5', 'Admin', 46000, 0, 23000, 23000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100854', '', '', '', 14000, NULL, '2026-11-13 18:26:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00855', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 2, 23000, 46000, 16000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01107', '2026-11-13 18:15:06+07:00', 'Agus Wijaya 2', 'Admin', 8066000, 0, 8066000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101106', '', '', '', 631000, NULL, '2026-11-13 18:15:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01107', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A01107', 'PRD-A-KEL-0106', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01107', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 1, 2220000, 2220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A01107', 'PRD-A-AKS-0067', 'Case Redmi 9A', 1, 39000, 39000, 30000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01373', '2026-11-13 18:11:20+07:00', 'Umum', 'Admin', 18000, 0, 0, 18000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101372', '', '', '', 8000, NULL, '2026-11-13 18:11:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01373', 'PRD-A-AKS-0137', 'Tempered Glass Samsung', 1, 18000, 18000, 10000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00008', '2026-11-13 18:08:28+07:00', 'Rina Marlina 2', 'Admin', 12000, 0, 12000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100007', '', '', '', 4000, NULL, '2026-11-13 18:08:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00008', 'PRD-A-KEL-0189', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01379', '2026-11-13 18:08:01+07:00', 'Umum', 'Admin', 3385000, 0, 3385000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101378', '', '', '', 445000, NULL, '2026-11-13 18:08:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01379', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 2, 41000, 82000, 34000, 0, 14000, 'pcs'),
  ('TRX-A01379', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs'),
  ('TRX-A01379', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs'),
  ('TRX-A01379', 'PRD-A-AKS-0067', 'Case Redmi 9A', 1, 39000, 39000, 30000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00499', '2026-11-13 18:05:38+07:00', 'Umum', 'Admin', 208000, 0, 208000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100498', '', '', '', 58000, NULL, '2026-11-13 18:05:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00499', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 2, 64000, 128000, 51000, 0, 26000, 'pcs'),
  ('TRX-A00499', 'PRD-A-KEL-0182', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00499', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 2, 31000, 62000, 18000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01048', '2026-11-13 17:55:55+07:00', 'Umum', 'Admin', 10908500, 0, 10908500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101047', '', '', '', 434000, NULL, '2026-11-13 17:55:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01048', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 1, 2720000, 2720000, 2600000, 0, 120000, 'pcs'),
  ('TRX-A01048', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 2, 35000, 70000, 21000, 0, 28000, 'pcs'),
  ('TRX-A01048', 'PRD-A-AKS-0064', 'Case Redmi 9A', 1, 38000, 38000, 25000, 0, 13000, 'pcs'),
  ('TRX-A01048', 'PRD-A-HP-0334', 'HP SAMSUNG Y16 3/64 17970', 3, 2690000, 8070000, 2600000, 0, 270000, 'pcs'),
  ('TRX-A01048', 'PRD-A-KEL-0023', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00195', '2026-11-13 17:42:51+07:00', 'Umum', 'Admin', 4574000, 0, 2287000, 2287000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100194', '', '', '', 352000, NULL, '2026-11-13 17:42:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00195', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A00195', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 2, 2270000, 4540000, 2100000, 0, 340000, 'pcs'),
  ('TRX-A00195', 'PRD-A-KEL-0184', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01021', '2026-11-13 17:21:03+07:00', 'Rudi Hartono 4', 'Admin', 283000, 0, 283000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101020', '', '', '', 101000, NULL, '2026-11-13 17:21:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01021', 'PRD-A-AKS-0134', 'Case Oppo A57', 2, 35000, 70000, 28000, 0, 14000, 'pcs'),
  ('TRX-A01021', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 3, 35000, 105000, 21000, 0, 42000, 'pcs'),
  ('TRX-A01021', 'PRD-A-AKS-0105', 'Case Samsung A03', 3, 36000, 108000, 21000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00878', '2026-11-13 17:18:10+07:00', 'Lilis Suryani 5', 'Admin', 3754000, 0, 3754000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100877', '', '', '', 545000, NULL, '2026-11-13 17:18:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00878', 'PRD-A-AKS-0057', 'Case Redmi 9A', 2, 37000, 74000, 26000, 0, 22000, 'pcs'),
  ('TRX-A00878', 'PRD-A-KEL-0085', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00878', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 2, 590000, 1180000, 400000, 0, 380000, 'pcs'),
  ('TRX-A00878', 'PRD-A-KEL-0111', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00878', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 2, 1150000, 2300000, 1100000, 0, 100000, 'pcs'),
  ('TRX-A00878', 'PRD-A-KEL-0012', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00878', 'PRD-A-AKS-0074', 'Handsfree Oppo', 2, 49000, 98000, 39000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01437', '2026-11-13 17:12:02+07:00', 'Umum', 'Admin', 156000, 0, 156000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101436', '', '', '', 36000, NULL, '2026-11-13 17:12:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01437', 'PRD-A-AKS-0188', 'Batre Oppo A57', 3, 52000, 156000, 40000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01396', '2026-11-13 16:45:06+07:00', 'Dewi Lestari 4', 'Admin', 3522000, 0, 0, 3522000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101395', '', '', '', 609000, NULL, '2026-11-13 16:45:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01396', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 2, 21000, 42000, 9000, 0, 24000, 'pcs'),
  ('TRX-A01396', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01396', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A01396', 'PRD-A-HP-0449', 'HP REALME HOT30i 2/32 56128', 2, 570000, 1140000, 500000, 0, 140000, 'pcs'),
  ('TRX-A01396', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 3, 740000, 2220000, 600000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01624', '2026-11-13 16:41:54+07:00', 'Umum', 'Admin', 6567000, 0, 6567000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101623', '', '', '', 824000, NULL, '2026-11-13 16:41:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01624', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 2, 660000, 1320000, 500000, 0, 320000, 'pcs'),
  ('TRX-A01624', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A01624', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 1, 41000, 41000, 34000, 0, 7000, 'pcs'),
  ('TRX-A01624', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01624', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 1, 910000, 910000, 700000, 0, 210000, 'pcs'),
  ('TRX-A01624', 'PRD-A-AKS-0052', 'Memory Card 32GB', 3, 95000, 285000, 89000, 0, 18000, 'pcs'),
  ('TRX-A01624', 'PRD-A-KEL-0192', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01988', '2026-11-13 16:37:09+07:00', 'Umum', 'Admin', 8490000, 0, 8490000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101987', '', '', '', 690000, NULL, '2026-11-13 16:37:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01988', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A01988', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 3, 1370000, 4110000, 1300000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00911', '2026-11-13 16:33:25+07:00', 'Rina Marlina 5', 'Admin', 102000, 0, 102000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100910', '', '', '', 6000, NULL, '2026-11-13 16:33:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00911', 'PRD-A-AKS-0223', 'Memory Card 32GB', 2, 51000, 102000, 48000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01300', '2026-11-13 16:24:23+07:00', 'Ayu Lestari 3', 'Admin', 2720000, 0, 1360000, 1360000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101299', '', '', '', 206000, NULL, '2026-11-13 16:24:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01300', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01300', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 1, 2700000, 2700000, 2500000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01918', '2026-11-13 16:10:26+07:00', 'Andi Kurnia', 'Admin', 4415500, 0, 4415500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101917', '', '', '', 350500, NULL, '2026-11-13 16:10:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01918', 'PRD-A-KEL-0023', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A01918', 'PRD-A-KEL-0061', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01918', 'PRD-A-KEL-0165', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01918', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 2, 2160000, 4320000, 2000000, 0, 320000, 'pcs'),
  ('TRX-A01918', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 2, 27000, 54000, 18000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01181', '2026-11-13 16:02:36+07:00', 'Umum', 'Admin', 10187000, 0, 10187000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101180', '', '', '', 1692000, NULL, '2026-11-13 16:02:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01181', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A01181', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 2, 1150000, 2300000, 900000, 0, 500000, 'pcs'),
  ('TRX-A01181', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A01181', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs'),
  ('TRX-A01181', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 3, 740000, 2220000, 600000, 0, 420000, 'pcs'),
  ('TRX-A01181', 'PRD-A-KEL-0073', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01181', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 2, 590000, 1180000, 400000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01740', '2026-11-13 16:00:56+07:00', 'Lilis Suryani 4', 'Admin', 1690000, 0, 1690000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101739', '', '', '', 155000, NULL, '2026-11-13 16:00:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01740', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A01740', 'PRD-A-AKS-0063', 'Case Samsung A03', 1, 40000, 40000, 35000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00372', '2026-11-13 15:35:05+07:00', 'Dewi Lestari 2', 'Admin', 5916000, 0, 5916000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100371', '', '', '', 870000, NULL, '2026-11-13 15:35:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00372', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 2, 1170000, 2340000, 1000000, 0, 340000, 'pcs'),
  ('TRX-A00372', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 2, 38000, 76000, 23000, 0, 30000, 'pcs'),
  ('TRX-A00372', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 2, 1750000, 3500000, 1500000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01747', '2026-11-13 14:53:36+07:00', 'Joko Prasetyo 2', 'Admin', 11520000, 0, 11520000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101746', '', '', '', 1120000, NULL, '2026-11-13 14:53:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01747', 'PRD-A-HP-0351', 'HP REDMI V5S 3/32 54249', 2, 2700000, 5400000, 2500000, 0, 400000, 'pcs'),
  ('TRX-A01747', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 1, 1270000, 1270000, 1100000, 0, 170000, 'pcs'),
  ('TRX-A01747', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 3, 1210000, 3630000, 1100000, 0, 330000, 'pcs'),
  ('TRX-A01747', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 1, 1220000, 1220000, 1000000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01136', '2026-11-13 14:47:53+07:00', 'Andi Kurnia 2', 'Admin', 2504000, 0, 2504000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101135', '', '', '', 188000, NULL, '2026-11-13 14:47:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01136', 'PRD-A-HP-0271', 'HP REDMI A15 2/32 43955', 1, 2480000, 2480000, 2300000, 0, 180000, 'pcs'),
  ('TRX-A01136', 'PRD-A-KEL-0109', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01136', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 2, 9000, 18000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00166', '2026-11-13 14:17:55+07:00', 'Andi Kurnia 3', 'Admin', 10165000, 0, 5082500, 5082500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100165', '', '', '', 702000, NULL, '2026-11-13 14:17:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00166', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 18000, 0, 39000, 'pcs'),
  ('TRX-A00166', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 2, 2610000, 5220000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A00166', 'PRD-A-KEL-0037', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A00166', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01176', '2026-11-13 13:26:31+07:00', 'Umum', 'Admin', 3966000, 0, 1983000, 1983000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101175', '', '', '', 546000, NULL, '2026-11-13 13:26:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01176', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 3, 1270000, 3810000, 1100000, 0, 510000, 'pcs'),
  ('TRX-A01176', 'PRD-A-AKS-0188', 'Batre Oppo A57', 3, 52000, 156000, 40000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00901', '2026-11-13 13:22:14+07:00', 'Fajar Nugroho 5', 'Admin', 7141000, 0, 7141000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100900', '', '', '', 363000, NULL, '2026-11-13 13:22:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00901', 'PRD-A-HP-0510', 'HP SAMSUNG Y91C 2/32 52223', 2, 350000, 700000, 300000, 0, 100000, 'pcs'),
  ('TRX-A00901', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 3, 2070000, 6210000, 2000000, 0, 210000, 'pcs'),
  ('TRX-A00901', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs'),
  ('TRX-A00901', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 1, 15000, 15000, 8000, 0, 7000, 'pcs'),
  ('TRX-A00901', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs'),
  ('TRX-A00901', 'PRD-A-KEL-0007', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00901', 'PRD-A-KEL-0061', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00901', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 2, 23000, 46000, 14000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00645', '2026-11-13 13:21:34+07:00', 'Eko Saputra 4', 'Admin', 3808000, 0, 3808000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100644', '', '', '', 402000, NULL, '2026-11-13 13:21:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00645', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 1, 650000, 650000, 400000, 0, 250000, 'pcs'),
  ('TRX-A00645', 'PRD-A-KEL-0172', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00645', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 3, 1050000, 3150000, 1000000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01355', '2026-11-13 13:18:15+07:00', 'Rina Marlina 2', 'Admin', 5974000, 0, 5974000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101354', '', '', '', 630000, NULL, '2026-11-13 13:18:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01355', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 2, 700000, 1400000, 500000, 0, 400000, 'pcs'),
  ('TRX-A01355', 'PRD-A-KEL-0174', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01355', 'PRD-A-AKS-0053', 'Memory Card 16GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs'),
  ('TRX-A01355', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01355', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 3, 25000, 75000, 16000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01674', '2026-11-13 12:49:39+07:00', 'Dedi Supriadi 3', 'Admin', 1182000, 0, 591000, 591000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101673', '', '', '', 438000, NULL, '2026-11-13 12:49:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01674', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 2, 500000, 1000000, 300000, 0, 400000, 'pcs'),
  ('TRX-A01674', 'PRD-A-AKS-0217', 'Batre Samsung J1', 2, 47000, 94000, 42000, 0, 10000, 'pcs'),
  ('TRX-A01674', 'PRD-A-AKS-0114', 'Memory Card 16GB', 2, 44000, 88000, 30000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01833', '2026-11-13 12:48:48+07:00', 'Umum', 'Admin', 13414000, 0, 13414000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101832', '', '', '', 1693500, NULL, '2026-11-13 12:48:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01833', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs'),
  ('TRX-A01833', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs'),
  ('TRX-A01833', 'PRD-A-HP-0044', 'HP OPPO HOT30i 3/64 35099', 3, 1220000, 3660000, 1000000, 0, 660000, 'pcs'),
  ('TRX-A01833', 'PRD-A-KEL-0081', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A01833', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 2, 2150000, 4300000, 2100000, 0, 100000, 'pcs'),
  ('TRX-A01833', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00990', '2026-11-13 11:37:30+07:00', 'Yusuf Maulana 3', 'Admin', 9545000, 0, 9545000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100989', '', '', '', 1211500, NULL, '2026-11-13 11:37:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00990', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 1, 15000, 15000, 8000, 0, 7000, 'pcs'),
  ('TRX-A00990', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 1, 30000, 30000, 17000, 0, 13000, 'pcs'),
  ('TRX-A00990', 'PRD-A-KEL-0099', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00990', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 2, 1520000, 3040000, 1400000, 0, 240000, 'pcs'),
  ('TRX-A00990', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 2, 1710000, 3420000, 1500000, 0, 420000, 'pcs'),
  ('TRX-A00990', 'PRD-A-AKS-0053', 'Memory Card 16GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs'),
  ('TRX-A00990', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 1, 25000, 25000, 17000, 0, 8000, 'pcs'),
  ('TRX-A00990', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 3, 960000, 2880000, 800000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01594', '2026-11-13 11:26:23+07:00', 'Umum', 'Admin', 10010000, 0, 5005000, 5005000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101593', '', '', '', 910000, NULL, '2026-11-13 11:26:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01594', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 1, 2090000, 2090000, 1900000, 0, 190000, 'pcs'),
  ('TRX-A01594', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00710', '2026-11-13 11:25:14+07:00', 'Intan Permata 4', 'Admin', 10480000, 0, 0, 10480000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100709', '', '', '', 899000, NULL, '2026-11-13 11:25:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00710', 'PRD-A-AKS-0156', 'Handsfree Oppo', 1, 39000, 39000, 33000, 0, 6000, 'pcs'),
  ('TRX-A00710', 'PRD-A-HP-0423', 'HP INFINIX Y16 2/16 64863', 3, 1140000, 3420000, 1000000, 0, 420000, 'pcs'),
  ('TRX-A00710', 'PRD-A-KEL-0161', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00710', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A00710', 'PRD-A-KEL-0052', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00710', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00529', '2026-11-13 11:22:58+07:00', 'Joko Prasetyo 3', 'Admin', 5363000, 0, 5363000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100528', '', '', '', 716500, NULL, '2026-11-13 11:22:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00529', 'PRD-A-KEL-0091', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00529', 'PRD-A-KEL-0136', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00529', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs'),
  ('TRX-A00529', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 2, 830000, 1660000, 600000, 0, 460000, 'pcs'),
  ('TRX-A00529', 'PRD-A-KEL-0097', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00529', 'PRD-A-AKS-0213', 'Memory Card 16GB', 1, 72000, 72000, 65000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00462', '2026-11-13 11:00:09+07:00', 'Rina Marlina 3', 'Admin', 2671000, 0, 2671000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100461', '', '', '', 354000, NULL, '2026-11-13 11:00:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00462', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 2, 31000, 62000, 17000, 0, 28000, 'pcs'),
  ('TRX-A00462', 'PRD-A-AKS-0174', 'Case Redmi 9A', 2, 41000, 82000, 26000, 0, 30000, 'pcs'),
  ('TRX-A00462', 'PRD-A-AKS-0153', 'Memory Card 32GB', 1, 92000, 92000, 86000, 0, 6000, 'pcs'),
  ('TRX-A00462', 'PRD-A-KEL-0160', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00462', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00775', '2026-11-13 10:48:51+07:00', 'Umum', 'Admin', 724000, 0, 724000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100774', '', '', '', 127000, NULL, '2026-11-13 10:48:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00775', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 1, 72000, 72000, 59000, 0, 13000, 'pcs'),
  ('TRX-A00775', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 1, 600000, 600000, 500000, 0, 100000, 'pcs'),
  ('TRX-A00775', 'PRD-A-AKS-0230', 'Handsfree Oppo', 1, 52000, 52000, 38000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00649', '2026-11-13 10:42:31+07:00', 'Umum', 'Admin', 19809000, 0, 19809000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100648', '', '', '', 1710000, NULL, '2026-11-13 10:42:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00649', 'PRD-A-KEL-0054', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00649', 'PRD-A-KEL-0007', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A00649', 'PRD-A-AKS-0007', 'Case Redmi 9A', 1, 26000, 26000, 20000, 0, 6000, 'pcs'),
  ('TRX-A00649', 'PRD-A-AKS-0082', 'Case Redmi 9A', 3, 26000, 78000, 23000, 0, 9000, 'pcs'),
  ('TRX-A00649', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 1, 1990000, 1990000, 1800000, 0, 190000, 'pcs'),
  ('TRX-A00649', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 2, 2490000, 4980000, 2300000, 0, 380000, 'pcs'),
  ('TRX-A00649', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 3, 2220000, 6660000, 2000000, 0, 660000, 'pcs'),
  ('TRX-A00649', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 2, 3030000, 6060000, 2800000, 0, 460000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00286', '2026-11-13 10:21:56+07:00', 'Dedi Supriadi 5', 'Admin', 7937000, 0, 7937000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100285', '', '', '', 689000, NULL, '2026-11-13 10:21:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00286', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 3, 1070000, 3210000, 1000000, 0, 210000, 'pcs'),
  ('TRX-A00286', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs'),
  ('TRX-A00286', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00286', 'PRD-A-KEL-0073', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A00286', 'PRD-A-AKS-0197', 'Case Vivo Y20', 3, 24000, 72000, 11000, 0, 39000, 'pcs'),
  ('TRX-A00286', 'PRD-A-KEL-0151', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01924', '2026-11-13 10:06:04+07:00', 'Dedi Supriadi', 'Admin', 15000, 0, 15000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101923', '', '', '', 3000, NULL, '2026-11-13 10:06:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01924', 'PRD-A-KEL-0056', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00781', '2026-11-13 09:49:24+07:00', 'Umum', 'Admin', 5160000, 0, 5160000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100780', '', '', '', 160000, NULL, '2026-11-13 09:49:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00781', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 2, 2580000, 5160000, 2500000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00466', '2026-11-13 09:40:36+07:00', 'Dewi Lestari 4', 'Admin', 13588500, 0, 6794250, 6794250, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100465', '', '', '', 704700, NULL, '2026-11-13 09:40:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00466', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 2, 23000, 46000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00466', 'PRD-A-KEL-0070', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00466', 'PRD-A-AKS-0128', 'Batre Vivo Y91', 1, 41000, 41000, 36000, 0, 5000, 'pcs'),
  ('TRX-A00466', 'PRD-A-AKS-0079', 'Handsfree Oppo', 3, 51000, 153000, 43000, 0, 24000, 'pcs'),
  ('TRX-A00466', 'PRD-A-HP-0406', 'HP REDMI Y55S 4/128 92726', 1, 2760000, 2760000, 2600000, 0, 160000, 'pcs'),
  ('TRX-A00466', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A00466', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 3, 39000, 117000, 30000, 0, 27000, 'pcs'),
  ('TRX-A00466', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 3, 2500000, 7500000, 2400000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00455', '2026-11-13 09:23:29+07:00', 'Umum', 'Admin', 4288000, 0, 0, 4288000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100454', '', '', '', 1056000, NULL, '2026-11-13 09:23:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00455', 'PRD-A-HP-0044', 'HP OPPO HOT30i 3/64 35099', 2, 1220000, 2440000, 1000000, 0, 440000, 'pcs'),
  ('TRX-A00455', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 3, 600000, 1800000, 400000, 0, 600000, 'pcs'),
  ('TRX-A00455', 'PRD-A-AKS-0234', 'Case Samsung A03', 2, 24000, 48000, 16000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00713', '2026-11-13 09:13:35+07:00', 'Rudi Hartono 5', 'Admin', 10926000, 0, 10926000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100712', '', '', '', 1480000, NULL, '2026-11-13 09:13:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00713', 'PRD-A-KEL-0192', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00713', 'PRD-A-HP-0194', 'HP REALME C15 2/16 38996', 3, 940000, 2820000, 700000, 0, 720000, 'pcs'),
  ('TRX-A00713', 'PRD-A-KEL-0116', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00713', 'PRD-A-KEL-0165', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00713', 'PRD-A-KEL-0029', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A00713', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A00713', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 3, 25000, 75000, 19000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00218', '2026-11-13 09:03:19+07:00', 'Umum', 'Admin', 105000, 0, 105000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100217', '', '', '', 31000, NULL, '2026-11-13 09:03:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00218', 'PRD-A-AKS-0114', 'Memory Card 16GB', 2, 44000, 88000, 30000, 0, 28000, 'pcs'),
  ('TRX-A00218', 'PRD-A-KEL-0026', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00132', '2026-11-13 08:59:27+07:00', 'Umum', 'Admin', 3414000, 0, 3414000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100131', '', '', '', 167000, NULL, '2026-11-13 08:59:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00132', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 1, 54000, 54000, 47000, 0, 7000, 'pcs'),
  ('TRX-A00132', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 2, 1680000, 3360000, 1600000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00199', '2026-11-13 08:51:58+07:00', 'Siti Aisyah 5', 'Admin', 15190000, 0, 15190000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100198', '', '', '', 1342000, NULL, '2026-11-13 08:51:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00199', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 2, 1990000, 3980000, 1800000, 0, 380000, 'pcs'),
  ('TRX-A00199', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 3, 1150000, 3450000, 1100000, 0, 150000, 'pcs'),
  ('TRX-A00199', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00199', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 1, 2500000, 2500000, 2400000, 0, 100000, 'pcs'),
  ('TRX-A00199', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00199', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 3, 1620000, 4860000, 1400000, 0, 660000, 'pcs'),
  ('TRX-A00199', 'PRD-A-AKS-0146', 'Memory Card 32GB', 3, 91000, 273000, 82000, 0, 27000, 'pcs'),
  ('TRX-A00199', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00804', '2026-11-13 08:32:57+07:00', 'Intan Permata', 'Admin', 6901000, 0, 6901000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100803', '', '', '', 970000, NULL, '2026-11-13 08:32:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00804', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 2, 1990000, 3980000, 1800000, 0, 380000, 'pcs'),
  ('TRX-A00804', 'PRD-A-KEL-0141', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00804', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 2, 480000, 960000, 300000, 0, 360000, 'pcs'),
  ('TRX-A00804', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00804', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A00804', 'PRD-A-KEL-0009', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00508', '2026-11-13 08:31:02+07:00', 'Agus Wijaya 2', 'Admin', 8876000, 0, 8876000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100507', '', '', '', 990000, NULL, '2026-11-13 08:31:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00508', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs'),
  ('TRX-A00508', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A00508', 'PRD-A-KEL-0190', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00508', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 3, 1220000, 3660000, 1000000, 0, 660000, 'pcs'),
  ('TRX-A00508', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 3, 1150000, 3450000, 1100000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01662', '2026-11-13 08:18:29+07:00', 'Umum', 'Admin', 76000, 0, 76000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101661', '', '', '', 26000, NULL, '2026-11-13 08:18:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01662', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 1, 35000, 35000, 21000, 0, 14000, 'pcs'),
  ('TRX-A01662', 'PRD-A-AKS-0013', 'Case Samsung A03', 1, 41000, 41000, 29000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01324', '2026-11-13 08:14:20+07:00', 'Yusuf Maulana 2', 'Admin', 4450000, 0, 4450000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101323', '', '', '', 520000, NULL, '2026-11-13 08:14:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01324', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A01324', 'PRD-A-KEL-0101', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00766', '2026-11-13 08:11:17+07:00', 'Eko Saputra 4', 'Admin', 1920000, 0, 1920000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100765', '', '', '', 320000, NULL, '2026-11-13 08:11:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00766', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 2, 960000, 1920000, 800000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01013', '2026-11-12 20:59:03+07:00', 'Lilis Suryani 3', 'Admin', 117000, 0, 117000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101012', '', '', '', 18000, NULL, '2026-11-12 20:59:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01013', 'PRD-A-AKS-0156', 'Handsfree Oppo', 3, 39000, 117000, 33000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01001', '2026-11-12 20:47:24+07:00', 'Fajar Nugroho 2', 'Admin', 6087000, 0, 6087000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101000', '', '', '', 297000, NULL, '2026-11-12 20:47:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01001', 'PRD-A-AKS-0067', 'Case Redmi 9A', 3, 39000, 117000, 30000, 0, 27000, 'pcs'),
  ('TRX-A01001', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 3, 1990000, 5970000, 1900000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00222', '2026-11-12 20:33:16+07:00', 'Joko Prasetyo 4', 'Admin', 10564000, 0, 10564000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100221', '', '', '', 445000, NULL, '2026-11-12 20:33:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00222', 'PRD-A-AKS-0175', 'Kartu Perdana Tri', 3, 28000, 84000, 18000, 0, 30000, 'pcs'),
  ('TRX-A00222', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 2, 1370000, 2740000, 1300000, 0, 140000, 'pcs'),
  ('TRX-A00222', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 1, 25000, 25000, 19000, 0, 6000, 'pcs'),
  ('TRX-A00222', 'PRD-A-KEL-0068', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00222', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 1, 51000, 51000, 47000, 0, 4000, 'pcs'),
  ('TRX-A00222', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00222', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A00222', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 1, 1070000, 1070000, 1000000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00335', '2026-11-12 20:29:44+07:00', 'Ayu Lestari 2', 'Admin', 9935000, 0, 9935000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100334', '', '', '', 490000, NULL, '2026-11-12 20:29:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00335', 'PRD-A-KEL-0160', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00335', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 1, 1730000, 1730000, 1600000, 0, 130000, 'pcs'),
  ('TRX-A00335', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 3, 2700000, 8100000, 2600000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01987', '2026-11-12 20:09:13+07:00', 'Umum', 'Admin', 6859000, 0, 0, 6859000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101986', '', '', '', 532000, NULL, '2026-11-12 20:09:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01987', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 1, 25000, 25000, 16000, 0, 9000, 'pcs'),
  ('TRX-A01987', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 3, 2270000, 6810000, 2100000, 0, 510000, 'pcs'),
  ('TRX-A01987', 'PRD-A-AKS-0197', 'Case Vivo Y20', 1, 24000, 24000, 11000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01717', '2026-11-12 19:37:04+07:00', 'Umum', 'Admin', 7261000, 0, 3630500, 3630500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101716', '', '', '', 364000, NULL, '2026-11-12 19:37:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01717', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 1, 72000, 72000, 59000, 0, 13000, 'pcs'),
  ('TRX-A01717', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 2, 51000, 102000, 44000, 0, 14000, 'pcs'),
  ('TRX-A01717', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 2, 15000, 30000, 10000, 0, 10000, 'pcs'),
  ('TRX-A01717', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 1, 2850000, 2850000, 2800000, 0, 50000, 'pcs'),
  ('TRX-A01717', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 2, 2020000, 4040000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A01717', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 1, 32000, 32000, 24000, 0, 8000, 'pcs'),
  ('TRX-A01717', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01717', 'PRD-A-AKS-0067', 'Case Redmi 9A', 3, 39000, 117000, 30000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01900', '2026-11-12 19:19:54+07:00', 'Hendra Gunawan 3', 'Admin', 6609000, 0, 6609000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101899', '', '', '', 535000, NULL, '2026-11-12 19:19:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01900', 'PRD-A-KEL-0048', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01900', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01900', 'PRD-A-KEL-0139', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01900', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 3, 2160000, 6480000, 2000000, 0, 480000, 'pcs'),
  ('TRX-A01900', 'PRD-A-KEL-0072', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01042', '2026-11-12 19:12:23+07:00', 'Fitri Rahmawati 4', 'Admin', 12660000, 0, 12660000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101041', '', '', '', 1237000, NULL, '2026-11-12 19:12:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01042', 'PRD-A-KEL-0003', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A01042', 'PRD-A-AKS-0045', 'Memory Card 16GB', 2, 58000, 116000, 53000, 0, 10000, 'pcs'),
  ('TRX-A01042', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 2, 1050000, 2100000, 1000000, 0, 100000, 'pcs'),
  ('TRX-A01042', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 2, 1750000, 3500000, 1500000, 0, 500000, 'pcs'),
  ('TRX-A01042', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 1, 2270000, 2270000, 2100000, 0, 170000, 'pcs'),
  ('TRX-A01042', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 3, 950000, 2850000, 900000, 0, 150000, 'pcs'),
  ('TRX-A01042', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 3, 600000, 1800000, 500000, 0, 300000, 'pcs'),
  ('TRX-A01042', 'PRD-A-KEL-0111', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00981', '2026-11-12 18:46:12+07:00', 'Intan Permata 5', 'Admin', 2078000, 0, 1039000, 1039000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100980', '', '', '', 236000, NULL, '2026-11-12 18:46:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00981', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A00981', 'PRD-A-AKS-0139', 'Case Samsung A03', 2, 34000, 68000, 21000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00524', '2026-11-12 18:26:18+07:00', 'Umum', 'Admin', 8460000, 0, 4230000, 4230000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100523', '', '', '', 660000, NULL, '2026-11-12 18:26:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00524', 'PRD-A-HP-0485', 'HP ITEL Y91C 3/64 10965', 3, 2820000, 8460000, 2600000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00944', '2026-11-12 18:02:13+07:00', 'Budi Santoso 4', 'Admin', 153000, 0, 153000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100943', '', '', '', 42000, NULL, '2026-11-12 18:02:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00944', 'PRD-A-AKS-0165', 'Case Vivo Y20', 3, 43000, 129000, 31000, 0, 36000, 'pcs'),
  ('TRX-A00944', 'PRD-A-KEL-0190', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01301', '2026-11-12 17:53:15+07:00', 'Maya Putri', 'Admin', 5950000, 0, 5950000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101300', '', '', '', 450000, NULL, '2026-11-12 17:53:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01301', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 2, 2490000, 4980000, 2300000, 0, 380000, 'pcs'),
  ('TRX-A01301', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 1, 970000, 970000, 900000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00157', '2026-11-12 17:12:58+07:00', 'Eko Saputra', 'Admin', 5960000, 0, 5960000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100156', '', '', '', 885000, NULL, '2026-11-12 17:12:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00157', 'PRD-A-AKS-0214', 'Memory Card 64GB', 3, 100000, 300000, 86000, 0, 42000, 'pcs'),
  ('TRX-A00157', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 1, 2680000, 2680000, 2500000, 0, 180000, 'pcs'),
  ('TRX-A00157', 'PRD-A-KEL-0165', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00157', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 1, 1540000, 1540000, 1400000, 0, 140000, 'pcs'),
  ('TRX-A00157', 'PRD-A-KEL-0063', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00157', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 2, 650000, 1300000, 400000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01060', '2026-11-12 16:55:27+07:00', 'Sri Wahyuni 2', 'Admin', 8059000, 0, 8059000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101059', '', '', '', 801000, NULL, '2026-11-12 16:55:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01060', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs'),
  ('TRX-A01060', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 1, 15000, 15000, 10000, 0, 5000, 'pcs'),
  ('TRX-A01060', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 2, 1090000, 2180000, 900000, 0, 380000, 'pcs'),
  ('TRX-A01060', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs'),
  ('TRX-A01060', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01110', '2026-11-12 16:53:17+07:00', 'Umum', 'Admin', 8859500, 0, 8859500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101109', '', '', '', 746100, NULL, '2026-11-12 16:53:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01110', 'PRD-A-KEL-0168', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01110', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A01110', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A01110', 'PRD-A-KEL-0076', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A01110', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A01110', 'PRD-A-AKS-0224', 'Case Samsung A03', 2, 48000, 96000, 35000, 0, 26000, 'pcs'),
  ('TRX-A01110', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 3, 55000, 165000, 50000, 0, 15000, 'pcs'),
  ('TRX-A01110', 'PRD-A-HP-0330', 'HP REDMI C15 4/64 69727', 1, 810000, 810000, 600000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01848', '2026-11-12 16:48:59+07:00', 'Ayu Lestari 2', 'Admin', 6960000, 0, 6960000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101847', '', '', '', 660000, NULL, '2026-11-12 16:48:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01848', 'PRD-A-HP-0400', 'HP SAMSUNG 5A 2/32 51721', 3, 2320000, 6960000, 2100000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01459', '2026-11-12 16:47:29+07:00', 'Umum', 'Admin', 12976000, 0, 12976000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101458', '', '', '', 1145000, NULL, '2026-11-12 16:47:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01459', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 1, 1800000, 1800000, 1600000, 0, 200000, 'pcs'),
  ('TRX-A01459', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 3, 620000, 1860000, 500000, 0, 360000, 'pcs'),
  ('TRX-A01459', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 2, 1350000, 2700000, 1200000, 0, 300000, 'pcs'),
  ('TRX-A01459', 'PRD-A-KEL-0077', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01459', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 3, 2190000, 6570000, 2100000, 0, 270000, 'pcs'),
  ('TRX-A01459', 'PRD-A-KEL-0043', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01459', 'PRD-A-KEL-0008', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00301', '2026-11-12 16:41:26+07:00', 'Siti Aisyah 4', 'Admin', 2640000, 0, 2640000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100300', '', '', '', 512000, NULL, '2026-11-12 16:41:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00301', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 3, 630000, 1890000, 500000, 0, 390000, 'pcs'),
  ('TRX-A00301', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 1, 580000, 580000, 500000, 0, 80000, 'pcs'),
  ('TRX-A00301', 'PRD-A-AKS-0128', 'Batre Vivo Y91', 1, 41000, 41000, 36000, 0, 5000, 'pcs'),
  ('TRX-A00301', 'PRD-A-KEL-0110', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00301', 'PRD-A-KEL-0173', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00301', 'PRD-A-KEL-0185', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00301', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 2, 36000, 72000, 25000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00080', '2026-11-12 16:36:58+07:00', 'Umum', 'Admin', 498000, 0, 498000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100079', '', '', '', 106000, NULL, '2026-11-12 16:36:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00080', 'PRD-A-AKS-0230', 'Handsfree Oppo', 2, 52000, 104000, 38000, 0, 28000, 'pcs'),
  ('TRX-A00080', 'PRD-A-AKS-0141', 'Batre Oppo A57', 2, 62000, 124000, 50000, 0, 24000, 'pcs'),
  ('TRX-A00080', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 3, 72000, 216000, 59000, 0, 39000, 'pcs'),
  ('TRX-A00080', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01445', '2026-11-12 16:32:49+07:00', 'Budi Santoso 4', 'Admin', 16133000, 0, 16133000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101444', '', '', '', 1483000, NULL, '2026-11-12 16:32:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01445', 'PRD-A-AKS-0148', 'Case Vivo Y20', 1, 34000, 34000, 26000, 0, 8000, 'pcs'),
  ('TRX-A01445', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01445', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 3, 2310000, 6930000, 2100000, 0, 630000, 'pcs'),
  ('TRX-A01445', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 2, 1330000, 2660000, 1200000, 0, 260000, 'pcs'),
  ('TRX-A01445', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 2, 2550000, 5100000, 2300000, 0, 500000, 'pcs'),
  ('TRX-A01445', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs'),
  ('TRX-A01445', 'PRD-A-KEL-0128', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01445', 'PRD-A-KEL-0119', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01565', '2026-11-12 16:20:13+07:00', 'Ayu Lestari', 'Admin', 4575000, 0, 2287500, 2287500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101564', '', '', '', 493000, NULL, '2026-11-12 16:20:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01565', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 1, 2610000, 2610000, 2400000, 0, 210000, 'pcs'),
  ('TRX-A01565', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 2, 55000, 110000, 49000, 0, 12000, 'pcs'),
  ('TRX-A01565', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 1, 620000, 620000, 500000, 0, 120000, 'pcs'),
  ('TRX-A01565', 'PRD-A-KEL-0147', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01565', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 1, 1110000, 1110000, 1000000, 0, 110000, 'pcs'),
  ('TRX-A01565', 'PRD-A-KEL-0148', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01565', 'PRD-A-KEL-0020', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01565', 'PRD-A-AKS-0053', 'Memory Card 16GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00877', '2026-11-12 16:19:10+07:00', 'Umum', 'Admin', 13396000, 0, 13396000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100876', '', '', '', 1358000, NULL, '2026-11-12 16:19:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00877', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 2, 1810000, 3620000, 1600000, 0, 420000, 'pcs'),
  ('TRX-A00877', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 3, 52000, 156000, 46000, 0, 18000, 'pcs'),
  ('TRX-A00877', 'PRD-A-HP-0400', 'HP SAMSUNG 5A 2/32 51721', 2, 2320000, 4640000, 2100000, 0, 440000, 'pcs'),
  ('TRX-A00877', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01179', '2026-11-12 16:16:50+07:00', 'Umum', 'Admin', 3380000, 0, 1690000, 1690000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101178', '', '', '', 166000, NULL, '2026-11-12 16:16:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01179', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 2, 1680000, 3360000, 1600000, 0, 160000, 'pcs'),
  ('TRX-A01179', 'PRD-A-KEL-0120', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00707', '2026-11-12 16:14:29+07:00', 'Dewi Lestari', 'Admin', 12700000, 0, 6350000, 6350000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100706', '', '', '', 683000, NULL, '2026-11-12 16:14:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00707', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 3, 1990000, 5970000, 1900000, 0, 270000, 'pcs'),
  ('TRX-A00707', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 2, 1570000, 3140000, 1500000, 0, 140000, 'pcs'),
  ('TRX-A00707', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 1, 1870000, 1870000, 1800000, 0, 70000, 'pcs'),
  ('TRX-A00707', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 1, 1700000, 1700000, 1500000, 0, 200000, 'pcs'),
  ('TRX-A00707', 'PRD-A-KEL-0176', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01698', '2026-11-12 16:06:05+07:00', 'Umum', 'Admin', 181500, 0, 181500, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101697', '', '', '', 53500, NULL, '2026-11-12 16:06:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01698', 'PRD-A-AKS-0206', 'Tempered Glass Vivo', 2, 15000, 30000, 7000, 0, 16000, 'pcs'),
  ('TRX-A01698', 'PRD-A-AKS-0245', 'Batre Samsung J1', 2, 57000, 114000, 43000, 0, 28000, 'pcs'),
  ('TRX-A01698', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01698', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01698', 'PRD-A-KEL-0070', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01698', 'PRD-A-KEL-0076', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01709', '2026-11-12 16:01:02+07:00', 'Fitri Rahmawati 2', 'Admin', 5550000, 0, 5550000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101708', '', '', '', 450000, NULL, '2026-11-12 16:01:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01709', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00101', '2026-11-12 15:57:08+07:00', 'Umum', 'Admin', 15255000, 0, 0, 15255000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100100', '', '', '', 1583000, NULL, '2026-11-12 15:57:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00101', 'PRD-A-AKS-0186', 'Case Redmi 9A', 3, 25000, 75000, 14000, 0, 33000, 'pcs'),
  ('TRX-A00101', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 1, 1610000, 1610000, 1400000, 0, 210000, 'pcs'),
  ('TRX-A00101', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 3, 1710000, 5130000, 1500000, 0, 630000, 'pcs'),
  ('TRX-A00101', 'PRD-A-AKS-0195', 'Memory Card 16GB', 2, 70000, 140000, 65000, 0, 10000, 'pcs'),
  ('TRX-A00101', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 2, 1170000, 2340000, 1000000, 0, 340000, 'pcs'),
  ('TRX-A00101', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 2, 2090000, 4180000, 2000000, 0, 180000, 'pcs'),
  ('TRX-A00101', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 2, 890000, 1780000, 800000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00194', '2026-11-12 15:52:23+07:00', 'Umum', 'Admin', 9778000, 0, 9778000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100193', '', '', '', 918000, NULL, '2026-11-12 15:52:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00194', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 2, 2330000, 4660000, 2100000, 0, 460000, 'pcs'),
  ('TRX-A00194', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 3, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A00194', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 2, 1350000, 2700000, 1200000, 0, 300000, 'pcs'),
  ('TRX-A00194', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 2, 1170000, 2340000, 1100000, 0, 140000, 'pcs'),
  ('TRX-A00194', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 2, 39000, 78000, 30000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00954', '2026-11-12 15:30:53+07:00', 'Yusuf Maulana 5', 'Admin', 17374000, 0, 17374000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100953', '', '', '', 2058000, NULL, '2026-11-12 15:30:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00954', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00954', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 1, 1370000, 1370000, 1200000, 0, 170000, 'pcs'),
  ('TRX-A00954', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 1, 2600000, 2600000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A00954', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 3, 1700000, 5100000, 1600000, 0, 300000, 'pcs'),
  ('TRX-A00954', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 3, 1750000, 5250000, 1500000, 0, 750000, 'pcs'),
  ('TRX-A00954', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 3, 1010000, 3030000, 800000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01097', '2026-11-12 15:11:11+07:00', 'Umum', 'Admin', 12299000, 0, 12299000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101096', '', '', '', 1338500, NULL, '2026-11-12 15:11:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01097', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 3, 590000, 1770000, 400000, 0, 570000, 'pcs'),
  ('TRX-A01097', 'PRD-A-KEL-0061', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01097', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 3, 21000, 63000, 9000, 0, 36000, 'pcs'),
  ('TRX-A01097', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 3, 2490000, 7470000, 2300000, 0, 570000, 'pcs'),
  ('TRX-A01097', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 1, 2950000, 2950000, 2800000, 0, 150000, 'pcs'),
  ('TRX-A01097', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 1, 45000, 45000, 33000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00578', '2026-11-12 14:49:23+07:00', 'Umum', 'Admin', 426000, 0, 0, 426000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100577', '', '', '', 72500, NULL, '2026-11-12 14:49:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00578', 'PRD-A-KEL-0024', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00578', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 3, 61000, 183000, 46000, 0, 45000, 'pcs'),
  ('TRX-A00578', 'PRD-A-AKS-0146', 'Memory Card 32GB', 2, 91000, 182000, 82000, 0, 18000, 'pcs'),
  ('TRX-A00578', 'PRD-A-KEL-0010', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00458', '2026-11-12 14:32:32+07:00', 'Ayu Lestari 5', 'Admin', 6404000, 0, 6404000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100457', '', '', '', 600000, NULL, '2026-11-12 14:32:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00458', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 2, 2330000, 4660000, 2100000, 0, 460000, 'pcs'),
  ('TRX-A00458', 'PRD-A-AKS-0163', 'Kartu Perdana XL', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A00458', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 1, 1590000, 1590000, 1500000, 0, 90000, 'pcs'),
  ('TRX-A00458', 'PRD-A-AKS-0053', 'Memory Card 16GB', 2, 41000, 82000, 28000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00242', '2026-11-12 14:32:29+07:00', 'Umum', 'Admin', 8376000, 0, 8376000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100241', '', '', '', 520000, NULL, '2026-11-12 14:32:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00242', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 2, 33000, 66000, 28000, 0, 10000, 'pcs'),
  ('TRX-A00242', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 3, 480000, 1440000, 400000, 0, 240000, 'pcs'),
  ('TRX-A00242', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 3, 2290000, 6870000, 2200000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00486', '2026-11-12 13:53:35+07:00', 'Umum', 'Admin', 7654000, 0, 7654000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100485', '', '', '', 433000, NULL, '2026-11-12 13:53:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00486', 'PRD-A-AKS-0139', 'Case Samsung A03', 1, 34000, 34000, 21000, 0, 13000, 'pcs'),
  ('TRX-A00486', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01059', '2026-11-12 13:31:00+07:00', 'Andi Kurnia 4', 'Admin', 8999000, 0, 8999000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101058', '', '', '', 529000, NULL, '2026-11-12 13:31:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01059', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01059', 'PRD-A-AKS-0143', 'Batre Samsung J1', 1, 34000, 34000, 23000, 0, 11000, 'pcs'),
  ('TRX-A01059', 'PRD-A-KEL-0034', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A01059', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A01059', 'PRD-A-KEL-0185', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01059', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 2, 580000, 1160000, 500000, 0, 160000, 'pcs'),
  ('TRX-A01059', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 1, 2190000, 2190000, 2100000, 0, 90000, 'pcs'),
  ('TRX-A01059', 'PRD-A-AKS-0169', 'Handsfree Oppo', 3, 29000, 87000, 14000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01763', '2026-11-12 13:04:21+07:00', 'Rina Marlina 5', 'Admin', 12409000, 0, 12409000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101762', '', '', '', 1217000, NULL, '2026-11-12 13:04:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01763', 'PRD-A-AKS-0027', 'Batre Samsung J1', 2, 51000, 102000, 39000, 0, 24000, 'pcs'),
  ('TRX-A01763', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 3, 1680000, 5040000, 1600000, 0, 240000, 'pcs'),
  ('TRX-A01763', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 1, 2000000, 2000000, 1800000, 0, 200000, 'pcs'),
  ('TRX-A01763', 'PRD-A-KEL-0035', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01763', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 3, 1750000, 5250000, 1500000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00317', '2026-11-12 12:56:53+07:00', 'Umum', 'Admin', 8680000, 0, 8680000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100316', '', '', '', 845000, NULL, '2026-11-12 12:56:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00317', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 2, 20000, 40000, 14000, 0, 12000, 'pcs'),
  ('TRX-A00317', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 1, 1880000, 1880000, 1800000, 0, 80000, 'pcs'),
  ('TRX-A00317', 'PRD-A-KEL-0132', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00317', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 3, 2250000, 6750000, 2000000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00558', '2026-11-12 12:53:40+07:00', 'Andi Kurnia 5', 'Admin', 3496000, 0, 3496000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100557', '', '', '', 329000, NULL, '2026-11-12 12:53:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00558', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 3, 380000, 1140000, 300000, 0, 240000, 'pcs'),
  ('TRX-A00558', 'PRD-A-AKS-0134', 'Case Oppo A57', 1, 35000, 35000, 28000, 0, 7000, 'pcs'),
  ('TRX-A00558', 'PRD-A-KEL-0044', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00558', 'PRD-A-KEL-0158', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A00558', 'PRD-A-KEL-0176', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00558', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 1, 46000, 46000, 33000, 0, 13000, 'pcs'),
  ('TRX-A00558', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 1, 2150000, 2150000, 2100000, 0, 50000, 'pcs'),
  ('TRX-A00558', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01138', '2026-11-12 12:39:49+07:00', 'Rudi Hartono 4', 'Admin', 9527000, 0, 9527000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101137', '', '', '', 1298000, NULL, '2026-11-12 12:39:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01138', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 1, 73000, 73000, 58000, 0, 15000, 'pcs'),
  ('TRX-A01138', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 3, 1010000, 3030000, 800000, 0, 630000, 'pcs'),
  ('TRX-A01138', 'PRD-A-AKS-0197', 'Case Vivo Y20', 3, 24000, 72000, 11000, 0, 39000, 'pcs'),
  ('TRX-A01138', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 1, 33000, 33000, 25000, 0, 8000, 'pcs'),
  ('TRX-A01138', 'PRD-A-KEL-0011', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01138', 'PRD-A-KEL-0106', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01138', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01441', '2026-11-12 12:39:28+07:00', 'Dedi Supriadi 3', 'Admin', 15088000, 0, 7544000, 7544000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101440', '', '', '', 875000, NULL, '2026-11-12 12:39:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01441', 'PRD-A-KEL-0198', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A01441', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 3, 1540000, 4620000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A01441', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 1, 9000, 9000, 6000, 0, 3000, 'pcs'),
  ('TRX-A01441', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 1, 2500000, 2500000, 2400000, 0, 100000, 'pcs'),
  ('TRX-A01441', 'PRD-A-KEL-0182', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01441', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 2, 54000, 108000, 47000, 0, 14000, 'pcs'),
  ('TRX-A01441', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 3, 2610000, 7830000, 2500000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00202', '2026-11-12 12:26:47+07:00', 'Nur Halimah', 'Admin', 1112000, 0, 0, 1112000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100201', '', '', '', 270000, NULL, '2026-11-12 12:26:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00202', 'PRD-A-AKS-0105', 'Case Samsung A03', 2, 36000, 72000, 21000, 0, 30000, 'pcs'),
  ('TRX-A00202', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00207', '2026-11-12 12:08:46+07:00', 'Rudi Hartono', 'Admin', 5168000, 0, 5168000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100206', '', '', '', 650500, NULL, '2026-11-12 12:08:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00207', 'PRD-A-KEL-0044', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00207', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 1, 55000, 55000, 48000, 0, 7000, 'pcs'),
  ('TRX-A00207', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 2, 660000, 1320000, 500000, 0, 320000, 'pcs'),
  ('TRX-A00207', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 1, 1590000, 1590000, 1500000, 0, 90000, 'pcs'),
  ('TRX-A00207', 'PRD-A-KEL-0122', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00207', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 1, 2090000, 2090000, 1900000, 0, 190000, 'pcs'),
  ('TRX-A00207', 'PRD-A-AKS-0139', 'Case Samsung A03', 3, 34000, 102000, 21000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00542', '2026-11-12 11:59:29+07:00', 'Yusuf Maulana 5', 'Admin', 95000, 0, 47500, 47500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100541', '', '', '', 6000, NULL, '2026-11-12 11:59:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00542', 'PRD-A-AKS-0052', 'Memory Card 32GB', 1, 95000, 95000, 89000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01879', '2026-11-12 11:57:11+07:00', 'Umum', 'Admin', 9516000, 0, 4758000, 4758000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101878', '', '', '', 527000, NULL, '2026-11-12 11:57:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01879', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A01879', 'PRD-A-AKS-0236', 'Memory Card 64GB', 3, 72000, 216000, 63000, 0, 27000, 'pcs'),
  ('TRX-A01879', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01365', '2026-11-12 11:56:50+07:00', 'Dewi Lestari', 'Admin', 2291000, 0, 2291000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101364', '', '', '', 588000, NULL, '2026-11-12 11:56:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01365', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01365', 'PRD-A-KEL-0110', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01365', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 2, 30000, 60000, 17000, 0, 26000, 'pcs'),
  ('TRX-A01365', 'PRD-A-AKS-0120', 'Batre Oppo A57', 1, 33000, 33000, 22000, 0, 11000, 'pcs'),
  ('TRX-A01365', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 3, 660000, 1980000, 500000, 0, 480000, 'pcs'),
  ('TRX-A01365', 'PRD-A-KEL-0073', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01365', 'PRD-A-AKS-0169', 'Handsfree Oppo', 3, 29000, 87000, 14000, 0, 45000, 'pcs'),
  ('TRX-A01365', 'PRD-A-KEL-0056', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01880', '2026-11-12 11:46:15+07:00', 'Andi Kurnia 2', 'Admin', 7965000, 0, 7965000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101879', '', '', '', 510400, NULL, '2026-11-12 11:46:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01880', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 3, 2300000, 6900000, 2200000, 0, 300000, 'pcs'),
  ('TRX-A01880', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 21000, 0, 30000, 'pcs'),
  ('TRX-A01880', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A01880', 'PRD-A-KEL-0106', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01880', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 1, 15000, 15000, 10000, 0, 5000, 'pcs'),
  ('TRX-A01880', 'PRD-A-KEL-0005', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01880', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 3, 29000, 87000, 25000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01748', '2026-11-12 11:33:40+07:00', 'Umum', 'Admin', 7850000, 0, 7850000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101747', '', '', '', 812000, NULL, '2026-11-12 11:33:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01748', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 3, 1820000, 5460000, 1700000, 0, 360000, 'pcs'),
  ('TRX-A01748', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 2, 1110000, 2220000, 900000, 0, 420000, 'pcs'),
  ('TRX-A01748', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 2, 52000, 104000, 46000, 0, 12000, 'pcs'),
  ('TRX-A01748', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01748', 'PRD-A-AKS-0183', 'Kabel Charger 2m', 3, 14000, 42000, 10000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00437', '2026-11-12 11:25:10+07:00', 'Dewi Lestari 2', 'Admin', 24872000, 0, 24872000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100436', '', '', '', 1895000, NULL, '2026-11-12 11:25:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00437', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 2, 2480000, 4960000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A00437', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs'),
  ('TRX-A00437', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 3, 2600000, 7800000, 2500000, 0, 300000, 'pcs'),
  ('TRX-A00437', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 3, 2560000, 7680000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00437', 'PRD-A-AKS-0038', 'Case Vivo Y20', 1, 40000, 40000, 26000, 0, 14000, 'pcs'),
  ('TRX-A00437', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 3, 1210000, 3630000, 1000000, 0, 630000, 'pcs'),
  ('TRX-A00437', 'PRD-A-HP-0510', 'HP SAMSUNG Y91C 2/32 52223', 2, 350000, 700000, 300000, 0, 100000, 'pcs'),
  ('TRX-A00437', 'PRD-A-KEL-0047', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01254', '2026-11-12 11:16:09+07:00', 'Joko Prasetyo', 'Admin', 3568500, 0, 0, 3568500, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101253', '', '', '', 290100, NULL, '2026-11-12 11:16:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01254', 'PRD-A-KEL-0038', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A01254', 'PRD-A-AKS-0230', 'Handsfree Oppo', 2, 52000, 104000, 38000, 0, 28000, 'pcs'),
  ('TRX-A01254', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 2, 1730000, 3460000, 1600000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00702', '2026-11-12 11:10:39+07:00', 'Umum', 'Admin', 10779000, 0, 10779000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100701', '', '', '', 990000, NULL, '2026-11-12 11:10:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00702', 'PRD-A-AKS-0128', 'Batre Vivo Y91', 2, 41000, 82000, 36000, 0, 10000, 'pcs'),
  ('TRX-A00702', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00702', 'PRD-A-AKS-0074', 'Handsfree Oppo', 3, 49000, 147000, 39000, 0, 30000, 'pcs'),
  ('TRX-A00702', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 2, 1550000, 3100000, 1400000, 0, 300000, 'pcs'),
  ('TRX-A00702', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 2, 2930000, 5860000, 2700000, 0, 460000, 'pcs'),
  ('TRX-A00702', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 1, 0, 0, 0, 0, 0, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01597', '2026-11-12 11:02:00+07:00', 'Umum', 'Admin', 5993000, 0, 5993000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101596', '', '', '', 281000, NULL, '2026-11-12 11:02:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01597', 'PRD-A-AKS-0167', 'Tempered Glass Oppo', 1, 32000, 32000, 18000, 0, 14000, 'pcs'),
  ('TRX-A01597', 'PRD-A-KEL-0125', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01597', 'PRD-A-AKS-0143', 'Batre Samsung J1', 1, 34000, 34000, 23000, 0, 11000, 'pcs'),
  ('TRX-A01597', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A01597', 'PRD-A-KEL-0174', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01597', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 2, 1760000, 3520000, 1700000, 0, 120000, 'pcs'),
  ('TRX-A01597', 'PRD-A-KEL-0184', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01597', 'PRD-A-AKS-0224', 'Case Samsung A03', 3, 48000, 144000, 35000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01225', '2026-11-12 10:51:24+07:00', 'Umum', 'Admin', 14936000, 0, 14936000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101224', '', '', '', 1091400, NULL, '2026-11-12 10:51:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01225', 'PRD-A-KEL-0070', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01225', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 3, 2880000, 8640000, 2700000, 0, 540000, 'pcs'),
  ('TRX-A01225', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs'),
  ('TRX-A01225', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 2, 1370000, 2740000, 1300000, 0, 140000, 'pcs'),
  ('TRX-A01225', 'PRD-A-AKS-0153', 'Memory Card 32GB', 1, 92000, 92000, 86000, 0, 6000, 'pcs'),
  ('TRX-A01225', 'PRD-A-AKS-0049', 'Memory Card 32GB', 3, 84000, 252000, 81000, 0, 9000, 'pcs'),
  ('TRX-A01225', 'PRD-A-AKS-0169', 'Handsfree Oppo', 1, 29000, 29000, 14000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01769', '2026-11-12 10:44:08+07:00', 'Umum', 'Admin', 9815000, 0, 0, 9815000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101768', '', '', '', 714000, NULL, '2026-11-12 10:44:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01769', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 1, 2160000, 2160000, 2100000, 0, 60000, 'pcs'),
  ('TRX-A01769', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A01769', 'PRD-A-KEL-0114', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01769', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 1, 33000, 33000, 28000, 0, 5000, 'pcs'),
  ('TRX-A01769', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01769', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 3, 2500000, 7500000, 2300000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01214', '2026-11-12 10:34:15+07:00', 'Toko O''Brien', 'Admin', 2677000, 0, 1338500, 1338500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101213', '', '', '', 370000, NULL, '2026-11-12 10:34:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01214', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 1, 930000, 930000, 800000, 0, 130000, 'pcs'),
  ('TRX-A01214', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A01214', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A01214', 'PRD-A-AKS-0063', 'Case Samsung A03', 1, 40000, 40000, 35000, 0, 5000, 'pcs'),
  ('TRX-A01214', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 2, 24000, 48000, 15000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00616', '2026-11-12 09:59:52+07:00', 'Umum', 'Admin', 16610000, 0, 16610000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100615', '', '', '', 1177500, NULL, '2026-11-12 09:59:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00616', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 2, 1680000, 3360000, 1500000, 0, 360000, 'pcs'),
  ('TRX-A00616', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 1, 1150000, 1150000, 900000, 0, 250000, 'pcs'),
  ('TRX-A00616', 'PRD-A-KEL-0050', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00616', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 2, 2110000, 4220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A00616', 'PRD-A-KEL-0034', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A00616', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 3, 2610000, 7830000, 2500000, 0, 330000, 'pcs'),
  ('TRX-A00616', 'PRD-A-KEL-0110', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00616', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 1, 18000, 18000, 10000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00737', '2026-11-12 09:52:23+07:00', 'Lilis Suryani', 'Admin', 3798000, 0, 3798000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100736', '', '', '', 340000, NULL, '2026-11-12 09:52:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00737', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs'),
  ('TRX-A00737', 'PRD-A-KEL-0148', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00737', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 2, 1860000, 3720000, 1700000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01424', '2026-11-12 09:42:32+07:00', 'Lilis Suryani 5', 'Admin', 1689000, 0, 844500, 844500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101423', '', '', '', 154000, NULL, '2026-11-12 09:42:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01424', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 1, 39000, 39000, 35000, 0, 4000, 'pcs'),
  ('TRX-A01424', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01807', '2026-11-12 09:41:59+07:00', 'Fajar Nugroho 2', 'Admin', 178000, 0, 89000, 89000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101806', '', '', '', 55000, NULL, '2026-11-12 09:41:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01807', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01807', 'PRD-A-AKS-0043', 'Case Oppo A57', 3, 28000, 84000, 13000, 0, 45000, 'pcs'),
  ('TRX-A01807', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01083', '2026-11-12 09:23:32+07:00', 'Umum', 'Admin', 3473000, 0, 3473000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101082', '', '', '', 259000, NULL, '2026-11-12 09:23:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01083', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 1, 740000, 740000, 600000, 0, 140000, 'pcs'),
  ('TRX-A01083', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 1, 2590000, 2590000, 2500000, 0, 90000, 'pcs'),
  ('TRX-A01083', 'PRD-A-AKS-0146', 'Memory Card 32GB', 1, 91000, 91000, 82000, 0, 9000, 'pcs'),
  ('TRX-A01083', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 2, 26000, 52000, 16000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01872', '2026-11-12 09:20:59+07:00', 'Umum', 'Admin', 21179000, 0, 21179000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101871', '', '', '', 1216000, NULL, '2026-11-12 09:20:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01872', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 3, 2850000, 8550000, 2800000, 0, 150000, 'pcs'),
  ('TRX-A01872', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01872', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A01872', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 3, 2880000, 8640000, 2700000, 0, 540000, 'pcs'),
  ('TRX-A01872', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 2, 27000, 54000, 18000, 0, 18000, 'pcs'),
  ('TRX-A01872', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 2, 22000, 44000, 15000, 0, 14000, 'pcs'),
  ('TRX-A01872', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A01872', 'PRD-A-KEL-0009', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01981', '2026-11-12 09:12:10+07:00', 'Umum', 'Admin', 24000, 0, 24000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101980', '', '', '', 6000, NULL, '2026-11-12 09:12:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01981', 'PRD-A-KEL-0029', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01289', '2026-11-12 08:57:46+07:00', 'Lilis Suryani', 'Admin', 11480000, 0, 11480000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101288', '', '', '', 982000, NULL, '2026-11-12 08:57:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01289', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01289', 'PRD-A-AKS-0021', 'Handsfree Samsung', 3, 18000, 54000, 10000, 0, 24000, 'pcs'),
  ('TRX-A01289', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 3, 1700000, 5100000, 1500000, 0, 600000, 'pcs'),
  ('TRX-A01289', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 2, 2700000, 5400000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01289', 'PRD-A-KEL-0129', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A01289', 'PRD-A-AKS-0223', 'Memory Card 32GB', 3, 51000, 153000, 48000, 0, 9000, 'pcs'),
  ('TRX-A01289', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A01289', 'PRD-A-AKS-0146', 'Memory Card 32GB', 3, 91000, 273000, 82000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00416', '2026-11-12 08:46:47+07:00', 'Fajar Nugroho 4', 'Admin', 50000, 0, 50000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100415', '', '', '', 12000, NULL, '2026-11-12 08:46:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00416', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 2, 25000, 50000, 19000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00928', '2026-11-12 08:31:51+07:00', 'Umum', 'Admin', 6171000, 0, 6171000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100927', '', '', '', 368000, NULL, '2026-11-12 08:31:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00928', 'PRD-A-AKS-0191', 'Batre Samsung J1', 2, 54000, 108000, 39000, 0, 30000, 'pcs'),
  ('TRX-A00928', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 3, 1570000, 4710000, 1500000, 0, 210000, 'pcs'),
  ('TRX-A00928', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 1, 33000, 33000, 25000, 0, 8000, 'pcs'),
  ('TRX-A00928', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 1, 1320000, 1320000, 1200000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01495', '2026-11-12 08:24:25+07:00', 'Siti Aisyah', 'Admin', 6930000, 0, 6930000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101494', '', '', '', 309000, NULL, '2026-11-12 08:24:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01495', 'PRD-A-KEL-0032', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01495', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 3, 2300000, 6900000, 2200000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01453', '2026-11-12 08:22:57+07:00', 'Umum', 'Admin', 2220000, 0, 2220000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101452', '', '', '', 296000, NULL, '2026-11-12 08:22:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01453', 'PRD-A-HP-0536', 'HP ITEL HOT30i 8/256 76951', 1, 1080000, 1080000, 1000000, 0, 80000, 'pcs'),
  ('TRX-A01453', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 1, 1110000, 1110000, 900000, 0, 210000, 'pcs'),
  ('TRX-A01453', 'PRD-A-KEL-0065', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00206', '2026-11-12 08:20:55+07:00', 'Intan Permata 3', 'Admin', 3949000, 0, 3949000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100205', '', '', '', 593000, NULL, '2026-11-12 08:20:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00206', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 2, 1850000, 3700000, 1600000, 0, 500000, 'pcs'),
  ('TRX-A00206', 'PRD-A-AKS-0239', 'Batre Samsung J1', 3, 43000, 129000, 30000, 0, 39000, 'pcs'),
  ('TRX-A00206', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00206', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01770', '2026-11-12 08:06:18+07:00', 'Fitri Rahmawati 3', 'Admin', 12793000, 0, 12793000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101769', '', '', '', 853000, NULL, '2026-11-12 08:06:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01770', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 2, 1490000, 2980000, 1300000, 0, 380000, 'pcs'),
  ('TRX-A01770', 'PRD-A-AKS-0104', 'Memory Card 64GB', 1, 43000, 43000, 40000, 0, 3000, 'pcs'),
  ('TRX-A01770', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs'),
  ('TRX-A01770', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 1, 2560000, 2560000, 2500000, 0, 60000, 'pcs'),
  ('TRX-A01770', 'PRD-A-HP-0454', 'HP INFINIX A16 4/128 75084', 1, 1160000, 1160000, 1000000, 0, 160000, 'pcs'),
  ('TRX-A01770', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 1, 1730000, 1730000, 1600000, 0, 130000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01761', '2026-11-11 20:38:58+07:00', 'Agus Wijaya 5', 'Admin', 5486000, 0, 5486000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101760', '', '', '', 659000, NULL, '2026-11-11 20:38:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01761', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 3, 1370000, 4110000, 1200000, 0, 510000, 'pcs'),
  ('TRX-A01761', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 2, 670000, 1340000, 600000, 0, 140000, 'pcs'),
  ('TRX-A01761', 'PRD-A-KEL-0029', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01192', '2026-11-11 20:36:01+07:00', 'Eko Saputra 3', 'Admin', 8524000, 0, 8524000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101191', '', '', '', 1067000, NULL, '2026-11-11 20:36:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01192', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01192', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A01192', 'PRD-A-KEL-0077', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01192', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 2, 1310000, 2620000, 1100000, 0, 420000, 'pcs'),
  ('TRX-A01192', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 1, 2770000, 2770000, 2600000, 0, 170000, 'pcs'),
  ('TRX-A01192', 'PRD-A-AKS-0104', 'Memory Card 64GB', 2, 43000, 86000, 40000, 0, 6000, 'pcs'),
  ('TRX-A01192', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01323', '2026-11-11 20:22:06+07:00', 'Eko Saputra 3', 'Admin', 21318000, 0, 21318000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101322', '', '', '', 1838000, NULL, '2026-11-11 20:22:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01323', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 2, 1730000, 3460000, 1600000, 0, 260000, 'pcs'),
  ('TRX-A01323', 'PRD-A-KEL-0062', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01323', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A01323', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A01323', 'PRD-A-HP-0516', 'HP OPPO Y91C 2/16 44748', 3, 3040000, 9120000, 2800000, 0, 720000, 'pcs'),
  ('TRX-A01323', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00352', '2026-11-11 20:05:57+07:00', 'Fitri Rahmawati 4', 'Admin', 596000, 0, 596000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100351', '', '', '', 185900, NULL, '2026-11-11 20:05:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00352', 'PRD-A-KEL-0123', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00352', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 1, 580000, 580000, 400000, 0, 180000, 'pcs'),
  ('TRX-A00352', 'PRD-A-KEL-0019', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00352', 'PRD-A-KEL-0005', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00555', '2026-11-11 20:01:20+07:00', 'Fitri Rahmawati 2', 'Admin', 3545000, 0, 0, 3545000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100554', '', '', '', 400000, NULL, '2026-11-11 20:01:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00555', 'PRD-A-KEL-0097', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00555', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 2, 520000, 1040000, 400000, 0, 240000, 'pcs'),
  ('TRX-A00555', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00794', '2026-11-11 19:47:43+07:00', 'Umum', 'Admin', 11545000, 0, 5772500, 5772500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100793', '', '', '', 820000, NULL, '2026-11-11 19:47:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00794', 'PRD-A-HP-0044', 'HP OPPO HOT30i 3/64 35099', 1, 1220000, 1220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A00794', 'PRD-A-AKS-0160', 'Memory Card 32GB', 3, 40000, 120000, 34000, 0, 18000, 'pcs'),
  ('TRX-A00794', 'PRD-A-AKS-0125', 'Handsfree Samsung', 3, 52000, 156000, 37000, 0, 45000, 'pcs'),
  ('TRX-A00794', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A00794', 'PRD-A-KEL-0175', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A00794', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 3, 2090000, 6270000, 2000000, 0, 270000, 'pcs'),
  ('TRX-A00794', 'PRD-A-KEL-0048', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00794', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 3, 73000, 219000, 58000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01688', '2026-11-11 19:37:16+07:00', 'Umum', 'Admin', 84000, 0, 42000, 42000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101687', '', '', '', 21000, NULL, '2026-11-11 19:37:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01688', 'PRD-A-AKS-0069', 'Handsfree Vivo', 3, 28000, 84000, 21000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01298', '2026-11-11 19:23:22+07:00', 'Umum', 'Admin', 12322000, 0, 12322000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101297', '', '', '', 1028000, NULL, '2026-11-11 19:23:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01298', 'PRD-A-KEL-0068', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01298', 'PRD-A-AKS-0102', 'Case Vivo Y20', 2, 36000, 72000, 30000, 0, 12000, 'pcs'),
  ('TRX-A01298', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A01298', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 2, 630000, 1260000, 500000, 0, 260000, 'pcs'),
  ('TRX-A01298', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 3, 2690000, 8070000, 2600000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00624', '2026-11-11 19:13:28+07:00', 'Umum', 'Admin', 13700000, 0, 13700000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100623', '', '', '', 1117500, NULL, '2026-11-11 19:13:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00624', 'PRD-A-KEL-0044', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00624', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 2, 2700000, 5400000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A00624', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 3, 2350000, 7050000, 2100000, 0, 750000, 'pcs'),
  ('TRX-A00624', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 1, 1110000, 1110000, 1000000, 0, 110000, 'pcs'),
  ('TRX-A00624', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 1, 41000, 41000, 30000, 0, 11000, 'pcs'),
  ('TRX-A00624', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 3, 29000, 87000, 15000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00807', '2026-11-11 18:54:10+07:00', 'Rudi Hartono 3', 'Admin', 5125000, 0, 5125000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100806', '', '', '', 480000, NULL, '2026-11-11 18:54:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00807', 'PRD-A-KEL-0094', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00807', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 2, 2510000, 5020000, 2300000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00276', '2026-11-11 18:53:36+07:00', 'Umum', 'Admin', 1552000, 0, 1552000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100275', '', '', '', 428000, NULL, '2026-11-11 18:53:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00276', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 2, 690000, 1380000, 500000, 0, 380000, 'pcs'),
  ('TRX-A00276', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 3, 54000, 162000, 39000, 0, 45000, 'pcs'),
  ('TRX-A00276', 'PRD-A-KEL-0194', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00165', '2026-11-11 18:52:28+07:00', 'Nur Halimah 4', 'Admin', 7314000, 0, 3657000, 3657000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100164', '', '', '', 728000, NULL, '2026-11-11 18:52:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00165', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 2, 1550000, 3100000, 1400000, 0, 300000, 'pcs'),
  ('TRX-A00165', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 1, 2090000, 2090000, 1900000, 0, 190000, 'pcs'),
  ('TRX-A00165', 'PRD-A-AKS-0242', 'Handsfree Samsung', 1, 28000, 28000, 16000, 0, 12000, 'pcs'),
  ('TRX-A00165', 'PRD-A-KEL-0024', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00165', 'PRD-A-KEL-0112', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00165', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A00165', 'PRD-A-KEL-0136', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01164', '2026-11-11 18:36:51+07:00', 'Joko Prasetyo 5', 'Admin', 8796000, 0, 8796000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101163', '', '', '', 852000, NULL, '2026-11-11 18:36:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01164', 'PRD-A-KEL-0026', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01164', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 1, 1990000, 1990000, 1800000, 0, 190000, 'pcs'),
  ('TRX-A01164', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 1, 1590000, 1590000, 1500000, 0, 90000, 'pcs'),
  ('TRX-A01164', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A01164', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 1, 1850000, 1850000, 1600000, 0, 250000, 'pcs'),
  ('TRX-A01164', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A01164', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00654', '2026-11-11 18:29:30+07:00', 'Eko Saputra 5', 'Admin', 16127000, 0, 8063500, 8063500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100653', '', '', '', 1174500, NULL, '2026-11-11 18:29:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00654', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 3, 2270000, 6810000, 2100000, 0, 510000, 'pcs'),
  ('TRX-A00654', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A00654', 'PRD-A-KEL-0188', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00654', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 3, 2720000, 8160000, 2600000, 0, 360000, 'pcs'),
  ('TRX-A00654', 'PRD-A-KEL-0097', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01778', '2026-11-11 18:27:48+07:00', 'Toko O''Brien', 'Admin', 12884000, 0, 12884000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101777', '', '', '', 1049000, NULL, '2026-11-11 18:27:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01778', 'PRD-A-AKS-0076', 'Handsfree Samsung', 3, 58000, 174000, 45000, 0, 39000, 'pcs'),
  ('TRX-A01778', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 3, 2910000, 8730000, 2700000, 0, 630000, 'pcs'),
  ('TRX-A01778', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 2, 1990000, 3980000, 1800000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01760', '2026-11-11 17:55:19+07:00', 'Lilis Suryani 4', 'Admin', 3503000, 0, 3503000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101759', '', '', '', 661000, NULL, '2026-11-11 17:55:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01760', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 2, 930000, 1860000, 700000, 0, 460000, 'pcs'),
  ('TRX-A01760', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 3, 54000, 162000, 39000, 0, 45000, 'pcs'),
  ('TRX-A01760', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A01760', 'PRD-A-AKS-0108', 'Memory Card 16GB', 1, 96000, 96000, 87000, 0, 9000, 'pcs'),
  ('TRX-A01760', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 2, 36000, 72000, 25000, 0, 22000, 'pcs'),
  ('TRX-A01760', 'PRD-A-AKS-0167', 'Tempered Glass Oppo', 1, 32000, 32000, 18000, 0, 14000, 'pcs'),
  ('TRX-A01760', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 3, 15000, 45000, 8000, 0, 21000, 'pcs'),
  ('TRX-A01760', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 2, 38000, 76000, 23000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00307', '2026-11-11 17:38:58+07:00', 'Dewi Lestari', 'Admin', 2176000, 0, 2176000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100306', '', '', '', 218000, NULL, '2026-11-11 17:38:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00307', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs'),
  ('TRX-A00307', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 1, 1900000, 1900000, 1700000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00147', '2026-11-11 17:36:01+07:00', 'Umum', 'Admin', 76000, 0, 76000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100146', '', '', '', 22000, NULL, '2026-11-11 17:36:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00147', 'PRD-A-AKS-0201', 'Memory Card 32GB', 2, 38000, 76000, 27000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00813', '2026-11-11 17:31:39+07:00', 'Lilis Suryani', 'Admin', 6940000, 0, 6940000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100812', '', '', '', 440000, NULL, '2026-11-11 17:31:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00813', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 2, 2020000, 4040000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A00813', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01072', '2026-11-11 17:23:15+07:00', 'Umum', 'Admin', 3478000, 0, 3478000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101071', '', '', '', 176000, NULL, '2026-11-11 17:23:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01072', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 2, 1680000, 3360000, 1600000, 0, 160000, 'pcs'),
  ('TRX-A01072', 'PRD-A-KEL-0161', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01072', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01072', 'PRD-A-KEL-0144', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00257', '2026-11-11 17:15:24+07:00', 'Yusuf Maulana', 'Admin', 1388000, 0, 1388000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100256', '', '', '', 125000, NULL, '2026-11-11 17:15:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00257', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 1, 1050000, 1050000, 1000000, 0, 50000, 'pcs'),
  ('TRX-A00257', 'PRD-A-KEL-0020', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00257', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00257', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 3, 29000, 87000, 25000, 0, 12000, 'pcs'),
  ('TRX-A00257', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00257', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 3, 30000, 90000, 18000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01861', '2026-11-11 17:15:23+07:00', 'Umum', 'Admin', 7920000, 0, 3960000, 3960000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101860', '', '', '', 720000, NULL, '2026-11-11 17:15:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01861', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01617', '2026-11-11 17:01:22+07:00', 'Maya Putri 3', 'Admin', 3880000, 0, 0, 3880000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101616', '', '', '', 437000, NULL, '2026-11-11 17:01:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01617', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 3, 74000, 222000, 59000, 0, 45000, 'pcs'),
  ('TRX-A01617', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 1, 2920000, 2920000, 2700000, 0, 220000, 'pcs'),
  ('TRX-A01617', 'PRD-A-KEL-0174', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01617', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 1, 660000, 660000, 500000, 0, 160000, 'pcs'),
  ('TRX-A01617', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00274', '2026-11-11 16:51:07+07:00', 'Rina Marlina 4', 'Admin', 12019000, 0, 12019000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100273', '', '', '', 950000, NULL, '2026-11-11 16:51:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00274', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 3, 2960000, 8880000, 2800000, 0, 480000, 'pcs'),
  ('TRX-A00274', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 1, 33000, 33000, 25000, 0, 8000, 'pcs'),
  ('TRX-A00274', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A00274', 'PRD-A-KEL-0189', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00274', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 2, 41000, 82000, 37000, 0, 8000, 'pcs'),
  ('TRX-A00274', 'PRD-A-AKS-0031', 'Batre Samsung J1', 3, 58000, 174000, 50000, 0, 24000, 'pcs'),
  ('TRX-A00274', 'PRD-A-KEL-0147', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01481', '2026-11-11 16:31:25+07:00', 'Sri Wahyuni 4', 'Admin', 226000, 0, 226000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101480', '', '', '', 64000, NULL, '2026-11-11 16:31:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01481', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 3, 21000, 63000, 17000, 0, 12000, 'pcs'),
  ('TRX-A01481', 'PRD-A-KEL-0011', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01481', 'PRD-A-AKS-0139', 'Case Samsung A03', 1, 34000, 34000, 21000, 0, 13000, 'pcs'),
  ('TRX-A01481', 'PRD-A-AKS-0057', 'Case Redmi 9A', 3, 37000, 111000, 26000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01522', '2026-11-11 16:00:58+07:00', 'Yusuf Maulana', 'Admin', 3019000, 0, 1509500, 1509500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101521', '', '', '', 332000, NULL, '2026-11-11 16:00:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01522', 'PRD-A-AKS-0108', 'Memory Card 16GB', 3, 96000, 288000, 87000, 0, 27000, 'pcs'),
  ('TRX-A01522', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A01522', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 2, 1200000, 2400000, 1100000, 0, 200000, 'pcs'),
  ('TRX-A01522', 'PRD-A-KEL-0056', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01522', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 2, 35000, 70000, 21000, 0, 28000, 'pcs'),
  ('TRX-A01522', 'PRD-A-KEL-0168', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01522', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 2, 30000, 60000, 17000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00947', '2026-11-11 15:40:04+07:00', 'Umum', 'Admin', 12000, 0, 12000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100946', '', '', '', 4000, NULL, '2026-11-11 15:40:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00947', 'PRD-A-KEL-0130', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00016', '2026-11-11 15:38:39+07:00', 'Dewi Lestari 5', 'Admin', 4615000, 0, 2307500, 2307500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100015', '', '', '', 797900, NULL, '2026-11-11 15:38:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00016', 'PRD-A-AKS-0198', 'Batre Oppo A57', 1, 19000, 19000, 14000, 0, 5000, 'pcs'),
  ('TRX-A00016', 'PRD-A-HP-0254', 'HP VIVO J5 2/16 85377', 3, 1000000, 3000000, 800000, 0, 600000, 'pcs'),
  ('TRX-A00016', 'PRD-A-KEL-0005', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00016', 'PRD-A-KEL-0050', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00016', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01548', '2026-11-11 15:38:21+07:00', 'Umum', 'Admin', 150000, 0, 150000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101547', '', '', '', 23000, NULL, '2026-11-11 15:38:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01548', 'PRD-A-KEL-0139', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01548', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 1, 69000, 69000, 58000, 0, 11000, 'pcs'),
  ('TRX-A01548', 'PRD-A-AKS-0236', 'Memory Card 64GB', 1, 72000, 72000, 63000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00107', '2026-11-11 15:17:47+07:00', 'Budi Santoso 4', 'Admin', 8453000, 0, 4226500, 4226500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100106', '', '', '', 797000, NULL, '2026-11-11 15:17:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00107', 'PRD-A-AKS-0149', 'Case Samsung A03', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00107', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 1, 1960000, 1960000, 1900000, 0, 60000, 'pcs'),
  ('TRX-A00107', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs'),
  ('TRX-A00107', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 2, 28000, 56000, 21000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00235', '2026-11-11 15:15:21+07:00', 'Sri Wahyuni 3', 'Admin', 4717000, 0, 4717000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100234', '', '', '', 603000, NULL, '2026-11-11 15:15:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00235', 'PRD-A-AKS-0141', 'Batre Oppo A57', 2, 62000, 124000, 50000, 0, 24000, 'pcs'),
  ('TRX-A00235', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 3, 21000, 63000, 9000, 0, 36000, 'pcs'),
  ('TRX-A00235', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A00235', 'PRD-A-AKS-0091', 'Case Oppo A57', 3, 22000, 66000, 11000, 0, 33000, 'pcs'),
  ('TRX-A00235', 'PRD-A-KEL-0190', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00235', 'PRD-A-AKS-0139', 'Case Samsung A03', 2, 34000, 68000, 21000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00060', '2026-11-11 14:47:28+07:00', 'Ayu Lestari 2', 'Admin', 5091000, 0, 5091000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100059', '', '', '', 549000, NULL, '2026-11-11 14:47:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00060', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 3, 1680000, 5040000, 1500000, 0, 540000, 'pcs'),
  ('TRX-A00060', 'PRD-A-KEL-0180', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00491', '2026-11-11 14:34:06+07:00', 'Joko Prasetyo 5', 'Admin', 8623000, 0, 8623000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100490', '', '', '', 1254000, NULL, '2026-11-11 14:34:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00491', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 3, 790000, 2370000, 600000, 0, 570000, 'pcs'),
  ('TRX-A00491', 'PRD-A-AKS-0031', 'Batre Samsung J1', 1, 58000, 58000, 50000, 0, 8000, 'pcs'),
  ('TRX-A00491', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 1, 620000, 620000, 500000, 0, 120000, 'pcs'),
  ('TRX-A00491', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00491', 'PRD-A-KEL-0062', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00491', 'PRD-A-AKS-0054', 'Batre Samsung J1', 3, 40000, 120000, 30000, 0, 30000, 'pcs'),
  ('TRX-A00491', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 2, 27000, 54000, 13000, 0, 28000, 'pcs'),
  ('TRX-A00491', 'PRD-A-AKS-0146', 'Memory Card 32GB', 1, 91000, 91000, 82000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01643', '2026-11-11 14:33:04+07:00', 'Umum', 'Admin', 72000, 0, 72000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101642', '', '', '', 7000, NULL, '2026-11-11 14:33:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01643', 'PRD-A-AKS-0213', 'Memory Card 16GB', 1, 72000, 72000, 65000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00481', '2026-11-11 14:32:37+07:00', 'Siti Aisyah 5', 'Admin', 6455000, 0, 6455000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100480', '', '', '', 513000, NULL, '2026-11-11 14:32:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00481', 'PRD-A-KEL-0017', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A00481', 'PRD-A-KEL-0075', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00481', 'PRD-A-HP-0400', 'HP SAMSUNG 5A 2/32 51721', 1, 2320000, 2320000, 2100000, 0, 220000, 'pcs'),
  ('TRX-A00481', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A00481', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00250', '2026-11-11 14:28:55+07:00', 'Umum', 'Admin', 10044000, 0, 0, 10044000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100249', '', '', '', 1284000, NULL, '2026-11-11 14:28:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00250', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs'),
  ('TRX-A00250', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs'),
  ('TRX-A00250', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A00250', 'PRD-A-AKS-0217', 'Batre Samsung J1', 2, 47000, 94000, 42000, 0, 10000, 'pcs'),
  ('TRX-A00250', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 1, 820000, 820000, 600000, 0, 220000, 'pcs'),
  ('TRX-A00250', 'PRD-A-KEL-0172', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00250', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A00250', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 1, 1640000, 1640000, 1500000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01851', '2026-11-11 14:27:11+07:00', 'Dewi Lestari 2', 'Admin', 2646000, 0, 2646000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101850', '', '', '', 334000, NULL, '2026-11-11 14:27:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01851', 'PRD-A-AKS-0231', 'Case Samsung A03', 1, 34000, 34000, 27000, 0, 7000, 'pcs'),
  ('TRX-A01851', 'PRD-A-HP-0044', 'HP OPPO HOT30i 3/64 35099', 1, 1220000, 1220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01851', 'PRD-A-AKS-0146', 'Memory Card 32GB', 2, 91000, 182000, 82000, 0, 18000, 'pcs'),
  ('TRX-A01851', 'PRD-A-KEL-0104', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01851', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 1, 1180000, 1180000, 1100000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00022', '2026-11-11 14:22:20+07:00', 'Umum', 'Admin', 10872000, 0, 10872000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100021', '', '', '', 1621000, NULL, '2026-11-11 14:22:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00022', 'PRD-A-AKS-0049', 'Memory Card 32GB', 3, 84000, 252000, 81000, 0, 9000, 'pcs'),
  ('TRX-A00022', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A00022', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00022', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 1, 940000, 940000, 700000, 0, 240000, 'pcs'),
  ('TRX-A00022', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 2, 750000, 1500000, 500000, 0, 500000, 'pcs'),
  ('TRX-A00022', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A00022', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 2, 960000, 1920000, 800000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00126', '2026-11-11 13:30:32+07:00', 'Umum', 'Admin', 6881000, 0, 6881000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100125', '', '', '', 925000, NULL, '2026-11-11 13:30:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00126', 'PRD-A-KEL-0194', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00126', 'PRD-A-KEL-0053', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00126', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 2, 600000, 1200000, 400000, 0, 400000, 'pcs'),
  ('TRX-A00126', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 3, 1870000, 5610000, 1700000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00946', '2026-11-11 13:30:25+07:00', 'Umum', 'Admin', 19139000, 0, 0, 19139000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100945', '', '', '', 1373500, NULL, '2026-11-11 13:30:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00946', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 1, 970000, 970000, 900000, 0, 70000, 'pcs'),
  ('TRX-A00946', 'PRD-A-AKS-0193', 'Case Oppo A57', 3, 25000, 75000, 21000, 0, 12000, 'pcs'),
  ('TRX-A00946', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 3, 2720000, 8160000, 2600000, 0, 360000, 'pcs'),
  ('TRX-A00946', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 3, 1650000, 4950000, 1500000, 0, 450000, 'pcs'),
  ('TRX-A00946', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 1, 2250000, 2250000, 2000000, 0, 250000, 'pcs'),
  ('TRX-A00946', 'PRD-A-KEL-0102', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00946', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 1, 2730000, 2730000, 2500000, 0, 230000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01446', '2026-11-11 13:26:59+07:00', 'Budi Santoso 2', 'Admin', 10010000, 0, 10010000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101445', '', '', '', 745500, NULL, '2026-11-11 13:26:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01446', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 1, 2350000, 2350000, 2100000, 0, 250000, 'pcs'),
  ('TRX-A01446', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 2, 2700000, 5400000, 2500000, 0, 400000, 'pcs'),
  ('TRX-A01446', 'PRD-A-KEL-0050', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01446', 'PRD-A-KEL-0170', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01446', 'PRD-A-KEL-0074', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01446', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00863', '2026-11-11 13:23:36+07:00', 'Umum', 'Admin', 7050000, 0, 3525000, 3525000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100862', '', '', '', 928500, NULL, '2026-11-11 13:23:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00863', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 1, 2610000, 2610000, 2400000, 0, 210000, 'pcs'),
  ('TRX-A00863', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A00863', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A00863', 'PRD-A-AKS-0057', 'Case Redmi 9A', 1, 37000, 37000, 26000, 0, 11000, 'pcs'),
  ('TRX-A00863', 'PRD-A-AKS-0143', 'Batre Samsung J1', 2, 34000, 68000, 23000, 0, 22000, 'pcs'),
  ('TRX-A00863', 'PRD-A-KEL-0140', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00863', 'PRD-A-AKS-0171', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A00863', 'PRD-A-KEL-0118', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01819', '2026-11-11 13:18:26+07:00', 'Hendra Gunawan 4', 'Admin', 18668000, 0, 18668000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101818', '', '', '', 1733000, NULL, '2026-11-11 13:18:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01819', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 2, 2590000, 5180000, 2500000, 0, 180000, 'pcs'),
  ('TRX-A01819', 'PRD-A-HP-0002', 'HP REALME A16 2/16 79012', 3, 500000, 1500000, 400000, 0, 300000, 'pcs'),
  ('TRX-A01819', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 2, 1540000, 3080000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A01819', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01819', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 2, 2850000, 5700000, 2800000, 0, 100000, 'pcs'),
  ('TRX-A01819', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 3, 1010000, 3030000, 800000, 0, 630000, 'pcs'),
  ('TRX-A01819', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 3, 46000, 138000, 33000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00031', '2026-11-11 13:16:59+07:00', 'Agus Wijaya 2', 'Admin', 16472000, 0, 16472000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100030', '', '', '', 1750000, NULL, '2026-11-11 13:16:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00031', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00031', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 3, 1870000, 5610000, 1700000, 0, 510000, 'pcs'),
  ('TRX-A00031', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A00031', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 3, 1800000, 5400000, 1600000, 0, 600000, 'pcs'),
  ('TRX-A00031', 'PRD-A-KEL-0120', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00568', '2026-11-11 13:16:44+07:00', 'Umum', 'Admin', 5907000, 0, 5907000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100567', '', '', '', 321000, NULL, '2026-11-11 13:16:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00568', 'PRD-A-KEL-0035', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00568', 'PRD-A-AKS-0146', 'Memory Card 32GB', 1, 91000, 91000, 82000, 0, 9000, 'pcs'),
  ('TRX-A00568', 'PRD-A-KEL-0034', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00568', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A00568', 'PRD-A-KEL-0041', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00568', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A00568', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00568', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 3, 1760000, 5280000, 1700000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00494', '2026-11-11 13:00:26+07:00', 'Dedi Supriadi 4', 'Admin', 14500000, 0, 14500000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100493', '', '', '', 692000, NULL, '2026-11-11 13:00:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00494', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs'),
  ('TRX-A00494', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 3, 2770000, 8310000, 2700000, 0, 210000, 'pcs'),
  ('TRX-A00494', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 2, 1990000, 3980000, 1800000, 0, 380000, 'pcs'),
  ('TRX-A00494', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00299', '2026-11-11 12:57:01+07:00', 'Joko Prasetyo 5', 'Admin', 9524000, 0, 4762000, 4762000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100298', '', '', '', 794000, NULL, '2026-11-11 12:57:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00299', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 3, 18000, 54000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00299', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 3, 1590000, 4770000, 1500000, 0, 270000, 'pcs'),
  ('TRX-A00299', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 2, 2350000, 4700000, 2100000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00112', '2026-11-11 12:35:30+07:00', 'Dedi Supriadi 2', 'Admin', 1936000, 0, 1936000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100111', '', '', '', 157000, NULL, '2026-11-11 12:35:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00112', 'PRD-A-AKS-0178', 'Case Vivo Y20', 3, 36000, 108000, 24000, 0, 36000, 'pcs'),
  ('TRX-A00112', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 1, 1700000, 1700000, 1600000, 0, 100000, 'pcs'),
  ('TRX-A00112', 'PRD-A-KEL-0053', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00112', 'PRD-A-KEL-0180', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00112', 'PRD-A-KEL-0176', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00177', '2026-11-11 12:26:38+07:00', 'Rudi Hartono 3', 'Admin', 8685000, 0, 8685000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100176', '', '', '', 1051000, NULL, '2026-11-11 12:26:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00177', 'PRD-A-KEL-0170', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00177', 'PRD-A-AKS-0049', 'Memory Card 32GB', 1, 84000, 84000, 81000, 0, 3000, 'pcs'),
  ('TRX-A00177', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 2, 1990000, 3980000, 1900000, 0, 180000, 'pcs'),
  ('TRX-A00177', 'PRD-A-AKS-0220', 'Tempered Glass Samsung', 2, 23000, 46000, 20000, 0, 6000, 'pcs'),
  ('TRX-A00177', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 3, 860000, 2580000, 700000, 0, 480000, 'pcs'),
  ('TRX-A00177', 'PRD-A-KEL-0129', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A00177', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 3, 620000, 1860000, 500000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01318', '2026-11-11 11:54:24+07:00', 'Sri Wahyuni 2', 'Admin', 10730000, 0, 0, 10730000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101317', '', '', '', 700000, NULL, '2026-11-11 11:54:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01318', 'PRD-A-HP-0334', 'HP SAMSUNG Y16 3/64 17970', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A01318', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A01318', 'PRD-A-KEL-0094', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00819', '2026-11-11 11:51:35+07:00', 'Umum', 'Admin', 8384000, 0, 8384000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100818', '', '', '', 881500, NULL, '2026-11-11 11:51:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00819', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A00819', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs'),
  ('TRX-A00819', 'PRD-A-KEL-0088', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00117', '2026-11-11 11:44:27+07:00', 'Lilis Suryani', 'Admin', 9399000, 0, 9399000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100116', '', '', '', 673000, NULL, '2026-11-11 11:44:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00117', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00117', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 3, 2350000, 7050000, 2300000, 0, 150000, 'pcs'),
  ('TRX-A00117', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 2, 1150000, 2300000, 900000, 0, 500000, 'pcs'),
  ('TRX-A00117', 'PRD-A-AKS-0166', 'Case Redmi 9A', 1, 25000, 25000, 10000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00013', '2026-11-11 11:09:58+07:00', 'Umum', 'Admin', 17385000, 0, 17385000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100012', '', '', '', 1293000, NULL, '2026-11-11 11:09:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00013', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 1, 2540000, 2540000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A00013', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 3, 2690000, 8070000, 2600000, 0, 270000, 'pcs'),
  ('TRX-A00013', 'PRD-A-HP-0391', 'HP INFINIX A03 3/32 13495', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A00013', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00013', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 2, 2590000, 5180000, 2400000, 0, 380000, 'pcs'),
  ('TRX-A00013', 'PRD-A-AKS-0090', 'Kartu Perdana XL', 3, 35000, 105000, 22000, 0, 39000, 'pcs'),
  ('TRX-A00013', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 2, 35000, 70000, 27000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01990', '2026-11-11 11:06:35+07:00', 'Eko Saputra', 'Admin', 4650000, 0, 2325000, 2325000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101989', '', '', '', 450000, NULL, '2026-11-11 11:06:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01990', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 3, 1550000, 4650000, 1400000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00739', '2026-11-11 10:45:33+07:00', 'Intan Permata 3', 'Admin', 102000, 0, 102000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100738', '', '', '', 14000, NULL, '2026-11-11 10:45:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00739', 'PRD-A-AKS-0179', 'Memory Card 32GB', 1, 102000, 102000, 88000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01503', '2026-11-11 10:43:54+07:00', 'Dedi Supriadi 5', 'Admin', 159000, 0, 159000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101502', '', '', '', 49500, NULL, '2026-11-11 10:43:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01503', 'PRD-A-AKS-0114', 'Memory Card 16GB', 3, 44000, 132000, 30000, 0, 42000, 'pcs'),
  ('TRX-A01503', 'PRD-A-KEL-0037', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A01503', 'PRD-A-KEL-0031', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00435', '2026-11-11 10:40:00+07:00', 'Intan Permata 2', 'Admin', 14137000, 0, 14137000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100434', '', '', '', 1102000, NULL, '2026-11-11 10:40:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00435', 'PRD-A-KEL-0007', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00435', 'PRD-A-KEL-0144', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00435', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00435', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 3, 1630000, 4890000, 1500000, 0, 390000, 'pcs'),
  ('TRX-A00435', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A00435', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs'),
  ('TRX-A00435', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 2, 2590000, 5180000, 2400000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00882', '2026-11-11 10:33:31+07:00', 'Umum', 'Admin', 4649000, 0, 4649000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100881', '', '', '', 670000, NULL, '2026-11-11 10:33:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00882', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 2, 1370000, 2740000, 1200000, 0, 340000, 'pcs'),
  ('TRX-A00882', 'PRD-A-KEL-0104', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00882', 'PRD-A-AKS-0069', 'Handsfree Vivo', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A00882', 'PRD-A-KEL-0034', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A00882', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 3, 600000, 1800000, 500000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00103', '2026-11-11 10:27:21+07:00', 'Umum', 'Admin', 20104000, 0, 20104000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100102', '', '', '', 1965000, NULL, '2026-11-11 10:27:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00103', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 2, 1040000, 2080000, 800000, 0, 480000, 'pcs'),
  ('TRX-A00103', 'PRD-A-AKS-0115', 'Tempered Glass Samsung', 1, 20000, 20000, 9000, 0, 11000, 'pcs'),
  ('TRX-A00103', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 1, 2230000, 2230000, 2000000, 0, 230000, 'pcs'),
  ('TRX-A00103', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A00103', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 3, 2770000, 8310000, 2600000, 0, 510000, 'pcs'),
  ('TRX-A00103', 'PRD-A-AKS-0114', 'Memory Card 16GB', 1, 44000, 44000, 30000, 0, 14000, 'pcs'),
  ('TRX-A00103', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs'),
  ('TRX-A00103', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 2, 930000, 1860000, 800000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01953', '2026-11-11 09:59:52+07:00', 'Umum', 'Admin', 21777000, 0, 10888500, 10888500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101952', '', '', '', 1223000, NULL, '2026-11-11 09:59:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01953', 'PRD-A-AKS-0045', 'Memory Card 16GB', 2, 58000, 116000, 53000, 0, 10000, 'pcs'),
  ('TRX-A01953', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 2, 930000, 1860000, 800000, 0, 260000, 'pcs'),
  ('TRX-A01953', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 3, 2960000, 8880000, 2800000, 0, 480000, 'pcs'),
  ('TRX-A01953', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 2, 2720000, 5440000, 2600000, 0, 240000, 'pcs'),
  ('TRX-A01953', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A01953', 'PRD-A-KEL-0020', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01953', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 3, 1770000, 5310000, 1700000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00652', '2026-11-11 09:57:00+07:00', 'Agus Wijaya 3', 'Admin', 16208000, 0, 16208000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100651', '', '', '', 1778000, NULL, '2026-11-11 09:57:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00652', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 3, 1620000, 4860000, 1400000, 0, 660000, 'pcs'),
  ('TRX-A00652', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 1, 51000, 51000, 47000, 0, 4000, 'pcs'),
  ('TRX-A00652', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00652', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A00652', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 2, 2000000, 4000000, 1800000, 0, 400000, 'pcs'),
  ('TRX-A00652', 'PRD-A-AKS-0049', 'Memory Card 32GB', 3, 84000, 252000, 81000, 0, 9000, 'pcs'),
  ('TRX-A00652', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 1, 43000, 43000, 32000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00410', '2026-11-11 09:48:35+07:00', 'Rudi Hartono 4', 'Admin', 7979000, 0, 7979000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100409', '', '', '', 741000, NULL, '2026-11-11 09:48:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00410', 'PRD-A-KEL-0109', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00410', 'PRD-A-KEL-0180', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00410', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A00410', 'PRD-A-AKS-0021', 'Handsfree Samsung', 2, 18000, 36000, 10000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00939', '2026-11-11 09:35:07+07:00', 'Umum', 'Admin', 12843500, 0, 12843500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100938', '', '', '', 1041000, NULL, '2026-11-11 09:35:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00939', 'PRD-A-KEL-0186', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00939', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 2, 2230000, 4460000, 2000000, 0, 460000, 'pcs'),
  ('TRX-A00939', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 2, 1990000, 3980000, 1900000, 0, 180000, 'pcs'),
  ('TRX-A00939', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00883', '2026-11-11 08:54:47+07:00', 'Umum', 'Admin', 5610000, 0, 5610000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100882', '', '', '', 460000, NULL, '2026-11-11 08:54:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00883', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00883', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs'),
  ('TRX-A00883', 'PRD-A-KEL-0114', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00314', '2026-11-11 08:52:36+07:00', 'Umum', 'Admin', 7310000, 0, 7310000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100313', '', '', '', 447000, NULL, '2026-11-11 08:52:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00314', 'PRD-A-AKS-0153', 'Memory Card 32GB', 1, 92000, 92000, 86000, 0, 6000, 'pcs'),
  ('TRX-A00314', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 3, 950000, 2850000, 900000, 0, 150000, 'pcs'),
  ('TRX-A00314', 'PRD-A-AKS-0154', 'Memory Card 16GB', 3, 101000, 303000, 86000, 0, 45000, 'pcs'),
  ('TRX-A00314', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 2, 2020000, 4040000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A00314', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 1, 25000, 25000, 19000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00824', '2026-11-11 08:37:35+07:00', 'Umum', 'Admin', 137000, 0, 137000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100823', '', '', '', 37000, NULL, '2026-11-11 08:37:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00824', 'PRD-A-KEL-0182', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00824', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 2, 33000, 66000, 28000, 0, 10000, 'pcs'),
  ('TRX-A00824', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 1, 35000, 35000, 20000, 0, 15000, 'pcs'),
  ('TRX-A00824', 'PRD-A-KEL-0124', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01537', '2026-11-11 08:34:25+07:00', 'Umum', 'Admin', 2398000, 0, 2398000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101536', '', '', '', 266000, NULL, '2026-11-11 08:34:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01537', 'PRD-A-KEL-0012', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01537', 'PRD-A-KEL-0124', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01537', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 1, 2350000, 2350000, 2100000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01490', '2026-11-11 08:04:05+07:00', 'Hendra Gunawan 4', 'Admin', 4700000, 0, 2350000, 2350000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101489', '', '', '', 500000, NULL, '2026-11-11 08:04:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01490', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 2, 2350000, 4700000, 2100000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01937', '2026-11-10 20:54:09+07:00', 'Sri Wahyuni 2', 'Admin', 9082000, 0, 9082000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101936', '', '', '', 639500, NULL, '2026-11-10 20:54:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01937', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A01937', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A01937', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 3, 780000, 2340000, 700000, 0, 240000, 'pcs'),
  ('TRX-A01937', 'PRD-A-KEL-0125', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01937', 'PRD-A-KEL-0140', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00252', '2026-11-10 20:47:19+07:00', 'Siti Aisyah 4', 'Admin', 13362500, 0, 0, 13362500, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100251', '', '', '', 905000, NULL, '2026-11-10 20:47:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00252', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 3, 2370000, 7110000, 2300000, 0, 210000, 'pcs'),
  ('TRX-A00252', 'PRD-A-KEL-0106', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00252', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 1, 1870000, 1870000, 1700000, 0, 170000, 'pcs'),
  ('TRX-A00252', 'PRD-A-AKS-0046', 'Case Samsung A03', 3, 38000, 114000, 35000, 0, 9000, 'pcs'),
  ('TRX-A00252', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 3, 75000, 225000, 50000, 0, 75000, 'pcs'),
  ('TRX-A00252', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 2, 2020000, 4040000, 1800000, 0, 440000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00127', '2026-11-10 20:45:04+07:00', 'Umum', 'Admin', 2016000, 0, 2016000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100126', '', '', '', 558000, NULL, '2026-11-10 20:45:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00127', 'PRD-A-AKS-0195', 'Memory Card 16GB', 3, 70000, 210000, 65000, 0, 15000, 'pcs'),
  ('TRX-A00127', 'PRD-A-AKS-0146', 'Memory Card 32GB', 2, 91000, 182000, 82000, 0, 18000, 'pcs'),
  ('TRX-A00127', 'PRD-A-HP-0142', 'HP VIVO A57 3/32 10794', 2, 740000, 1480000, 500000, 0, 480000, 'pcs'),
  ('TRX-A00127', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00127', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 3, 28000, 84000, 19000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00138', '2026-11-10 20:40:46+07:00', 'Dewi Lestari 4', 'Admin', 9273000, 0, 9273000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100137', '', '', '', 871500, NULL, '2026-11-10 20:40:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00138', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 1, 780000, 780000, 700000, 0, 80000, 'pcs'),
  ('TRX-A00138', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 1, 2070000, 2070000, 2000000, 0, 70000, 'pcs'),
  ('TRX-A00138', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs'),
  ('TRX-A00138', 'PRD-A-KEL-0154', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01389', '2026-11-10 20:31:35+07:00', 'Eko Saputra 3', 'Admin', 5640000, 0, 5640000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101388', '', '', '', 840000, NULL, '2026-11-10 20:31:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01389', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 2, 830000, 1660000, 600000, 0, 460000, 'pcs'),
  ('TRX-A01389', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 2, 1990000, 3980000, 1800000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00599', '2026-11-10 20:18:31+07:00', 'Maya Putri', 'Admin', 1464000, 0, 1464000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100598', '', '', '', 149000, NULL, '2026-11-10 20:18:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00599', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 1, 39000, 39000, 30000, 0, 9000, 'pcs'),
  ('TRX-A00599', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 1, 1320000, 1320000, 1200000, 0, 120000, 'pcs'),
  ('TRX-A00599', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 1, 29000, 29000, 25000, 0, 4000, 'pcs'),
  ('TRX-A00599', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 1, 64000, 64000, 51000, 0, 13000, 'pcs'),
  ('TRX-A00599', 'PRD-A-KEL-0029', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00032', '2026-11-10 20:10:26+07:00', 'Umum', 'Admin', 3020000, 0, 1510000, 1510000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100031', '', '', '', 228000, NULL, '2026-11-10 20:10:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00032', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 1, 55000, 55000, 50000, 0, 5000, 'pcs'),
  ('TRX-A00032', 'PRD-A-KEL-0198', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00032', 'PRD-A-KEL-0056', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00032', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 1, 2910000, 2910000, 2700000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00396', '2026-11-10 20:08:27+07:00', 'Andi Kurnia 3', 'Admin', 650000, 0, 650000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100395', '', '', '', 109000, NULL, '2026-11-10 20:08:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00396', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs'),
  ('TRX-A00396', 'PRD-A-KEL-0094', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A00396', 'PRD-A-AKS-0023', 'Memory Card 32GB', 2, 53000, 106000, 45000, 0, 16000, 'pcs'),
  ('TRX-A00396', 'PRD-A-AKS-0050', 'Case Redmi 9A', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A00396', 'PRD-A-AKS-0084', 'Memory Card 64GB', 1, 95000, 95000, 82000, 0, 13000, 'pcs'),
  ('TRX-A00396', 'PRD-A-AKS-0090', 'Kartu Perdana XL', 2, 35000, 70000, 22000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01886', '2026-11-10 20:03:32+07:00', 'Lilis Suryani 3', 'Admin', 9625000, 0, 4812500, 4812500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101885', '', '', '', 1497000, NULL, '2026-11-10 20:03:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01886', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 2, 2930000, 5860000, 2700000, 0, 460000, 'pcs'),
  ('TRX-A01886', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A01886', 'PRD-A-HP-0143', 'HP NOKIA Y53 4/128 49361', 3, 450000, 1350000, 300000, 0, 450000, 'pcs'),
  ('TRX-A01886', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 3, 790000, 2370000, 600000, 0, 570000, 'pcs'),
  ('TRX-A01886', 'PRD-A-KEL-0026', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01361', '2026-11-10 19:34:56+07:00', 'Budi Santoso 3', 'Admin', 3430000, 0, 3430000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101360', '', '', '', 513000, NULL, '2026-11-10 19:34:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01361', 'PRD-A-KEL-0159', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01361', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 3, 25000, 75000, 16000, 0, 27000, 'pcs'),
  ('TRX-A01361', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 2, 1610000, 3220000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A01361', 'PRD-A-KEL-0160', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00632', '2026-11-10 19:07:29+07:00', 'Umum', 'Admin', 28000, 0, 28000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100631', '', '', '', 7000, NULL, '2026-11-10 19:07:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00632', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 1, 28000, 28000, 21000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00381', '2026-11-10 18:33:13+07:00', 'Hendra Gunawan 4', 'Admin', 5876000, 0, 5876000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100380', '', '', '', 855000, NULL, '2026-11-10 18:33:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00381', 'PRD-A-AKS-0063', 'Case Samsung A03', 3, 40000, 120000, 35000, 0, 15000, 'pcs'),
  ('TRX-A00381', 'PRD-A-HP-0143', 'HP NOKIA Y53 4/128 49361', 3, 450000, 1350000, 300000, 0, 450000, 'pcs'),
  ('TRX-A00381', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A00381', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 2, 2190000, 4380000, 2000000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01342', '2026-11-10 17:53:09+07:00', 'Umum', 'Admin', 2683000, 0, 2683000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101341', '', '', '', 203000, NULL, '2026-11-10 17:53:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01342', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A01342', 'PRD-A-AKS-0120', 'Batre Oppo A57', 1, 33000, 33000, 22000, 0, 11000, 'pcs'),
  ('TRX-A01342', 'PRD-A-AKS-0021', 'Handsfree Samsung', 3, 18000, 54000, 10000, 0, 24000, 'pcs'),
  ('TRX-A01342', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01342', 'PRD-A-KEL-0168', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01106', '2026-11-10 17:52:54+07:00', 'Lilis Suryani 4', 'Admin', 8617000, 0, 4308500, 4308500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101105', '', '', '', 1340500, NULL, '2026-11-10 17:52:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01106', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 1, 1650000, 1650000, 1400000, 0, 250000, 'pcs'),
  ('TRX-A01106', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 2, 790000, 1580000, 600000, 0, 380000, 'pcs'),
  ('TRX-A01106', 'PRD-A-HP-0044', 'HP OPPO HOT30i 3/64 35099', 2, 1220000, 2440000, 1000000, 0, 440000, 'pcs'),
  ('TRX-A01106', 'PRD-A-AKS-0233', 'Tempered Glass Vivo', 3, 9000, 27000, 5000, 0, 12000, 'pcs'),
  ('TRX-A01106', 'PRD-A-KEL-0027', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A01106', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 1, 2680000, 2680000, 2500000, 0, 180000, 'pcs'),
  ('TRX-A01106', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 2, 75000, 150000, 50000, 0, 50000, 'pcs'),
  ('TRX-A01106', 'PRD-A-AKS-0114', 'Memory Card 16GB', 2, 44000, 88000, 30000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00906', '2026-11-10 17:48:51+07:00', 'Umum', 'Admin', 12211000, 0, 12211000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100905', '', '', '', 777000, NULL, '2026-11-10 17:48:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00906', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 3, 43000, 129000, 35000, 0, 24000, 'pcs'),
  ('TRX-A00906', 'PRD-A-AKS-0055', 'Memory Card 16GB', 2, 66000, 132000, 56000, 0, 20000, 'pcs'),
  ('TRX-A00906', 'PRD-A-KEL-0068', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00906', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A00906', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01902', '2026-11-10 17:30:01+07:00', 'Joko Prasetyo 3', 'Admin', 2592000, 0, 2592000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101901', '', '', '', 227000, NULL, '2026-11-10 17:30:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01902', 'PRD-A-AKS-0193', 'Case Oppo A57', 2, 25000, 50000, 21000, 0, 8000, 'pcs'),
  ('TRX-A01902', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 1, 2510000, 2510000, 2300000, 0, 210000, 'pcs'),
  ('TRX-A01902', 'PRD-A-KEL-0003', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A01902', 'PRD-A-KEL-0099', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01809', '2026-11-10 17:24:04+07:00', 'Rudi Hartono 4', 'Admin', 7762000, 0, 7762000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101808', '', '', '', 1728000, NULL, '2026-11-10 17:24:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01809', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A01809', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 2, 54000, 108000, 47000, 0, 14000, 'pcs'),
  ('TRX-A01809', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 1, 1590000, 1590000, 1500000, 0, 90000, 'pcs'),
  ('TRX-A01809', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 2, 750000, 1500000, 500000, 0, 500000, 'pcs'),
  ('TRX-A01809', 'PRD-A-AKS-0050', 'Case Redmi 9A', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A01809', 'PRD-A-KEL-0089', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01809', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 3, 500000, 1500000, 300000, 0, 600000, 'pcs'),
  ('TRX-A01809', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 2, 33000, 66000, 25000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01281', '2026-11-10 17:20:59+07:00', 'Umum', 'Admin', 1376000, 0, 0, 1376000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101280', '', '', '', 394000, NULL, '2026-11-10 17:20:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01281', 'PRD-A-KEL-0136', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01281', 'PRD-A-AKS-0177', 'Case Samsung A03', 2, 39000, 78000, 34000, 0, 10000, 'pcs'),
  ('TRX-A01281', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01281', 'PRD-A-HP-0231', 'HP REALME A03 4/128 26346', 2, 580000, 1160000, 400000, 0, 360000, 'pcs'),
  ('TRX-A01281', 'PRD-A-AKS-0192', 'Handsfree Oppo', 1, 49000, 49000, 40000, 0, 9000, 'pcs'),
  ('TRX-A01281', 'PRD-A-KEL-0151', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00587', '2026-11-10 17:02:02+07:00', 'Andi Kurnia 5', 'Admin', 6939000, 0, 0, 6939000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100586', '', '', '', 807000, NULL, '2026-11-10 17:02:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00587', 'PRD-A-KEL-0176', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00587', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 1, 2540000, 2540000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A00587', 'PRD-A-KEL-0095', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00587', 'PRD-A-KEL-0189', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00587', 'PRD-A-AKS-0141', 'Batre Oppo A57', 2, 62000, 124000, 50000, 0, 24000, 'pcs'),
  ('TRX-A00587', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 3, 1370000, 4110000, 1200000, 0, 510000, 'pcs'),
  ('TRX-A00587', 'PRD-A-AKS-0134', 'Case Oppo A57', 2, 35000, 70000, 28000, 0, 14000, 'pcs'),
  ('TRX-A00587', 'PRD-A-AKS-0149', 'Case Samsung A03', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00021', '2026-11-10 16:36:57+07:00', 'Umum', 'Admin', 19114000, 0, 19114000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100020', '', '', '', 1440000, NULL, '2026-11-10 16:36:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00021', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 3, 1520000, 4560000, 1300000, 0, 660000, 'pcs'),
  ('TRX-A00021', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A00021', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 2, 1450000, 2900000, 1400000, 0, 100000, 'pcs'),
  ('TRX-A00021', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 3, 1960000, 5880000, 1900000, 0, 180000, 'pcs'),
  ('TRX-A00021', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 2, 26000, 52000, 16000, 0, 20000, 'pcs'),
  ('TRX-A00021', 'PRD-A-AKS-0187', 'Kartu Perdana XL', 1, 16000, 16000, 10000, 0, 6000, 'pcs'),
  ('TRX-A00021', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 1, 3030000, 3030000, 2800000, 0, 230000, 'pcs'),
  ('TRX-A00021', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01525', '2026-11-10 16:12:04+07:00', 'Umum', 'Admin', 13589000, 0, 13589000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101524', '', '', '', 1435500, NULL, '2026-11-10 16:12:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01525', 'PRD-A-KEL-0193', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A01525', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 3, 1560000, 4680000, 1400000, 0, 480000, 'pcs'),
  ('TRX-A01525', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 2, 23000, 46000, 14000, 0, 18000, 'pcs'),
  ('TRX-A01525', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 2, 1010000, 2020000, 800000, 0, 420000, 'pcs'),
  ('TRX-A01525', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 3, 2270000, 6810000, 2100000, 0, 510000, 'pcs'),
  ('TRX-A01525', 'PRD-A-KEL-0039', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01394', '2026-11-10 16:08:39+07:00', 'Umum', 'Admin', 7271000, 0, 7271000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101393', '', '', '', 814000, NULL, '2026-11-10 16:08:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01394', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A01394', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 2, 1110000, 2220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01394', 'PRD-A-KEL-0090', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A01394', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A01394', 'PRD-A-KEL-0184', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00149', '2026-11-10 16:03:14+07:00', 'Fitri Rahmawati 3', 'Admin', 109000, 0, 109000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100148', '', '', '', 52000, NULL, '2026-11-10 16:03:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00149', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A00149', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 3, 25000, 75000, 13000, 0, 36000, 'pcs'),
  ('TRX-A00149', 'PRD-A-KEL-0137', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00319', '2026-11-10 16:02:50+07:00', 'Nur Halimah 5', 'Admin', 5939000, 0, 5939000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100318', '', '', '', 604000, NULL, '2026-11-10 16:02:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00319', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs'),
  ('TRX-A00319', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 1, 57000, 57000, 45000, 0, 12000, 'pcs'),
  ('TRX-A00319', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A00319', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 2, 1050000, 2100000, 900000, 0, 300000, 'pcs'),
  ('TRX-A00319', 'PRD-A-AKS-0239', 'Batre Samsung J1', 2, 43000, 86000, 30000, 0, 26000, 'pcs'),
  ('TRX-A00319', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 2, 51000, 102000, 44000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00844', '2026-11-10 15:36:19+07:00', 'Umum', 'Admin', 2946000, 0, 1473000, 1473000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100843', '', '', '', 631000, NULL, '2026-11-10 15:36:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00844', 'PRD-A-AKS-0195', 'Memory Card 16GB', 1, 70000, 70000, 65000, 0, 5000, 'pcs'),
  ('TRX-A00844', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 3, 480000, 1440000, 400000, 0, 240000, 'pcs'),
  ('TRX-A00844', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 2, 18000, 36000, 8000, 0, 20000, 'pcs'),
  ('TRX-A00844', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A00844', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 2, 30000, 60000, 17000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00642', '2026-11-10 15:36:08+07:00', 'Fajar Nugroho', 'Admin', 72000, 0, 36000, 36000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100641', '', '', '', 34000, NULL, '2026-11-10 15:36:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00642', 'PRD-A-KEL-0034', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A00642', 'PRD-A-AKS-0113', 'Tempered Glass Samsung', 3, 15000, 45000, 7000, 0, 24000, 'pcs'),
  ('TRX-A00642', 'PRD-A-KEL-0109', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01664', '2026-11-10 15:27:04+07:00', 'Umum', 'Admin', 44000, 0, 0, 44000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101663', '', '', '', 18500, NULL, '2026-11-10 15:27:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01664', 'PRD-A-KEL-0166', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01664', 'PRD-A-KEL-0099', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01664', 'PRD-A-AKS-0158', 'Kabel Charger 2m', 1, 24000, 24000, 11000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00367', '2026-11-10 15:26:41+07:00', 'Umum', 'Admin', 8598000, 0, 4299000, 4299000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100366', '', '', '', 1084000, NULL, '2026-11-10 15:26:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00367', 'PRD-A-KEL-0085', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00367', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 1, 2610000, 2610000, 2500000, 0, 110000, 'pcs'),
  ('TRX-A00367', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs'),
  ('TRX-A00367', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00367', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 1, 1310000, 1310000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A00367', 'PRD-A-KEL-0073', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A00367', 'PRD-A-AKS-0027', 'Batre Samsung J1', 3, 51000, 153000, 39000, 0, 36000, 'pcs'),
  ('TRX-A00367', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 2, 500000, 1000000, 300000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01983', '2026-11-10 15:23:43+07:00', 'Budi Santoso 3', 'Admin', 456000, 0, 456000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101982', '', '', '', 65000, NULL, '2026-11-10 15:23:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01983', 'PRD-A-KEL-0111', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01983', 'PRD-A-AKS-0052', 'Memory Card 32GB', 3, 95000, 285000, 89000, 0, 18000, 'pcs'),
  ('TRX-A01983', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 2, 30000, 60000, 18000, 0, 24000, 'pcs'),
  ('TRX-A01983', 'PRD-A-AKS-0134', 'Case Oppo A57', 3, 35000, 105000, 28000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01423', '2026-11-10 15:20:33+07:00', 'Umum', 'Admin', 12804000, 0, 0, 12804000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101422', '', '', '', 1088000, NULL, '2026-11-10 15:20:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01423', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 3, 2600000, 7800000, 2400000, 0, 600000, 'pcs'),
  ('TRX-A01423', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 2, 1320000, 2640000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A01423', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01423', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 3, 780000, 2340000, 700000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00656', '2026-11-10 15:06:36+07:00', 'Agus Wijaya 4', 'Admin', 1704000, 0, 1704000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100655', '', '', '', 459000, NULL, '2026-11-10 15:06:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00656', 'PRD-A-AKS-0076', 'Handsfree Samsung', 3, 58000, 174000, 45000, 0, 39000, 'pcs'),
  ('TRX-A00656', 'PRD-A-KEL-0045', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00656', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 2, 700000, 1400000, 500000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00655', '2026-11-10 15:05:48+07:00', 'Umum', 'Admin', 10111000, 0, 10111000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100654', '', '', '', 990000, NULL, '2026-11-10 15:05:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00655', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 1, 2810000, 2810000, 2700000, 0, 110000, 'pcs'),
  ('TRX-A00655', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 2, 1320000, 2640000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A00655', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs'),
  ('TRX-A00655', 'PRD-A-AKS-0155', 'Handsfree Samsung', 3, 40000, 120000, 31000, 0, 27000, 'pcs'),
  ('TRX-A00655', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 3, 1500000, 4500000, 1300000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01708', '2026-11-10 15:05:43+07:00', 'Dedi Supriadi 4', 'Admin', 270500, 0, 270500, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101707', '', '', '', 34000, NULL, '2026-11-10 15:05:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01708', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01708', 'PRD-A-AKS-0179', 'Memory Card 32GB', 1, 102000, 102000, 88000, 0, 14000, 'pcs'),
  ('TRX-A01708', 'PRD-A-AKS-0063', 'Case Samsung A03', 1, 40000, 40000, 35000, 0, 5000, 'pcs'),
  ('TRX-A01708', 'PRD-A-KEL-0137', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A01708', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 2, 39000, 78000, 35000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01695', '2026-11-10 15:00:05+07:00', 'Budi Santoso 4', 'Admin', 4986000, 0, 4986000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101694', '', '', '', 950000, NULL, '2026-11-10 15:00:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01695', 'PRD-A-AKS-0144', 'Voucher Telkomsel 10GB', 2, 65000, 130000, 60000, 0, 10000, 'pcs'),
  ('TRX-A01695', 'PRD-A-AKS-0041', 'Tempered Glass Vivo', 2, 19000, 38000, 5000, 0, 28000, 'pcs'),
  ('TRX-A01695', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 1, 1100000, 1100000, 900000, 0, 200000, 'pcs'),
  ('TRX-A01695', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A01695', 'PRD-A-KEL-0112', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01695', 'PRD-A-HP-0292', 'HP VIVO C3 4/64 55632', 2, 850000, 1700000, 600000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01951', '2026-11-10 14:57:01+07:00', 'Umum', 'Admin', 23764000, 0, 23764000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101950', '', '', '', 1563000, NULL, '2026-11-10 14:57:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01951', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 2, 2480000, 4960000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A01951', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01951', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A01951', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 2, 1210000, 2420000, 1100000, 0, 220000, 'pcs'),
  ('TRX-A01951', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01951', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 1, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A01951', 'PRD-A-KEL-0099', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01951', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 3, 2880000, 8640000, 2700000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01768', '2026-11-10 14:55:55+07:00', 'Budi Santoso 2', 'Admin', 14668000, 0, 14668000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101767', '', '', '', 1510000, NULL, '2026-11-10 14:55:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01768', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 2, 1110000, 2220000, 900000, 0, 420000, 'pcs'),
  ('TRX-A01768', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 3, 2540000, 7620000, 2300000, 0, 720000, 'pcs'),
  ('TRX-A01768', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs'),
  ('TRX-A01768', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A01768', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01768', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs'),
  ('TRX-A01768', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01626', '2026-11-10 14:53:42+07:00', 'Umum', 'Admin', 12094500, 0, 12094500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101625', '', '', '', 595100, NULL, '2026-11-10 14:53:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01626', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A01626', 'PRD-A-KEL-0076', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A01626', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A01626', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A01626', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 3, 2050000, 6150000, 2000000, 0, 150000, 'pcs'),
  ('TRX-A01626', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00754', '2026-11-10 14:39:25+07:00', 'Umum', 'Admin', 10713000, 0, 0, 10713000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100753', '', '', '', 1009000, NULL, '2026-11-10 14:39:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00754', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 3, 1290000, 3870000, 1200000, 0, 270000, 'pcs'),
  ('TRX-A00754', 'PRD-A-AKS-0088', 'Case Redmi 9A', 1, 43000, 43000, 34000, 0, 9000, 'pcs'),
  ('TRX-A00754', 'PRD-A-AKS-0098', 'Tempered Glass Oppo', 1, 23000, 23000, 11000, 0, 12000, 'pcs'),
  ('TRX-A00754', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 3, 25000, 75000, 17000, 0, 24000, 'pcs'),
  ('TRX-A00754', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 3, 2230000, 6690000, 2000000, 0, 690000, 'pcs'),
  ('TRX-A00754', 'PRD-A-KEL-0189', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00480', '2026-11-10 14:23:17+07:00', 'Umum', 'Admin', 14672000, 0, 14672000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100479', '', '', '', 878000, NULL, '2026-11-10 14:23:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00480', 'PRD-A-KEL-0054', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00480', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 2, 1700000, 3400000, 1600000, 0, 200000, 'pcs'),
  ('TRX-A00480', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 3, 1650000, 4950000, 1500000, 0, 450000, 'pcs'),
  ('TRX-A00480', 'PRD-A-KEL-0057', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00480', 'PRD-A-AKS-0046', 'Case Samsung A03', 2, 38000, 76000, 35000, 0, 6000, 'pcs'),
  ('TRX-A00480', 'PRD-A-HP-0508', 'HP REDMI 9C 4/128 88002', 3, 2070000, 6210000, 2000000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00143', '2026-11-10 14:06:36+07:00', 'Nur Halimah 3', 'Admin', 93000, 0, 93000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100142', '', '', '', 27000, NULL, '2026-11-10 14:06:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00143', 'PRD-A-KEL-0013', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00143', 'PRD-A-KEL-0095', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00143', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 2, 36000, 72000, 26000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00298', '2026-11-10 13:58:08+07:00', 'Intan Permata 2', 'Admin', 4820000, 0, 4820000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100297', '', '', '', 520000, NULL, '2026-11-10 13:58:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00298', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 1, 1520000, 1520000, 1300000, 0, 220000, 'pcs'),
  ('TRX-A00298', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00425', '2026-11-10 13:53:55+07:00', 'Maya Putri 4', 'Admin', 5446000, 0, 5446000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100424', '', '', '', 441000, NULL, '2026-11-10 13:53:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00425', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 1, 2020000, 2020000, 1900000, 0, 120000, 'pcs'),
  ('TRX-A00425', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A00425', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 21000, 0, 14000, 'pcs'),
  ('TRX-A00425', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00425', 'PRD-A-AKS-0074', 'Handsfree Oppo', 1, 49000, 49000, 39000, 0, 10000, 'pcs'),
  ('TRX-A00425', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 3, 24000, 72000, 15000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00783', '2026-11-10 13:33:20+07:00', 'Maya Putri 2', 'Admin', 33000, 0, 33000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100782', '', '', '', 11000, NULL, '2026-11-10 13:33:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00783', 'PRD-A-AKS-0120', 'Batre Oppo A57', 1, 33000, 33000, 22000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01006', '2026-11-10 13:16:51+07:00', 'Umum', 'Admin', 17770000, 0, 17770000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101005', '', '', '', 1136000, NULL, '2026-11-10 13:16:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01006', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 3, 2780000, 8340000, 2600000, 0, 540000, 'pcs'),
  ('TRX-A01006', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 2, 1560000, 3120000, 1400000, 0, 320000, 'pcs'),
  ('TRX-A01006', 'PRD-A-KEL-0164', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01006', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 3, 2090000, 6270000, 2000000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00897', '2026-11-10 12:38:41+07:00', 'Umum', 'Admin', 1660000, 0, 1660000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100896', '', '', '', 229000, NULL, '2026-11-10 12:38:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00897', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 1, 1500000, 1500000, 1300000, 0, 200000, 'pcs'),
  ('TRX-A00897', 'PRD-A-KEL-0060', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00897', 'PRD-A-KEL-0108', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01180', '2026-11-10 12:20:20+07:00', 'Ayu Lestari 2', 'Admin', 16000, 0, 16000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101179', '', '', '', 4000, NULL, '2026-11-10 12:20:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01180', 'PRD-A-KEL-0041', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01468', '2026-11-10 12:10:42+07:00', 'Umum', 'Admin', 6360000, 0, 6360000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101467', '', '', '', 680500, NULL, '2026-11-10 12:10:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01468', 'PRD-A-KEL-0091', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01468', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 2, 1050000, 2100000, 900000, 0, 300000, 'pcs'),
  ('TRX-A01468', 'PRD-A-AKS-0158', 'Kabel Charger 2m', 3, 24000, 72000, 11000, 0, 39000, 'pcs'),
  ('TRX-A01468', 'PRD-A-KEL-0087', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01468', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 2, 25000, 50000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01468', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs'),
  ('TRX-A01468', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 1, 2730000, 2730000, 2500000, 0, 230000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00203', '2026-11-10 12:09:16+07:00', 'Hendra Gunawan 4', 'Admin', 14205500, 0, 0, 14205500, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100202', '', '', '', 796000, NULL, '2026-11-10 12:09:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00203', 'PRD-A-KEL-0106', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A00203', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 3, 39000, 117000, 30000, 0, 27000, 'pcs'),
  ('TRX-A00203', 'PRD-A-KEL-0020', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00203', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs'),
  ('TRX-A00203', 'PRD-A-HP-0002', 'HP REALME A16 2/16 79012', 1, 500000, 500000, 400000, 0, 100000, 'pcs'),
  ('TRX-A00203', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 3, 2580000, 7740000, 2500000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01551', '2026-11-10 11:59:21+07:00', 'Nur Halimah 2', 'Admin', 4306000, 0, 2153000, 2153000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101550', '', '', '', 184500, NULL, '2026-11-10 11:59:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01551', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A01551', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 2, 65000, 130000, 53000, 0, 24000, 'pcs'),
  ('TRX-A01551', 'PRD-A-KEL-0031', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01551', 'PRD-A-KEL-0075', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01241', '2026-11-10 11:58:41+07:00', 'Yusuf Maulana 3', 'Admin', 276000, 0, 276000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101240', '', '', '', 18000, NULL, '2026-11-10 11:58:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01241', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00672', '2026-11-10 11:58:30+07:00', 'Umum', 'Admin', 17044000, 0, 8522000, 8522000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100671', '', '', '', 1282000, NULL, '2026-11-10 11:58:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00672', 'PRD-A-KEL-0143', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00672', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 2, 2950000, 5900000, 2800000, 0, 300000, 'pcs'),
  ('TRX-A00672', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 2, 1150000, 2300000, 900000, 0, 500000, 'pcs'),
  ('TRX-A00672', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00672', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 1, 1660000, 1660000, 1500000, 0, 160000, 'pcs'),
  ('TRX-A00672', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 2, 2600000, 5200000, 2500000, 0, 200000, 'pcs'),
  ('TRX-A00672', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 1, 1910000, 1910000, 1800000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00493', '2026-11-10 11:58:12+07:00', 'Dedi Supriadi 3', 'Admin', 5122000, 0, 5122000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100492', '', '', '', 520500, NULL, '2026-11-10 11:58:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00493', 'PRD-A-KEL-0156', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A00493', 'PRD-A-HP-0229', 'HP REDMI Y55S 3/32 33051', 2, 1520000, 3040000, 1400000, 0, 240000, 'pcs'),
  ('TRX-A00493', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 1, 670000, 670000, 600000, 0, 70000, 'pcs'),
  ('TRX-A00493', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 1, 1410000, 1410000, 1200000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00839', '2026-11-10 11:29:44+07:00', 'Umum', 'Admin', 13872000, 0, 13872000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100838', '', '', '', 1050000, NULL, '2026-11-10 11:29:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00839', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 2, 2700000, 5400000, 2500000, 0, 400000, 'pcs'),
  ('TRX-A00839', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 3, 1860000, 5580000, 1700000, 0, 480000, 'pcs'),
  ('TRX-A00839', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs'),
  ('TRX-A00839', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 1, 2540000, 2540000, 2400000, 0, 140000, 'pcs'),
  ('TRX-A00839', 'PRD-A-AKS-0082', 'Case Redmi 9A', 2, 26000, 52000, 23000, 0, 6000, 'pcs'),
  ('TRX-A00839', 'PRD-A-KEL-0184', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00809', '2026-11-10 11:28:49+07:00', 'Umum', 'Admin', 8460000, 0, 8460000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100808', '', '', '', 660000, NULL, '2026-11-10 11:28:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00809', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 3, 1680000, 5040000, 1600000, 0, 240000, 'pcs'),
  ('TRX-A00809', 'PRD-A-HP-0423', 'HP INFINIX Y16 2/16 64863', 3, 1140000, 3420000, 1000000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00094', '2026-11-10 11:12:07+07:00', 'Yusuf Maulana 5', 'Admin', 6990000, 0, 6990000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100093', '', '', '', 690000, NULL, '2026-11-10 11:12:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00094', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01414', '2026-11-10 11:02:48+07:00', 'Andi Kurnia 3', 'Admin', 4427000, 0, 4427000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101413', '', '', '', 409000, NULL, '2026-11-10 11:02:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01414', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs'),
  ('TRX-A01414', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 3, 9000, 27000, 6000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01470', '2026-11-10 11:01:38+07:00', 'Umum', 'Admin', 2600000, 0, 2600000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101469', '', '', '', 100000, NULL, '2026-11-10 11:01:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01470', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 1, 2600000, 2600000, 2500000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01221', '2026-11-10 10:48:29+07:00', 'Umum', 'Admin', 23566000, 0, 23566000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101220', '', '', '', 1694000, NULL, '2026-11-10 10:48:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01221', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 3, 2590000, 7770000, 2500000, 0, 270000, 'pcs'),
  ('TRX-A01221', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 3, 1520000, 4560000, 1400000, 0, 360000, 'pcs'),
  ('TRX-A01221', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 1, 2000000, 2000000, 1800000, 0, 200000, 'pcs'),
  ('TRX-A01221', 'PRD-A-AKS-0137', 'Tempered Glass Samsung', 2, 18000, 36000, 10000, 0, 16000, 'pcs'),
  ('TRX-A01221', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 1, 960000, 960000, 800000, 0, 160000, 'pcs'),
  ('TRX-A01221', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 3, 1560000, 4680000, 1400000, 0, 480000, 'pcs'),
  ('TRX-A01221', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs'),
  ('TRX-A01221', 'PRD-A-AKS-0038', 'Case Vivo Y20', 2, 40000, 80000, 26000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00777', '2026-11-10 10:39:54+07:00', 'Umum', 'Admin', 16965500, 0, 16965500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100776', '', '', '', 1165100, NULL, '2026-11-10 10:39:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00777', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 1, 39000, 39000, 30000, 0, 9000, 'pcs'),
  ('TRX-A00777', 'PRD-A-KEL-0083', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00777', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 2, 820000, 1640000, 600000, 0, 440000, 'pcs'),
  ('TRX-A00777', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 2, 2290000, 4580000, 2200000, 0, 180000, 'pcs'),
  ('TRX-A00777', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 3, 2350000, 7050000, 2300000, 0, 150000, 'pcs'),
  ('TRX-A00777', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs'),
  ('TRX-A00777', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 2, 1780000, 3560000, 1600000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00591', '2026-11-10 10:39:26+07:00', 'Rina Marlina 5', 'Admin', 2875000, 0, 2875000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100590', '', '', '', 448000, NULL, '2026-11-10 10:39:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00591', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 2, 1420000, 2840000, 1200000, 0, 440000, 'pcs'),
  ('TRX-A00591', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 27000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01382', '2026-11-10 10:30:35+07:00', 'Umum', 'Admin', 7917000, 0, 7917000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101381', '', '', '', 672000, NULL, '2026-11-10 10:30:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01382', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 3, 29000, 87000, 15000, 0, 42000, 'pcs'),
  ('TRX-A01382', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 3, 2610000, 7830000, 2400000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01671', '2026-11-10 10:10:03+07:00', 'Lilis Suryani 3', 'Admin', 6578000, 0, 6578000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101670', '', '', '', 661500, NULL, '2026-11-10 10:10:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01671', 'PRD-A-KEL-0143', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01671', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01671', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 2, 28000, 56000, 19000, 0, 18000, 'pcs'),
  ('TRX-A01671', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs'),
  ('TRX-A01671', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 1, 2510000, 2510000, 2300000, 0, 210000, 'pcs'),
  ('TRX-A01671', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 1, 2160000, 2160000, 2000000, 0, 160000, 'pcs'),
  ('TRX-A01671', 'PRD-A-KEL-0119', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01671', 'PRD-A-KEL-0185', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01196', '2026-11-10 09:56:53+07:00', 'Yusuf Maulana 4', 'Admin', 63000, 0, 31500, 31500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101195', '', '', '', 13500, NULL, '2026-11-10 09:56:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01196', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01196', 'PRD-A-KEL-0102', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01069', '2026-11-10 09:52:05+07:00', 'Umum', 'Admin', 10090000, 0, 10090000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101068', '', '', '', 1028000, NULL, '2026-11-10 09:52:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01069', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A01069', 'PRD-A-AKS-0073', 'Memory Card 64GB', 2, 35000, 70000, 31000, 0, 8000, 'pcs'),
  ('TRX-A01069', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A01069', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 3, 2350000, 7050000, 2100000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00504', '2026-11-10 09:44:18+07:00', 'Umum', 'Admin', 6004000, 0, 6004000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100503', '', '', '', 688000, NULL, '2026-11-10 09:44:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00504', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 3, 600000, 1800000, 500000, 0, 300000, 'pcs'),
  ('TRX-A00504', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00504', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 2, 2090000, 4180000, 1900000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01303', '2026-11-10 09:42:04+07:00', 'Umum', 'Admin', 43000, 0, 43000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101302', '', '', '', 13000, NULL, '2026-11-10 09:42:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01303', 'PRD-A-AKS-0239', 'Batre Samsung J1', 1, 43000, 43000, 30000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01094', '2026-11-10 09:19:39+07:00', 'Fitri Rahmawati 5', 'Admin', 11426000, 0, 11426000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101093', '', '', '', 1056000, NULL, '2026-11-10 09:19:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01094', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 1, 1520000, 1520000, 1400000, 0, 120000, 'pcs'),
  ('TRX-A01094', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 1, 55000, 55000, 50000, 0, 5000, 'pcs'),
  ('TRX-A01094', 'PRD-A-HP-0400', 'HP SAMSUNG 5A 2/32 51721', 3, 2320000, 6960000, 2100000, 0, 660000, 'pcs'),
  ('TRX-A01094', 'PRD-A-AKS-0045', 'Memory Card 16GB', 2, 58000, 116000, 53000, 0, 10000, 'pcs'),
  ('TRX-A01094', 'PRD-A-AKS-0186', 'Case Redmi 9A', 1, 25000, 25000, 14000, 0, 11000, 'pcs'),
  ('TRX-A01094', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs'),
  ('TRX-A01094', 'PRD-A-HP-0145', 'HP ITEL C3 3/64 46957', 1, 660000, 660000, 500000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00089', '2026-11-10 09:08:11+07:00', 'Fajar Nugroho 5', 'Admin', 10284000, 0, 10284000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100088', '', '', '', 904000, NULL, '2026-11-10 09:08:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00089', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00089', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 2, 1540000, 3080000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A00089', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 3, 64000, 192000, 51000, 0, 39000, 'pcs'),
  ('TRX-A00089', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A00089', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 1, 42000, 42000, 27000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00432', '2026-11-10 08:01:49+07:00', 'Fajar Nugroho 3', 'Admin', 5618000, 0, 2809000, 2809000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100431', '', '', '', 503000, NULL, '2026-11-10 08:01:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00432', 'PRD-A-AKS-0045', 'Memory Card 16GB', 1, 58000, 58000, 53000, 0, 5000, 'pcs'),
  ('TRX-A00432', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A00432', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00432', 'PRD-A-KEL-0039', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00432', 'PRD-A-AKS-0064', 'Case Redmi 9A', 3, 38000, 114000, 25000, 0, 39000, 'pcs'),
  ('TRX-A00432', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 3, 780000, 2340000, 700000, 0, 240000, 'pcs'),
  ('TRX-A00432', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 2, 45000, 90000, 33000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00091', '2026-11-10 08:00:33+07:00', 'Intan Permata', 'Admin', 1650000, 0, 0, 1650000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100090', '', '', '', 150000, NULL, '2026-11-10 08:00:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00091', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00666', '2026-11-09 20:58:31+07:00', 'Dewi Lestari 3', 'Admin', 10165000, 0, 10165000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100665', '', '', '', 1334500, NULL, '2026-11-09 20:58:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00666', 'PRD-A-AKS-0235', 'Handsfree Xiaomi', 3, 32000, 96000, 22000, 0, 30000, 'pcs'),
  ('TRX-A00666', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 2, 1210000, 2420000, 1000000, 0, 420000, 'pcs'),
  ('TRX-A00666', 'PRD-A-AKS-0214', 'Memory Card 64GB', 3, 100000, 300000, 86000, 0, 42000, 'pcs'),
  ('TRX-A00666', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 2, 2780000, 5560000, 2600000, 0, 360000, 'pcs'),
  ('TRX-A00666', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 2, 830000, 1660000, 600000, 0, 460000, 'pcs'),
  ('TRX-A00666', 'PRD-A-KEL-0099', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00666', 'PRD-A-AKS-0156', 'Handsfree Oppo', 3, 39000, 117000, 33000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00452', '2026-11-09 20:48:18+07:00', 'Dewi Lestari 4', 'Admin', 282000, 0, 282000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100451', '', '', '', 66000, NULL, '2026-11-09 20:48:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00452', 'PRD-A-KEL-0151', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00452', 'PRD-A-AKS-0174', 'Case Redmi 9A', 1, 41000, 41000, 26000, 0, 15000, 'pcs'),
  ('TRX-A00452', 'PRD-A-KEL-0098', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00452', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 3, 45000, 135000, 33000, 0, 36000, 'pcs'),
  ('TRX-A00452', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01055', '2026-11-09 20:17:51+07:00', 'Umum', 'Admin', 4010000, 0, 4010000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101054', '', '', '', 651000, NULL, '2026-11-09 20:17:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01055', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 1, 34000, 34000, 20000, 0, 14000, 'pcs'),
  ('TRX-A01055', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 3, 1310000, 3930000, 1100000, 0, 630000, 'pcs'),
  ('TRX-A01055', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01055', 'PRD-A-KEL-0032', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01570', '2026-11-09 20:17:30+07:00', 'Umum', 'Admin', 1410000, 0, 1410000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101569', '', '', '', 338000, NULL, '2026-11-09 20:17:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01570', 'PRD-A-KEL-0093', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01570', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 2, 660000, 1320000, 500000, 0, 320000, 'pcs'),
  ('TRX-A01570', 'PRD-A-KEL-0092', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01572', '2026-11-09 20:11:55+07:00', 'Eko Saputra 5', 'Admin', 8640000, 0, 8640000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101571', '', '', '', 740000, NULL, '2026-11-09 20:11:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01572', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 2, 1770000, 3540000, 1700000, 0, 140000, 'pcs'),
  ('TRX-A01572', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 3, 1700000, 5100000, 1500000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01998', '2026-11-09 19:40:47+07:00', 'Umum', 'Admin', 1931000, 0, 965500, 965500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101997', '', '', '', 447000, NULL, '2026-11-09 19:40:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01998', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 2, 910000, 1820000, 700000, 0, 420000, 'pcs'),
  ('TRX-A01998', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 3, 25000, 75000, 19000, 0, 18000, 'pcs'),
  ('TRX-A01998', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01866', '2026-11-09 19:17:03+07:00', 'Umum', 'Admin', 6790000, 0, 6790000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101865', '', '', '', 675000, NULL, '2026-11-09 19:17:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01866', 'PRD-A-KEL-0190', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01866', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs'),
  ('TRX-A01866', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 3, 25000, 75000, 19000, 0, 18000, 'pcs'),
  ('TRX-A01866', 'PRD-A-KEL-0099', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01866', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 1, 75000, 75000, 50000, 0, 25000, 'pcs'),
  ('TRX-A01866', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 2, 2590000, 5180000, 2400000, 0, 380000, 'pcs'),
  ('TRX-A01866', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 1, 1110000, 1110000, 900000, 0, 210000, 'pcs'),
  ('TRX-A01866', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 3, 14000, 42000, 9000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01454', '2026-11-09 19:15:59+07:00', 'Fitri Rahmawati', 'Admin', 36000, 0, 36000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101453', '', '', '', 9000, NULL, '2026-11-09 19:15:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01454', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00971', '2026-11-09 19:06:51+07:00', 'Umum', 'Admin', 7905000, 0, 7905000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100970', '', '', '', 504000, NULL, '2026-11-09 19:06:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00971', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 3, 75000, 225000, 50000, 0, 75000, 'pcs'),
  ('TRX-A00971', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A00971', 'PRD-A-KEL-0143', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01227', '2026-11-09 19:06:24+07:00', 'Agus Wijaya 4', 'Admin', 2932000, 0, 0, 2932000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101226', '', '', '', 351000, NULL, '2026-11-09 19:06:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01227', 'PRD-A-KEL-0013', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01227', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 1, 1650000, 1650000, 1400000, 0, 250000, 'pcs'),
  ('TRX-A01227', 'PRD-A-KEL-0068', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01227', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 1, 1050000, 1050000, 1000000, 0, 50000, 'pcs'),
  ('TRX-A01227', 'PRD-A-AKS-0076', 'Handsfree Samsung', 3, 58000, 174000, 45000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00505', '2026-11-09 19:05:15+07:00', 'Rina Marlina 5', 'Admin', 1283000, 0, 1283000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100504', '', '', '', 481400, NULL, '2026-11-09 19:05:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00505', 'PRD-A-HP-0245', 'HP NOKIA C11 4/64 32903', 2, 640000, 1280000, 400000, 0, 480000, 'pcs'),
  ('TRX-A00505', 'PRD-A-KEL-0083', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01623', '2026-11-09 19:02:24+07:00', 'Umum', 'Admin', 1000, 0, 1000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101622', '', '', '', 500, NULL, '2026-11-09 19:02:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01623', 'PRD-A-KEL-0154', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00123', '2026-11-09 18:51:53+07:00', 'Budi Santoso 3', 'Admin', 41000, 0, 41000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100122', '', '', '', 7000, NULL, '2026-11-09 18:51:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00123', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 1, 41000, 41000, 34000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00258', '2026-11-09 18:50:05+07:00', 'Umum', 'Admin', 11878000, 0, 11878000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100257', '', '', '', 766500, NULL, '2026-11-09 18:50:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00258', 'PRD-A-KEL-0168', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00258', 'PRD-A-KEL-0044', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00258', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A00258', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 3, 2500000, 7500000, 2300000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01619', '2026-11-09 18:47:46+07:00', 'Dewi Lestari 4', 'Admin', 20325500, 0, 20325500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101618', '', '', '', 1377000, NULL, '2026-11-09 18:47:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01619', 'PRD-A-KEL-0193', 'Snack wafer', 2, 10000, 20000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01619', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 3, 2370000, 7110000, 2300000, 0, 210000, 'pcs'),
  ('TRX-A01619', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 3, 2550000, 7650000, 2300000, 0, 750000, 'pcs'),
  ('TRX-A01619', 'PRD-A-KEL-0168', 'Teh celup', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01619', 'PRD-A-AKS-0027', 'Batre Samsung J1', 3, 51000, 153000, 39000, 0, 36000, 'pcs'),
  ('TRX-A01619', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs'),
  ('TRX-A01619', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 1, 1050000, 1050000, 800000, 0, 250000, 'pcs'),
  ('TRX-A01619', 'PRD-A-KEL-0079', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01186', '2026-11-09 18:27:29+07:00', 'Umum', 'Admin', 6144000, 0, 6144000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101185', '', '', '', 498000, NULL, '2026-11-09 18:27:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01186', 'PRD-A-KEL-0169', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01186', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 1, 27000, 27000, 18000, 0, 9000, 'pcs'),
  ('TRX-A01186', 'PRD-A-AKS-0160', 'Memory Card 32GB', 3, 40000, 120000, 34000, 0, 18000, 'pcs'),
  ('TRX-A01186', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs'),
  ('TRX-A01186', 'PRD-A-KEL-0058', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01186', 'PRD-A-AKS-0239', 'Batre Samsung J1', 3, 43000, 129000, 30000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01552', '2026-11-09 18:23:32+07:00', 'Maya Putri 3', 'Admin', 240000, 0, 240000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101551', '', '', '', 24000, NULL, '2026-11-09 18:23:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01552', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01552', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00193', '2026-11-09 18:13:08+07:00', 'Umum', 'Admin', 6800000, 0, 0, 6800000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100192', '', '', '', 586000, NULL, '2026-11-09 18:13:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00193', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A00193', 'PRD-A-HP-0070', 'HP SAMSUNG 9A 4/128 90887', 2, 2070000, 4140000, 1900000, 0, 340000, 'pcs'),
  ('TRX-A00193', 'PRD-A-KEL-0092', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00217', '2026-11-09 18:02:22+07:00', 'Andi Kurnia 5', 'Admin', 207000, 0, 103500, 103500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100216', '', '', '', 33000, NULL, '2026-11-09 18:02:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00217', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 3, 69000, 207000, 58000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00243', '2026-11-09 17:53:56+07:00', 'Andi Kurnia 4', 'Admin', 3389500, 0, 3389500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100242', '', '', '', 570000, NULL, '2026-11-09 17:53:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00243', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A00243', 'PRD-A-KEL-0044', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00243', 'PRD-A-KEL-0168', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00243', 'PRD-A-KEL-0106', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00243', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 3, 480000, 1440000, 400000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01126', '2026-11-09 17:40:36+07:00', 'Siti Aisyah 2', 'Admin', 8075000, 0, 8075000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101125', '', '', '', 1081000, NULL, '2026-11-09 17:40:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01126', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A01126', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A01126', 'PRD-A-HP-0030', 'HP NOKIA 9A 4/128 49838', 2, 700000, 1400000, 500000, 0, 400000, 'pcs'),
  ('TRX-A01126', 'PRD-A-AKS-0168', 'Memory Card 32GB', 2, 40000, 80000, 32000, 0, 16000, 'pcs'),
  ('TRX-A01126', 'PRD-A-KEL-0068', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01126', 'PRD-A-AKS-0052', 'Memory Card 32GB', 1, 95000, 95000, 89000, 0, 6000, 'pcs'),
  ('TRX-A01126', 'PRD-A-KEL-0161', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00457', '2026-11-09 17:04:00+07:00', 'Umum', 'Admin', 9262000, 0, 4631000, 4631000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100456', '', '', '', 1520000, NULL, '2026-11-09 17:04:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00457', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 3, 820000, 2460000, 600000, 0, 660000, 'pcs'),
  ('TRX-A00457', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 1, 2590000, 2590000, 2400000, 0, 190000, 'pcs'),
  ('TRX-A00457', 'PRD-A-KEL-0021', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00457', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00457', 'PRD-A-AKS-0154', 'Memory Card 16GB', 2, 101000, 202000, 86000, 0, 30000, 'pcs'),
  ('TRX-A00457', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 3, 1310000, 3930000, 1100000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01193', '2026-11-09 17:01:25+07:00', 'Umum', 'Admin', 273000, 0, 273000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101192', '', '', '', 54000, NULL, '2026-11-09 17:01:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01193', 'PRD-A-AKS-0165', 'Case Vivo Y20', 3, 43000, 129000, 31000, 0, 36000, 'pcs'),
  ('TRX-A01193', 'PRD-A-AKS-0236', 'Memory Card 64GB', 2, 72000, 144000, 63000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01362', '2026-11-09 16:52:01+07:00', 'Joko Prasetyo', 'Admin', 253000, 0, 126500, 126500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101361', '', '', '', 78000, NULL, '2026-11-09 16:52:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01362', 'PRD-A-KEL-0062', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01362', 'PRD-A-KEL-0015', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01362', 'PRD-A-KEL-0057', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01362', 'PRD-A-KEL-0022', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01362', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 3, 35000, 105000, 21000, 0, 42000, 'pcs'),
  ('TRX-A01362', 'PRD-A-AKS-0156', 'Handsfree Oppo', 1, 39000, 39000, 33000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00606', '2026-11-09 16:51:43+07:00', 'Ayu Lestari 2', 'Admin', 14703000, 0, 14703000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100605', '', '', '', 986000, NULL, '2026-11-09 16:51:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00606', 'PRD-A-AKS-0166', 'Case Redmi 9A', 2, 25000, 50000, 10000, 0, 30000, 'pcs'),
  ('TRX-A00606', 'PRD-A-AKS-0134', 'Case Oppo A57', 3, 35000, 105000, 28000, 0, 21000, 'pcs'),
  ('TRX-A00606', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 2, 2310000, 4620000, 2100000, 0, 420000, 'pcs'),
  ('TRX-A00606', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 1, 2100000, 2100000, 1900000, 0, 200000, 'pcs'),
  ('TRX-A00606', 'PRD-A-AKS-0043', 'Case Oppo A57', 1, 28000, 28000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00606', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 3, 2600000, 7800000, 2500000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00623', '2026-11-09 16:51:23+07:00', 'Hendra Gunawan 5', 'Admin', 12511000, 0, 12511000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100622', '', '', '', 698000, NULL, '2026-11-09 16:51:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00623', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00623', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 3, 2810000, 8430000, 2700000, 0, 330000, 'pcs'),
  ('TRX-A00623', 'PRD-A-KEL-0044', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00623', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A00623', 'PRD-A-KEL-0061', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00623', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 1, 1260000, 1260000, 1100000, 0, 160000, 'pcs'),
  ('TRX-A00623', 'PRD-A-KEL-0013', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00760', '2026-11-09 16:50:44+07:00', 'Yusuf Maulana 5', 'Admin', 6159000, 0, 6159000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100759', '', '', '', 636000, NULL, '2026-11-09 16:50:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00760', 'PRD-A-AKS-0199', 'Handsfree Xiaomi', 3, 38000, 114000, 29000, 0, 27000, 'pcs'),
  ('TRX-A00760', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 3, 2000000, 6000000, 1800000, 0, 600000, 'pcs'),
  ('TRX-A00760', 'PRD-A-KEL-0065', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01043', '2026-11-09 16:45:03+07:00', 'Dewi Lestari', 'Admin', 11112000, 0, 11112000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101042', '', '', '', 1376000, NULL, '2026-11-09 16:45:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01043', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 1, 2600000, 2600000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A01043', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 1, 2510000, 2510000, 2300000, 0, 210000, 'pcs'),
  ('TRX-A01043', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 2, 700000, 1400000, 500000, 0, 400000, 'pcs'),
  ('TRX-A01043', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 3, 520000, 1560000, 400000, 0, 360000, 'pcs'),
  ('TRX-A01043', 'PRD-A-KEL-0145', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01043', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01043', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 1, 2880000, 2880000, 2700000, 0, 180000, 'pcs'),
  ('TRX-A01043', 'PRD-A-KEL-0020', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00228', '2026-11-09 16:02:15+07:00', 'Siti Aisyah', 'Admin', 7366000, 0, 3683000, 3683000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100227', '', '', '', 387000, NULL, '2026-11-09 16:02:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00228', 'PRD-A-KEL-0068', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00228', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 3, 2420000, 7260000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A00228', 'PRD-A-AKS-0165', 'Case Vivo Y20', 2, 43000, 86000, 31000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00019', '2026-11-09 16:00:28+07:00', 'Siti Aisyah 2', 'Admin', 3198000, 0, 3198000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100018', '', '', '', 293000, NULL, '2026-11-09 16:00:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00019', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 2, 27000, 54000, 13000, 0, 28000, 'pcs'),
  ('TRX-A00019', 'PRD-A-HP-0516', 'HP OPPO Y91C 2/16 44748', 1, 3040000, 3040000, 2800000, 0, 240000, 'pcs'),
  ('TRX-A00019', 'PRD-A-KEL-0154', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00019', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 3, 34000, 102000, 26000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00789', '2026-11-09 15:30:43+07:00', 'Umum', 'Admin', 11721000, 0, 5860500, 5860500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100788', '', '', '', 1010000, NULL, '2026-11-09 15:30:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00789', 'PRD-A-KEL-0095', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00789', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 2, 1570000, 3140000, 1500000, 0, 140000, 'pcs'),
  ('TRX-A00789', 'PRD-A-KEL-0054', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00789', 'PRD-A-HP-0002', 'HP REALME A16 2/16 79012', 3, 500000, 1500000, 400000, 0, 300000, 'pcs'),
  ('TRX-A00789', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 2, 1540000, 3080000, 1400000, 0, 280000, 'pcs'),
  ('TRX-A00789', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 3, 1290000, 3870000, 1200000, 0, 270000, 'pcs'),
  ('TRX-A00789', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00789', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 1, 33000, 33000, 27000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01498', '2026-11-09 15:24:13+07:00', 'Dewi Lestari', 'Admin', 13460000, 0, 0, 13460000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101497', '', '', '', 1392000, NULL, '2026-11-09 15:24:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01498', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01498', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 3, 2540000, 7620000, 2300000, 0, 720000, 'pcs'),
  ('TRX-A01498', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 3, 1650000, 4950000, 1500000, 0, 450000, 'pcs'),
  ('TRX-A01498', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 3, 41000, 123000, 30000, 0, 33000, 'pcs'),
  ('TRX-A01498', 'PRD-A-KEL-0013', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01498', 'PRD-A-AKS-0088', 'Case Redmi 9A', 1, 43000, 43000, 34000, 0, 9000, 'pcs'),
  ('TRX-A01498', 'PRD-A-HP-0391', 'HP INFINIX A03 3/32 13495', 1, 670000, 670000, 500000, 0, 170000, 'pcs'),
  ('TRX-A01498', 'PRD-A-KEL-0017', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01798', '2026-11-09 15:21:43+07:00', 'Hendra Gunawan 2', 'Admin', 12929000, 0, 12929000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101797', '', '', '', 739000, NULL, '2026-11-09 15:21:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01798', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 2, 22000, 44000, 15000, 0, 14000, 'pcs'),
  ('TRX-A01798', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01798', 'PRD-A-KEL-0131', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01798', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A01798', 'PRD-A-KEL-0180', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01798', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 3, 780000, 2340000, 700000, 0, 240000, 'pcs'),
  ('TRX-A01798', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 2, 1570000, 3140000, 1500000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00538', '2026-11-09 15:21:25+07:00', 'Dedi Supriadi 4', 'Admin', 1272000, 0, 1272000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100537', '', '', '', 264000, NULL, '2026-11-09 15:21:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00538', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 2, 630000, 1260000, 500000, 0, 260000, 'pcs'),
  ('TRX-A00538', 'PRD-A-KEL-0124', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00104', '2026-11-09 15:20:11+07:00', 'Umum', 'Admin', 14788000, 0, 14788000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100103', '', '', '', 772000, NULL, '2026-11-09 15:20:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00104', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A00104', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 1, 2930000, 2930000, 2700000, 0, 230000, 'pcs'),
  ('TRX-A00104', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A00104', 'PRD-A-AKS-0214', 'Memory Card 64GB', 1, 100000, 100000, 86000, 0, 14000, 'pcs'),
  ('TRX-A00104', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 2, 24000, 48000, 15000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00405', '2026-11-09 15:16:38+07:00', 'Eko Saputra 2', 'Admin', 16676000, 0, 16676000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100404', '', '', '', 1114500, NULL, '2026-11-09 15:16:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00405', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 1, 1800000, 1800000, 1600000, 0, 200000, 'pcs'),
  ('TRX-A00405', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 2, 42000, 84000, 27000, 0, 30000, 'pcs'),
  ('TRX-A00405', 'PRD-A-KEL-0008', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00405', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 1, 1510000, 1510000, 1300000, 0, 210000, 'pcs'),
  ('TRX-A00405', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs'),
  ('TRX-A00405', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;
