-- ============================================================================
-- TEST BERAT TOKORAFI — Dataset A (1.000 produk + 2.000 transaksi)
-- File: A-03-transaksi-03.sql  (bagian 3 dari 7 langkah ini — jalankan berurutan)
-- Isi: transaksi: 318, transaksi_detail: 1468
-- Transaksi 28 hari terakhir + detail (induk & detail satu unit).
-- Semua INSERT memakai ON CONFLICT DO NOTHING — aman dijalankan 2x dan
-- tidak bentrok dengan seed bawaan tokorafi (TES Kopi, TRX-8250237222,
-- CBG-UTAMA, PLG-UMUM). Dibuat oleh gen-tokorafi.js (deterministik).
-- ============================================================================

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00118', '2026-11-18 18:14:03+07:00', 'Fajar Nugroho 3', 'Admin', 10134000, 0, 10134000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100117', '', '', '', 1151000, NULL, '2026-11-18 18:14:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00118', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00118', 'PRD-A-AKS-0082', 'Case Redmi 9A', 3, 26000, 78000, 23000, 0, 9000, 'pcs'),
  ('TRX-A00118', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs'),
  ('TRX-A00118', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 3, 1670000, 5010000, 1500000, 0, 510000, 'pcs'),
  ('TRX-A00118', 'PRD-A-KEL-0163', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A00118', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A00118', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs'),
  ('TRX-A00118', 'PRD-A-AKS-0184', 'Kabel Charger 2m', 2, 45000, 90000, 32000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01434', '2026-11-18 17:39:16+07:00', 'Sri Wahyuni 4', 'Admin', 7985000, 0, 7985000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101433', '', '', '', 525000, NULL, '2026-11-18 17:39:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01434', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs'),
  ('TRX-A01434', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 2, 55000, 110000, 48000, 0, 14000, 'pcs'),
  ('TRX-A01434', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 1, 1330000, 1330000, 1200000, 0, 130000, 'pcs'),
  ('TRX-A01434', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 2, 1600000, 3200000, 1500000, 0, 200000, 'pcs'),
  ('TRX-A01434', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A01434', 'PRD-A-AKS-0091', 'Case Oppo A57', 2, 22000, 44000, 11000, 0, 22000, 'pcs'),
  ('TRX-A01434', 'PRD-A-KEL-0180', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01862', '2026-11-18 17:38:02+07:00', 'Umum', 'Admin', 3628000, 0, 1814000, 1814000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101861', '', '', '', 390000, NULL, '2026-11-18 17:38:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01862', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 1, 1760000, 1760000, 1700000, 0, 60000, 'pcs'),
  ('TRX-A01862', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 2, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A01862', 'PRD-A-KEL-0171', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01862', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 1, 1210000, 1210000, 1100000, 0, 110000, 'pcs'),
  ('TRX-A01862', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A01862', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 1, 590000, 590000, 400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01023', '2026-11-18 17:20:39+07:00', 'Umum', 'Admin', 96000, 0, 96000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101022', '', '', '', 15000, NULL, '2026-11-18 17:20:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01023', 'PRD-A-KEL-0110', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01023', 'PRD-A-AKS-0063', 'Case Samsung A03', 2, 40000, 80000, 35000, 0, 10000, 'pcs'),
  ('TRX-A01023', 'PRD-A-KEL-0088', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00124', '2026-11-18 17:03:00+07:00', 'Rudi Hartono 5', 'Admin', 10739000, 0, 10739000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100123', '', '', '', 865000, NULL, '2026-11-18 17:03:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00124', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 3, 24000, 72000, 15000, 0, 27000, 'pcs'),
  ('TRX-A00124', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 1, 1540000, 1540000, 1400000, 0, 140000, 'pcs'),
  ('TRX-A00124', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 1, 33000, 33000, 22000, 0, 11000, 'pcs'),
  ('TRX-A00124', 'PRD-A-KEL-0012', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00124', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00124', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 1, 1310000, 1310000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A00124', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 3, 2540000, 7620000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A00124', 'PRD-A-AKS-0069', 'Handsfree Vivo', 3, 28000, 84000, 21000, 0, 21000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00968', '2026-11-18 16:54:58+07:00', 'Umum', 'Admin', 6625000, 0, 0, 6625000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100967', '', '', '', 886000, NULL, '2026-11-18 16:54:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00968', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 3, 25000, 75000, 13000, 0, 36000, 'pcs'),
  ('TRX-A00968', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 2, 1880000, 3760000, 1800000, 0, 160000, 'pcs'),
  ('TRX-A00968', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 3, 930000, 2790000, 700000, 0, 690000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00787', '2026-11-18 16:54:21+07:00', 'Siti Aisyah 2', 'Admin', 7428000, 0, 7428000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100786', '', '', '', 530000, NULL, '2026-11-18 16:54:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00787', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 2, 1370000, 2740000, 1200000, 0, 340000, 'pcs'),
  ('TRX-A00787', 'PRD-A-AKS-0163', 'Kartu Perdana XL', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A00787', 'PRD-A-AKS-0027', 'Batre Samsung J1', 3, 51000, 153000, 39000, 0, 36000, 'pcs'),
  ('TRX-A00787', 'PRD-A-KEL-0192', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00787', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 2, 2150000, 4300000, 2100000, 0, 100000, 'pcs'),
  ('TRX-A00787', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 3, 43000, 129000, 35000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00941', '2026-11-18 16:51:36+07:00', 'Umum', 'Admin', 4003000, 0, 4003000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100940', '', '', '', 313000, NULL, '2026-11-18 16:51:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00941', 'PRD-A-HP-0483', 'HP REALME Y20 2/16 63302', 1, 1690000, 1690000, 1600000, 0, 90000, 'pcs'),
  ('TRX-A00941', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 3, 41000, 123000, 30000, 0, 33000, 'pcs'),
  ('TRX-A00941', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00064', '2026-11-18 16:50:09+07:00', 'Sri Wahyuni 2', 'Admin', 6129000, 0, 6129000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100063', '', '', '', 446000, NULL, '2026-11-18 16:50:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00064', 'PRD-A-KEL-0057', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00064', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs'),
  ('TRX-A00064', 'PRD-A-AKS-0052', 'Memory Card 32GB', 3, 95000, 285000, 89000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00055', '2026-11-18 16:47:42+07:00', 'Eko Saputra', 'Admin', 200500, 0, 200500, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100054', '', '', '', 80700, NULL, '2026-11-18 16:47:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00055', 'PRD-A-KEL-0176', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00055', 'PRD-A-KEL-0087', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00055', 'PRD-A-KEL-0038', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00055', 'PRD-A-AKS-0143', 'Batre Samsung J1', 1, 34000, 34000, 23000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01753', '2026-11-18 16:35:42+07:00', 'Umum', 'Admin', 9356000, 0, 9356000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101752', '', '', '', 872000, NULL, '2026-11-18 16:35:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01753', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 1, 2150000, 2150000, 2100000, 0, 50000, 'pcs'),
  ('TRX-A01753', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 2, 29000, 58000, 15000, 0, 28000, 'pcs'),
  ('TRX-A01753', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 1, 2600000, 2600000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A01753', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs'),
  ('TRX-A01753', 'PRD-A-AKS-0231', 'Case Samsung A03', 2, 34000, 68000, 27000, 0, 14000, 'pcs'),
  ('TRX-A01753', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 1, 1900000, 1900000, 1700000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00543', '2026-11-18 15:54:14+07:00', 'Fitri Rahmawati 4', 'Admin', 112000, 0, 56000, 56000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100542', '', '', '', 15000, NULL, '2026-11-18 15:54:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00543', 'PRD-A-KEL-0143', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00543', 'PRD-A-AKS-0082', 'Case Redmi 9A', 2, 26000, 52000, 23000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01266', '2026-11-18 15:34:36+07:00', 'Umum', 'Admin', 3328000, 0, 1664000, 1664000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101265', '', '', '', 494000, NULL, '2026-11-18 15:34:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01266', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs'),
  ('TRX-A01266', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 2, 1620000, 3240000, 1400000, 0, 440000, 'pcs'),
  ('TRX-A01266', 'PRD-A-AKS-0043', 'Case Oppo A57', 1, 28000, 28000, 13000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00520', '2026-11-18 15:29:12+07:00', 'Umum', 'Admin', 8721000, 0, 8721000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100519', '', '', '', 1048000, NULL, '2026-11-18 15:29:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00520', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 2, 2190000, 4380000, 2000000, 0, 380000, 'pcs'),
  ('TRX-A00520', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 2, 1510000, 3020000, 1300000, 0, 420000, 'pcs'),
  ('TRX-A00520', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 2, 600000, 1200000, 500000, 0, 200000, 'pcs'),
  ('TRX-A00520', 'PRD-A-KEL-0143', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00520', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 3, 27000, 81000, 13000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00756', '2026-11-18 15:09:56+07:00', 'Hendra Gunawan 2', 'Admin', 5425000, 0, 5425000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100755', '', '', '', 764000, NULL, '2026-11-18 15:09:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00756', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A00756', 'PRD-A-KEL-0128', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00756', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 3, 970000, 2910000, 900000, 0, 210000, 'pcs'),
  ('TRX-A00756', 'PRD-A-HP-0142', 'HP VIVO A57 3/32 10794', 1, 740000, 740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A00756', 'PRD-A-KEL-0138', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00756', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 1, 29000, 29000, 15000, 0, 14000, 'pcs'),
  ('TRX-A00756', 'PRD-A-AKS-0191', 'Batre Samsung J1', 3, 54000, 162000, 39000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01447', '2026-11-18 15:04:50+07:00', 'Umum', 'Admin', 16783000, 0, 16783000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101446', '', '', '', 1373000, NULL, '2026-11-18 15:04:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01447', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 2, 1610000, 3220000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A01447', 'PRD-A-KEL-0009', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A01447', 'PRD-A-AKS-0222', 'Case Redmi 9A', 1, 46000, 46000, 35000, 0, 11000, 'pcs'),
  ('TRX-A01447', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A01447', 'PRD-A-AKS-0001', 'Case Oppo A57', 1, 22000, 22000, 10000, 0, 12000, 'pcs'),
  ('TRX-A01447', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01896', '2026-11-18 14:58:57+07:00', 'Sri Wahyuni', 'Admin', 17973000, 0, 17973000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101895', '', '', '', 1295000, NULL, '2026-11-18 14:58:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01896', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 21000, 0, 14000, 'pcs'),
  ('TRX-A01896', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 1, 1700000, 1700000, 1600000, 0, 100000, 'pcs'),
  ('TRX-A01896', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 2, 29000, 58000, 25000, 0, 8000, 'pcs'),
  ('TRX-A01896', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs'),
  ('TRX-A01896', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 3, 2590000, 7770000, 2400000, 0, 570000, 'pcs'),
  ('TRX-A01896', 'PRD-A-KEL-0032', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00366', '2026-11-18 14:49:51+07:00', 'Umum', 'Admin', 10148000, 0, 5074000, 5074000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100365', '', '', '', 597000, NULL, '2026-11-18 14:49:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00366', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 2, 1880000, 3760000, 1800000, 0, 160000, 'pcs'),
  ('TRX-A00366', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00366', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 1, 660000, 660000, 500000, 0, 160000, 'pcs'),
  ('TRX-A00366', 'PRD-A-KEL-0145', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00366', 'PRD-A-AKS-0222', 'Case Redmi 9A', 1, 46000, 46000, 35000, 0, 11000, 'pcs'),
  ('TRX-A00366', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 1, 950000, 950000, 900000, 0, 50000, 'pcs'),
  ('TRX-A00366', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00366', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 2, 2300000, 4600000, 2200000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00313', '2026-11-18 14:37:19+07:00', 'Sri Wahyuni 3', 'Admin', 7181000, 0, 7181000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100312', '', '', '', 892000, NULL, '2026-11-18 14:37:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00313', 'PRD-A-HP-0111', 'HP OPPO A57 4/128 32620', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs'),
  ('TRX-A00313', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00313', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 1, 18000, 18000, 14000, 0, 4000, 'pcs'),
  ('TRX-A00313', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 1, 690000, 690000, 500000, 0, 190000, 'pcs'),
  ('TRX-A00313', 'PRD-A-KEL-0190', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00313', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 1, 29000, 29000, 15000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01035', '2026-11-18 14:36:46+07:00', 'Dewi Lestari 5', 'Admin', 8105000, 0, 8105000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101034', '', '', '', 472000, NULL, '2026-11-18 14:36:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01035', 'PRD-A-HP-0017', 'HP SAMSUNG Y91C 2/32 91420', 1, 760000, 760000, 700000, 0, 60000, 'pcs'),
  ('TRX-A01035', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A01035', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A01035', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A01035', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 3, 43000, 129000, 35000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01062', '2026-11-18 14:22:19+07:00', 'Umum', 'Admin', 7934000, 0, 0, 7934000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101061', '', '', '', 1168000, NULL, '2026-11-18 14:22:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01062', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 2, 820000, 1640000, 600000, 0, 440000, 'pcs'),
  ('TRX-A01062', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 3, 1050000, 3150000, 900000, 0, 450000, 'pcs'),
  ('TRX-A01062', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 3, 970000, 2910000, 900000, 0, 210000, 'pcs'),
  ('TRX-A01062', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 2, 15000, 30000, 8000, 0, 14000, 'pcs'),
  ('TRX-A01062', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 3, 28000, 84000, 19000, 0, 27000, 'pcs'),
  ('TRX-A01062', 'PRD-A-AKS-0155', 'Handsfree Samsung', 3, 40000, 120000, 31000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01009', '2026-11-18 14:14:40+07:00', 'Maya Putri 3', 'Admin', 15972000, 0, 15972000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101008', '', '', '', 1171500, NULL, '2026-11-18 14:14:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01009', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 3, 2680000, 8040000, 2500000, 0, 540000, 'pcs'),
  ('TRX-A01009', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A01009', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 2, 38000, 76000, 23000, 0, 30000, 'pcs'),
  ('TRX-A01009', 'PRD-A-KEL-0081', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A01009', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 3, 2590000, 7770000, 2400000, 0, 570000, 'pcs'),
  ('TRX-A01009', 'PRD-A-KEL-0136', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01352', '2026-11-18 14:11:26+07:00', 'Joko Prasetyo 3', 'Admin', 12058000, 0, 12058000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101351', '', '', '', 645000, NULL, '2026-11-18 14:11:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01352', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 2, 2540000, 5080000, 2400000, 0, 280000, 'pcs'),
  ('TRX-A01352', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 1, 18000, 18000, 13000, 0, 5000, 'pcs'),
  ('TRX-A01352', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 3, 2320000, 6960000, 2200000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01120', '2026-11-18 13:58:12+07:00', 'Lilis Suryani 3', 'Admin', 3510000, 0, 1755000, 1755000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101119', '', '', '', 210000, NULL, '2026-11-18 13:58:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01120', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01756', '2026-11-18 13:50:06+07:00', 'Umum', 'Admin', 2010000, 0, 1005000, 1005000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101755', '', '', '', 210000, NULL, '2026-11-18 13:50:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01756', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 3, 670000, 2010000, 600000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01894', '2026-11-18 13:18:37+07:00', 'Eko Saputra 3', 'Admin', 84000, 0, 84000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101893', '', '', '', 43400, NULL, '2026-11-18 13:18:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01894', 'PRD-A-KEL-0005', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01894', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 3, 27000, 81000, 13000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00661', '2026-11-18 13:16:52+07:00', 'Budi Santoso', 'Admin', 4617000, 0, 2308500, 2308500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100660', '', '', '', 464000, NULL, '2026-11-18 13:16:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00661', 'PRD-A-KEL-0193', 'Snack wafer', 2, 10000, 20000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00661', 'PRD-A-KEL-0192', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00661', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 2, 2100000, 4200000, 1900000, 0, 400000, 'pcs'),
  ('TRX-A00661', 'PRD-A-AKS-0172', 'Case Samsung A03', 3, 24000, 72000, 20000, 0, 12000, 'pcs'),
  ('TRX-A00661', 'PRD-A-KEL-0108', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00661', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00661', 'PRD-A-AKS-0076', 'Handsfree Samsung', 1, 58000, 58000, 45000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00088', '2026-11-18 13:06:09+07:00', 'Umum', 'Admin', 3307000, 0, 3307000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100087', '', '', '', 470000, NULL, '2026-11-18 13:06:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00088', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00088', 'PRD-A-KEL-0120', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00088', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 1, 51000, 51000, 47000, 0, 4000, 'pcs'),
  ('TRX-A00088', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 3, 1040000, 3120000, 900000, 0, 420000, 'pcs'),
  ('TRX-A00088', 'PRD-A-KEL-0060', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00088', 'PRD-A-AKS-0021', 'Handsfree Samsung', 2, 18000, 36000, 10000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01694', '2026-11-18 13:01:57+07:00', 'Umum', 'Admin', 3208000, 0, 0, 3208000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101693', '', '', '', 308000, NULL, '2026-11-18 13:01:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01694', 'PRD-A-AKS-0223', 'Memory Card 32GB', 2, 51000, 102000, 48000, 0, 6000, 'pcs'),
  ('TRX-A01694', 'PRD-A-HP-0098', 'HP INFINIX 9A 3/64 25641', 2, 1550000, 3100000, 1400000, 0, 300000, 'pcs'),
  ('TRX-A01694', 'PRD-A-KEL-0124', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00770', '2026-11-18 12:49:59+07:00', 'Umum', 'Admin', 8850000, 0, 8850000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100769', '', '', '', 800000, NULL, '2026-11-18 12:49:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00770', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 2, 1710000, 3420000, 1500000, 0, 420000, 'pcs'),
  ('TRX-A00770', 'PRD-A-KEL-0151', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00770', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00770', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 2, 2680000, 5360000, 2500000, 0, 360000, 'pcs'),
  ('TRX-A00770', 'PRD-A-KEL-0171', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01758', '2026-11-18 12:26:54+07:00', 'Dewi Lestari', 'Admin', 10921000, 0, 5460500, 5460500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101757', '', '', '', 978400, NULL, '2026-11-18 12:26:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01758', 'PRD-A-KEL-0083', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01758', 'PRD-A-KEL-0125', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01758', 'PRD-A-AKS-0187', 'Kartu Perdana XL', 1, 16000, 16000, 10000, 0, 6000, 'pcs'),
  ('TRX-A01758', 'PRD-A-AKS-0198', 'Batre Oppo A57', 1, 19000, 19000, 14000, 0, 5000, 'pcs'),
  ('TRX-A01758', 'PRD-A-AKS-0053', 'Memory Card 16GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs'),
  ('TRX-A01758', 'PRD-A-AKS-0108', 'Memory Card 16GB', 3, 96000, 288000, 87000, 0, 27000, 'pcs'),
  ('TRX-A01758', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 1, 2870000, 2870000, 2700000, 0, 170000, 'pcs'),
  ('TRX-A01758', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 3, 2550000, 7650000, 2300000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00398', '2026-11-18 12:23:15+07:00', 'Umum', 'Admin', 2774500, 0, 1387250, 1387250, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100397', '', '', '', 365100, NULL, '2026-11-18 12:23:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00398', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00398', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 1, 590000, 590000, 400000, 0, 190000, 'pcs'),
  ('TRX-A00398', 'PRD-A-AKS-0105', 'Case Samsung A03', 2, 36000, 72000, 21000, 0, 30000, 'pcs'),
  ('TRX-A00398', 'PRD-A-AKS-0139', 'Case Samsung A03', 1, 34000, 34000, 21000, 0, 13000, 'pcs'),
  ('TRX-A00398', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 1, 2000000, 2000000, 1900000, 0, 100000, 'pcs'),
  ('TRX-A00398', 'PRD-A-KEL-0083', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00398', 'PRD-A-KEL-0056', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A00398', 'PRD-A-KEL-0136', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00200', '2026-11-18 12:12:16+07:00', 'Umum', 'Admin', 85000, 0, 85000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100199', '', '', '', 13000, NULL, '2026-11-18 12:12:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00200', 'PRD-A-KEL-0047', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00200', 'PRD-A-KEL-0045', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01291', '2026-11-18 12:11:30+07:00', 'Umum', 'Admin', 2678000, 0, 2678000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101290', '', '', '', 328000, NULL, '2026-11-18 12:11:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01291', 'PRD-A-AKS-0021', 'Handsfree Samsung', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A01291', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 1, 1110000, 1110000, 1000000, 0, 110000, 'pcs'),
  ('TRX-A01291', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 1, 1500000, 1500000, 1300000, 0, 200000, 'pcs'),
  ('TRX-A01291', 'PRD-A-AKS-0030', 'Case Samsung A03', 2, 25000, 50000, 20000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01832', '2026-11-18 12:09:44+07:00', 'Dewi Lestari 2', 'Admin', 5282000, 0, 5282000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101831', '', '', '', 348000, NULL, '2026-11-18 12:09:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01832', 'PRD-A-KEL-0074', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01832', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 2, 39000, 78000, 35000, 0, 8000, 'pcs'),
  ('TRX-A01832', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 3, 57000, 171000, 45000, 0, 36000, 'pcs'),
  ('TRX-A01832', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs'),
  ('TRX-A01832', 'PRD-A-KEL-0157', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A01832', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 3, 1570000, 4710000, 1500000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00311', '2026-11-18 12:02:54+07:00', 'Umum', 'Admin', 22010000, 0, 0, 22010000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100310', '', '', '', 1897000, NULL, '2026-11-18 12:02:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00311', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A00311', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 3, 1640000, 4920000, 1500000, 0, 420000, 'pcs'),
  ('TRX-A00311', 'PRD-A-KEL-0177', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00311', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs'),
  ('TRX-A00311', 'PRD-A-KEL-0154', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00311', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01939', '2026-11-18 11:51:59+07:00', 'Umum', 'Admin', 5259000, 0, 5259000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101938', '', '', '', 859000, NULL, '2026-11-18 11:51:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01939', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 3, 1410000, 4230000, 1200000, 0, 630000, 'pcs'),
  ('TRX-A01939', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 18000, 0, 39000, 'pcs'),
  ('TRX-A01939', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 2, 38000, 76000, 23000, 0, 30000, 'pcs'),
  ('TRX-A01939', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01985', '2026-11-18 11:26:00+07:00', 'Sri Wahyuni 2', 'Admin', 15900000, 0, 15900000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101984', '', '', '', 1561000, NULL, '2026-11-18 11:26:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01985', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 3, 14000, 42000, 9000, 0, 15000, 'pcs'),
  ('TRX-A01985', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 3, 2510000, 7530000, 2300000, 0, 630000, 'pcs'),
  ('TRX-A01985', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 2, 780000, 1560000, 700000, 0, 160000, 'pcs'),
  ('TRX-A01985', 'PRD-A-KEL-0171', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01985', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 3, 2250000, 6750000, 2000000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00619', '2026-11-18 11:12:35+07:00', 'Siti Aisyah', 'Admin', 50000, 0, 50000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100618', '', '', '', 18500, NULL, '2026-11-18 11:12:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00619', 'PRD-A-KEL-0081', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A00619', 'PRD-A-AKS-0187', 'Kartu Perdana XL', 3, 16000, 48000, 10000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01652', '2026-11-18 11:05:33+07:00', 'Umum', 'Admin', 8856000, 0, 4428000, 4428000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101651', '', '', '', 1321000, NULL, '2026-11-18 11:05:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01652', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 3, 740000, 2220000, 600000, 0, 420000, 'pcs'),
  ('TRX-A01652', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 3, 1850000, 5550000, 1600000, 0, 750000, 'pcs'),
  ('TRX-A01652', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 1, 1040000, 1040000, 900000, 0, 140000, 'pcs'),
  ('TRX-A01652', 'PRD-A-AKS-0222', 'Case Redmi 9A', 1, 46000, 46000, 35000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01212', '2026-11-18 10:56:18+07:00', 'Ayu Lestari', 'Admin', 7634000, 0, 7634000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101211', '', '', '', 738000, NULL, '2026-11-18 10:56:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01212', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 2, 45000, 90000, 33000, 0, 24000, 'pcs'),
  ('TRX-A01212', 'PRD-A-KEL-0033', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01212', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 3, 1780000, 5340000, 1600000, 0, 540000, 'pcs'),
  ('TRX-A01212', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 1, 2160000, 2160000, 2000000, 0, 160000, 'pcs'),
  ('TRX-A01212', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00075', '2026-11-18 10:46:14+07:00', 'Budi Santoso 2', 'Admin', 6220000, 0, 3110000, 3110000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100074', '', '', '', 955000, NULL, '2026-11-18 10:46:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00075', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 3, 1370000, 4110000, 1300000, 0, 210000, 'pcs'),
  ('TRX-A00075', 'PRD-A-HP-0075', 'HP VIVO Y53 2/16 24312', 2, 520000, 1040000, 300000, 0, 440000, 'pcs'),
  ('TRX-A00075', 'PRD-A-KEL-0057', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00075', 'PRD-A-KEL-0120', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00075', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 3, 65000, 195000, 53000, 0, 36000, 'pcs'),
  ('TRX-A00075', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs'),
  ('TRX-A00075', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 1, 740000, 740000, 500000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01666', '2026-11-18 10:25:16+07:00', 'Umum', 'Admin', 21347000, 0, 21347000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101665', '', '', '', 989000, NULL, '2026-11-18 10:25:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01666', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 3, 54000, 162000, 47000, 0, 21000, 'pcs'),
  ('TRX-A01666', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 3, 2000000, 6000000, 1900000, 0, 300000, 'pcs'),
  ('TRX-A01666', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs'),
  ('TRX-A01666', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01666', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs'),
  ('TRX-A01666', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 2, 1680000, 3360000, 1600000, 0, 160000, 'pcs'),
  ('TRX-A01666', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 2, 2580000, 5160000, 2500000, 0, 160000, 'pcs'),
  ('TRX-A01666', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 3, 25000, 75000, 15000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01392', '2026-11-18 10:18:48+07:00', 'Umum', 'Admin', 4920000, 0, 4920000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101391', '', '', '', 420000, NULL, '2026-11-18 10:18:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01392', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 3, 1640000, 4920000, 1500000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01295', '2026-11-18 09:41:34+07:00', 'Umum', 'Admin', 7549000, 0, 7549000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101294', '', '', '', 852000, NULL, '2026-11-18 09:41:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01295', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01295', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 3, 1620000, 4860000, 1400000, 0, 660000, 'pcs'),
  ('TRX-A01295', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 2, 33000, 66000, 22000, 0, 22000, 'pcs'),
  ('TRX-A01295', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01295', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A01295', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 2, 36000, 72000, 25000, 0, 22000, 'pcs'),
  ('TRX-A01295', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 3, 55000, 165000, 49000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00429', '2026-11-18 09:34:46+07:00', 'Dedi Supriadi', 'Admin', 5579000, 0, 5579000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100428', '', '', '', 1137000, NULL, '2026-11-18 09:34:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00429', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 2, 550000, 1100000, 400000, 0, 300000, 'pcs'),
  ('TRX-A00429', 'PRD-A-AKS-0186', 'Case Redmi 9A', 2, 25000, 50000, 14000, 0, 22000, 'pcs'),
  ('TRX-A00429', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 2, 1270000, 2540000, 1100000, 0, 340000, 'pcs'),
  ('TRX-A00429', 'PRD-A-AKS-0169', 'Handsfree Oppo', 1, 29000, 29000, 14000, 0, 15000, 'pcs'),
  ('TRX-A00429', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 2, 930000, 1860000, 700000, 0, 460000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00449', '2026-11-18 09:32:17+07:00', 'Dedi Supriadi 3', 'Admin', 9123000, 0, 4561500, 4561500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100448', '', '', '', 539000, NULL, '2026-11-18 09:32:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00449', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00449', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00449', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 3, 2960000, 8880000, 2800000, 0, 480000, 'pcs'),
  ('TRX-A00449', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 1, 34000, 34000, 26000, 0, 8000, 'pcs'),
  ('TRX-A00449', 'PRD-A-KEL-0161', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00449', 'PRD-A-AKS-0168', 'Memory Card 32GB', 2, 40000, 80000, 32000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01667', '2026-11-18 09:27:52+07:00', 'Intan Permata 2', 'Admin', 2900000, 0, 2900000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101666', '', '', '', 200000, NULL, '2026-11-18 09:27:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01667', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01596', '2026-11-18 09:19:17+07:00', 'Fajar Nugroho 5', 'Admin', 28435000, 0, 28435000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101595', '', '', '', 1382000, NULL, '2026-11-18 09:19:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01596', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 2, 2560000, 5120000, 2500000, 0, 120000, 'pcs'),
  ('TRX-A01596', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 3, 1910000, 5730000, 1800000, 0, 330000, 'pcs'),
  ('TRX-A01596', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 2, 2610000, 5220000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A01596', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 1, 65000, 65000, 53000, 0, 12000, 'pcs'),
  ('TRX-A01596', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 2, 2700000, 5400000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01596', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 3, 2300000, 6900000, 2200000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00137', '2026-11-18 09:13:15+07:00', 'Sri Wahyuni', 'Admin', 3953000, 0, 3953000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100136', '', '', '', 499000, NULL, '2026-11-18 09:13:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00137', 'PRD-A-KEL-0016', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00137', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A00137', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 2, 1800000, 3600000, 1600000, 0, 400000, 'pcs'),
  ('TRX-A00137', 'PRD-A-KEL-0161', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00137', 'PRD-A-AKS-0186', 'Case Redmi 9A', 3, 25000, 75000, 14000, 0, 33000, 'pcs'),
  ('TRX-A00137', 'PRD-A-AKS-0088', 'Case Redmi 9A', 2, 43000, 86000, 34000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01935', '2026-11-18 09:07:27+07:00', 'Hendra Gunawan', 'Admin', 6522000, 0, 6522000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101934', '', '', '', 734000, NULL, '2026-11-18 09:07:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01935', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs'),
  ('TRX-A01935', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 2, 33000, 66000, 28000, 0, 10000, 'pcs'),
  ('TRX-A01935', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01199', '2026-11-18 08:49:16+07:00', 'Rina Marlina 5', 'Admin', 2663000, 0, 2663000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101198', '', '', '', 293000, NULL, '2026-11-18 08:49:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01199', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 2, 1210000, 2420000, 1100000, 0, 220000, 'pcs'),
  ('TRX-A01199', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 3, 15000, 45000, 10000, 0, 15000, 'pcs'),
  ('TRX-A01199', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 2, 24000, 48000, 15000, 0, 18000, 'pcs'),
  ('TRX-A01199', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 2, 31000, 62000, 17000, 0, 28000, 'pcs'),
  ('TRX-A01199', 'PRD-A-AKS-0116', 'Memory Card 16GB', 1, 88000, 88000, 76000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00610', '2026-11-18 08:38:33+07:00', 'Agus Wijaya 5', 'Admin', 10410000, 0, 10410000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100609', '', '', '', 835500, NULL, '2026-11-18 08:38:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00610', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A00610', 'PRD-A-AKS-0217', 'Batre Samsung J1', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A00610', 'PRD-A-AKS-0055', 'Memory Card 16GB', 2, 66000, 132000, 56000, 0, 20000, 'pcs'),
  ('TRX-A00610', 'PRD-A-AKS-0165', 'Case Vivo Y20', 1, 43000, 43000, 31000, 0, 12000, 'pcs'),
  ('TRX-A00610', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 3, 2920000, 8760000, 2700000, 0, 660000, 'pcs'),
  ('TRX-A00610', 'PRD-A-KEL-0099', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00610', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 1, 1320000, 1320000, 1200000, 0, 120000, 'pcs'),
  ('TRX-A00610', 'PRD-A-AKS-0192', 'Handsfree Oppo', 1, 49000, 49000, 40000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00909', '2026-11-18 08:26:33+07:00', 'Umum', 'Admin', 11181000, 0, 11181000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100908', '', '', '', 543000, NULL, '2026-11-18 08:26:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00909', 'PRD-A-KEL-0159', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00909', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 3, 2810000, 8430000, 2700000, 0, 330000, 'pcs'),
  ('TRX-A00909', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 1, 42000, 42000, 30000, 0, 12000, 'pcs'),
  ('TRX-A00909', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 1, 2480000, 2480000, 2300000, 0, 180000, 'pcs'),
  ('TRX-A00909', 'PRD-A-AKS-0153', 'Memory Card 32GB', 2, 92000, 184000, 86000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01058', '2026-11-18 08:25:00+07:00', 'Intan Permata 2', 'Admin', 6050000, 0, 3025000, 3025000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101057', '', '', '', 650000, NULL, '2026-11-18 08:25:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01058', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 1, 1610000, 1610000, 1400000, 0, 210000, 'pcs'),
  ('TRX-A01058', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 2, 2220000, 4440000, 2000000, 0, 440000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01130', '2026-11-18 08:20:53+07:00', 'Umum', 'Admin', 6473000, 0, 3236500, 3236500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101129', '', '', '', 857000, NULL, '2026-11-18 08:20:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01130', 'PRD-A-KEL-0091', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01130', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 3, 1490000, 4470000, 1300000, 0, 570000, 'pcs'),
  ('TRX-A01130', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 1, 1850000, 1850000, 1600000, 0, 250000, 'pcs'),
  ('TRX-A01130', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 1, 55000, 55000, 49000, 0, 6000, 'pcs'),
  ('TRX-A01130', 'PRD-A-KEL-0041', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01130', 'PRD-A-AKS-0163', 'Kartu Perdana XL', 3, 24000, 72000, 16000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00510', '2026-11-18 08:09:14+07:00', 'Umum', 'Admin', 12843000, 0, 6421500, 6421500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100509', '', '', '', 1307000, NULL, '2026-11-18 08:09:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00510', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 3, 2190000, 6570000, 2000000, 0, 570000, 'pcs'),
  ('TRX-A00510', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00510', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 1, 25000, 25000, 16000, 0, 9000, 'pcs'),
  ('TRX-A00510', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 1, 51000, 51000, 44000, 0, 7000, 'pcs'),
  ('TRX-A00510', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 2, 31000, 62000, 17000, 0, 28000, 'pcs'),
  ('TRX-A00510', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs'),
  ('TRX-A00510', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 1, 2140000, 2140000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A00510', 'PRD-A-AKS-0186', 'Case Redmi 9A', 3, 25000, 75000, 14000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01452', '2026-11-17 20:58:44+07:00', 'Umum', 'Admin', 18587000, 0, 18587000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101451', '', '', '', 2256000, NULL, '2026-11-17 20:58:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01452', 'PRD-A-AKS-0154', 'Memory Card 16GB', 1, 101000, 101000, 86000, 0, 15000, 'pcs'),
  ('TRX-A01452', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 3, 1990000, 5970000, 1900000, 0, 270000, 'pcs'),
  ('TRX-A01452', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 2, 23000, 46000, 14000, 0, 18000, 'pcs'),
  ('TRX-A01452', 'PRD-A-KEL-0085', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01452', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 3, 930000, 2790000, 700000, 0, 690000, 'pcs'),
  ('TRX-A01452', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A01452', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 3, 1410000, 4230000, 1200000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00002', '2026-11-17 20:51:45+07:00', 'Umum', 'Admin', 10204000, 0, 10204000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100001', '', '', '', 828000, NULL, '2026-11-17 20:51:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00002', 'PRD-A-KEL-0045', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A00002', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs'),
  ('TRX-A00002', 'PRD-A-AKS-0079', 'Handsfree Oppo', 3, 51000, 153000, 43000, 0, 24000, 'pcs'),
  ('TRX-A00002', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00002', 'PRD-A-KEL-0090', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00002', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 2, 18000, 36000, 10000, 0, 16000, 'pcs'),
  ('TRX-A00002', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 1, 1870000, 1870000, 1700000, 0, 170000, 'pcs'),
  ('TRX-A00002', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01012', '2026-11-17 20:48:54+07:00', 'Umum', 'Admin', 1070000, 0, 0, 1070000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101011', '', '', '', 70000, NULL, '2026-11-17 20:48:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01012', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 1, 1070000, 1070000, 1000000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01550', '2026-11-17 20:47:52+07:00', 'Lilis Suryani 5', 'Admin', 6070000, 0, 6070000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101549', '', '', '', 678000, NULL, '2026-11-17 20:47:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01550', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 2, 1210000, 2420000, 1000000, 0, 420000, 'pcs'),
  ('TRX-A01550', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs'),
  ('TRX-A01550', 'PRD-A-HP-0536', 'HP ITEL HOT30i 8/256 76951', 1, 1080000, 1080000, 1000000, 0, 80000, 'pcs'),
  ('TRX-A01550', 'PRD-A-KEL-0160', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01550', 'PRD-A-KEL-0020', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01550', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs'),
  ('TRX-A01550', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 1, 32000, 32000, 24000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00419', '2026-11-17 20:45:58+07:00', 'Lilis Suryani', 'Admin', 9140000, 0, 4570000, 4570000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100418', '', '', '', 1040000, NULL, '2026-11-17 20:45:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00419', 'PRD-A-HP-0330', 'HP REDMI C15 4/64 69727', 3, 810000, 2430000, 600000, 0, 630000, 'pcs'),
  ('TRX-A00419', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 1, 1710000, 1710000, 1500000, 0, 210000, 'pcs'),
  ('TRX-A00419', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 2, 2500000, 5000000, 2400000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00300', '2026-11-17 20:25:26+07:00', 'Lilis Suryani 5', 'Admin', 410000, 0, 410000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100299', '', '', '', 137000, NULL, '2026-11-17 20:25:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00300', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 3, 30000, 90000, 18000, 0, 36000, 'pcs'),
  ('TRX-A00300', 'PRD-A-KEL-0097', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00300', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs'),
  ('TRX-A00300', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A00300', 'PRD-A-KEL-0027', 'Pensil', 2, 2000, 4000, 1500, 0, 1000, 'pcs'),
  ('TRX-A00300', 'PRD-A-KEL-0035', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00300', 'PRD-A-AKS-0073', 'Memory Card 64GB', 1, 35000, 35000, 31000, 0, 4000, 'pcs'),
  ('TRX-A00300', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 1, 74000, 74000, 59000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00660', '2026-11-17 20:21:39+07:00', 'Maya Putri 5', 'Admin', 10364000, 0, 10364000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100659', '', '', '', 1307000, NULL, '2026-11-17 20:21:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00660', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 1, 39000, 39000, 35000, 0, 4000, 'pcs'),
  ('TRX-A00660', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 1, 630000, 630000, 500000, 0, 130000, 'pcs'),
  ('TRX-A00660', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 2, 2290000, 4580000, 2200000, 0, 180000, 'pcs'),
  ('TRX-A00660', 'PRD-A-HP-0075', 'HP VIVO Y53 2/16 24312', 2, 520000, 1040000, 300000, 0, 440000, 'pcs'),
  ('TRX-A00660', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 2, 930000, 1860000, 700000, 0, 460000, 'pcs'),
  ('TRX-A00660', 'PRD-A-AKS-0090', 'Kartu Perdana XL', 1, 35000, 35000, 22000, 0, 13000, 'pcs'),
  ('TRX-A00660', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00369', '2026-11-17 20:19:23+07:00', 'Fitri Rahmawati 3', 'Admin', 13212000, 0, 13212000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100368', '', '', '', 1480000, NULL, '2026-11-17 20:19:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00369', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 3, 1040000, 3120000, 900000, 0, 420000, 'pcs'),
  ('TRX-A00369', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs'),
  ('TRX-A00369', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 2, 820000, 1640000, 600000, 0, 440000, 'pcs'),
  ('TRX-A00369', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 2, 26000, 52000, 16000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00857', '2026-11-17 20:18:25+07:00', 'Ayu Lestari 2', 'Admin', 9376000, 0, 0, 9376000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100856', '', '', '', 728000, NULL, '2026-11-17 20:18:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00857', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 2, 21000, 42000, 17000, 0, 8000, 'pcs'),
  ('TRX-A00857', 'PRD-A-KEL-0182', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00857', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A00857', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A00857', 'PRD-A-KEL-0148', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00857', 'PRD-A-KEL-0131', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00857', 'PRD-A-AKS-0128', 'Batre Vivo Y91', 2, 41000, 82000, 36000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01284', '2026-11-17 20:17:49+07:00', 'Andi Kurnia 5', 'Admin', 10593000, 0, 10593000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101283', '', '', '', 821000, NULL, '2026-11-17 20:17:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01284', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 1, 2580000, 2580000, 2500000, 0, 80000, 'pcs'),
  ('TRX-A01284', 'PRD-A-KEL-0092', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01284', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 3, 56000, 168000, 45000, 0, 33000, 'pcs'),
  ('TRX-A01284', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 2, 1850000, 3700000, 1700000, 0, 300000, 'pcs'),
  ('TRX-A01284', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 1, 1860000, 1860000, 1700000, 0, 160000, 'pcs'),
  ('TRX-A01284', 'PRD-A-AKS-0150', 'Memory Card 16GB', 3, 55000, 165000, 41000, 0, 42000, 'pcs'),
  ('TRX-A01284', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 1, 2100000, 2100000, 1900000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01892', '2026-11-17 20:17:10+07:00', 'Umum', 'Admin', 8596000, 0, 0, 8596000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101891', '', '', '', 926000, NULL, '2026-11-17 20:17:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01892', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A01892', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 3, 2250000, 6750000, 2000000, 0, 750000, 'pcs'),
  ('TRX-A01892', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 1, 1730000, 1730000, 1600000, 0, 130000, 'pcs'),
  ('TRX-A01892', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00562', '2026-11-17 20:14:07+07:00', 'Umum', 'Admin', 5271000, 0, 5271000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100561', '', '', '', 922000, NULL, '2026-11-17 20:14:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00562', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs'),
  ('TRX-A00562', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 3, 33000, 99000, 27000, 0, 18000, 'pcs'),
  ('TRX-A00562', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs'),
  ('TRX-A00562', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 1, 2120000, 2120000, 1900000, 0, 220000, 'pcs'),
  ('TRX-A00562', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 2, 750000, 1500000, 500000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01038', '2026-11-17 20:11:43+07:00', 'Intan Permata 3', 'Admin', 6300000, 0, 6300000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101037', '', '', '', 537000, NULL, '2026-11-17 20:11:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01038', 'PRD-A-AKS-0172', 'Case Samsung A03', 2, 24000, 48000, 20000, 0, 8000, 'pcs'),
  ('TRX-A01038', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 1, 550000, 550000, 400000, 0, 150000, 'pcs'),
  ('TRX-A01038', 'PRD-A-HP-0406', 'HP REDMI Y55S 4/128 92726', 2, 2760000, 5520000, 2600000, 0, 320000, 'pcs'),
  ('TRX-A01038', 'PRD-A-KEL-0173', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01038', 'PRD-A-AKS-0174', 'Case Redmi 9A', 3, 41000, 123000, 26000, 0, 45000, 'pcs'),
  ('TRX-A01038', 'PRD-A-KEL-0150', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01038', 'PRD-A-AKS-0193', 'Case Oppo A57', 1, 25000, 25000, 21000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01174', '2026-11-17 19:55:10+07:00', 'Sri Wahyuni', 'Admin', 15563000, 0, 15563000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101173', '', '', '', 940000, NULL, '2026-11-17 19:55:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01174', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 2, 65000, 130000, 53000, 0, 24000, 'pcs'),
  ('TRX-A01174', 'PRD-A-AKS-0027', 'Batre Samsung J1', 3, 51000, 153000, 39000, 0, 36000, 'pcs'),
  ('TRX-A01174', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 3, 2560000, 7680000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A01174', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 1, 2200000, 2200000, 2000000, 0, 200000, 'pcs'),
  ('TRX-A01174', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 2, 2050000, 4100000, 2000000, 0, 100000, 'pcs'),
  ('TRX-A01174', 'PRD-A-HP-0150', 'HP OPPO Y55S 8/256 41252', 1, 1300000, 1300000, 1200000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00390', '2026-11-17 19:53:40+07:00', 'Eko Saputra', 'Admin', 3000, 0, 1500, 1500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100389', '', '', '', 1000, NULL, '2026-11-17 19:53:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00390', 'PRD-A-KEL-0185', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01975', '2026-11-17 19:45:46+07:00', 'Hendra Gunawan', 'Admin', 14673000, 0, 7336500, 7336500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101974', '', '', '', 1276000, NULL, '2026-11-17 19:45:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01975', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 2, 42000, 84000, 27000, 0, 30000, 'pcs'),
  ('TRX-A01975', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 1, 31000, 31000, 18000, 0, 13000, 'pcs'),
  ('TRX-A01975', 'PRD-A-KEL-0121', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01975', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 2, 18000, 36000, 10000, 0, 16000, 'pcs'),
  ('TRX-A01975', 'PRD-A-HP-0400', 'HP SAMSUNG 5A 2/32 51721', 3, 2320000, 6960000, 2100000, 0, 660000, 'pcs'),
  ('TRX-A01975', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 3, 38000, 114000, 33000, 0, 15000, 'pcs'),
  ('TRX-A01975', 'PRD-A-HP-0271', 'HP REDMI A15 2/32 43955', 3, 2480000, 7440000, 2300000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00334', '2026-11-17 19:26:00+07:00', 'Andi Kurnia', 'Admin', 6490000, 0, 3245000, 3245000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100333', '', '', '', 633000, NULL, '2026-11-17 19:26:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00334', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 1, 28000, 28000, 24000, 0, 4000, 'pcs'),
  ('TRX-A00334', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 3, 38000, 114000, 33000, 0, 15000, 'pcs'),
  ('TRX-A00334', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A00334', 'PRD-A-AKS-0183', 'Kabel Charger 2m', 3, 14000, 42000, 10000, 0, 12000, 'pcs'),
  ('TRX-A00334', 'PRD-A-KEL-0158', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01726', '2026-11-17 18:58:48+07:00', 'Umum', 'Admin', 7410000, 0, 7410000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101725', '', '', '', 1402000, NULL, '2026-11-17 18:58:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01726', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 3, 500000, 1500000, 300000, 0, 600000, 'pcs'),
  ('TRX-A01726', 'PRD-A-AKS-0031', 'Batre Samsung J1', 2, 58000, 116000, 50000, 0, 16000, 'pcs'),
  ('TRX-A01726', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01726', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01726', 'PRD-A-KEL-0121', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01726', 'PRD-A-AKS-0110', 'Kabel Charger 2m', 2, 43000, 86000, 35000, 0, 16000, 'pcs'),
  ('TRX-A01726', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 3, 1850000, 5550000, 1600000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00564', '2026-11-17 18:36:26+07:00', 'Dewi Lestari 4', 'Admin', 30000, 0, 0, 30000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100563', '', '', '', 6000, NULL, '2026-11-17 18:36:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00564', 'PRD-A-KEL-0193', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00598', '2026-11-17 18:12:52+07:00', 'Umum', 'Admin', 17573000, 0, 17573000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100597', '', '', '', 1535000, NULL, '2026-11-17 18:12:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00598', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 3, 1460000, 4380000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A00598', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 1, 65000, 65000, 53000, 0, 12000, 'pcs'),
  ('TRX-A00598', 'PRD-A-AKS-0001', 'Case Oppo A57', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00598', 'PRD-A-AKS-0143', 'Batre Samsung J1', 1, 34000, 34000, 23000, 0, 11000, 'pcs'),
  ('TRX-A00598', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A00598', 'PRD-A-KEL-0174', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00598', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 2, 22000, 44000, 15000, 0, 14000, 'pcs'),
  ('TRX-A00598', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 3, 2000000, 6000000, 1900000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01539', '2026-11-17 18:00:06+07:00', 'Umum', 'Admin', 9797000, 0, 9797000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101538', '', '', '', 946000, NULL, '2026-11-17 18:00:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01539', 'PRD-A-AKS-0187', 'Kartu Perdana XL', 1, 16000, 16000, 10000, 0, 6000, 'pcs'),
  ('TRX-A01539', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 2, 2230000, 4460000, 2000000, 0, 460000, 'pcs'),
  ('TRX-A01539', 'PRD-A-KEL-0111', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01539', 'PRD-A-KEL-0024', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01539', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 2, 1730000, 3460000, 1600000, 0, 260000, 'pcs'),
  ('TRX-A01539', 'PRD-A-KEL-0031', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01539', 'PRD-A-KEL-0044', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01539', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01162', '2026-11-17 17:47:37+07:00', 'Fitri Rahmawati', 'Admin', 12000, 0, 12000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101161', '', '', '', 4500, NULL, '2026-11-17 17:47:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01162', 'PRD-A-KEL-0128', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01797', '2026-11-17 17:43:15+07:00', 'Umum', 'Admin', 8193000, 0, 8193000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101796', '', '', '', 541000, NULL, '2026-11-17 17:43:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01797', 'PRD-A-KEL-0078', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01797', 'PRD-A-KEL-0171', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01797', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 1, 1570000, 1570000, 1500000, 0, 70000, 'pcs'),
  ('TRX-A01797', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 1, 41000, 41000, 30000, 0, 11000, 'pcs'),
  ('TRX-A01797', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 3, 1590000, 4770000, 1500000, 0, 270000, 'pcs'),
  ('TRX-A01797', 'PRD-A-KEL-0198', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A01797', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 2, 890000, 1780000, 800000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00639', '2026-11-17 17:41:45+07:00', 'Umum', 'Admin', 254000, 0, 127000, 127000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100638', '', '', '', 69000, NULL, '2026-11-17 17:41:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00639', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 1, 21000, 21000, 9000, 0, 12000, 'pcs'),
  ('TRX-A00639', 'PRD-A-KEL-0063', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A00639', 'PRD-A-AKS-0191', 'Batre Samsung J1', 3, 54000, 162000, 39000, 0, 45000, 'pcs'),
  ('TRX-A00639', 'PRD-A-KEL-0150', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00188', '2026-11-17 17:29:07+07:00', 'Umum', 'Admin', 23798000, 0, 11899000, 11899000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100187', '', '', '', 2679500, NULL, '2026-11-17 17:29:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00188', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A00188', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 2, 2330000, 4660000, 2100000, 0, 460000, 'pcs'),
  ('TRX-A00188', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 3, 1620000, 4860000, 1400000, 0, 660000, 'pcs'),
  ('TRX-A00188', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00188', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 3, 2350000, 7050000, 2100000, 0, 750000, 'pcs'),
  ('TRX-A00188', 'PRD-A-KEL-0040', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00188', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00254', '2026-11-17 17:17:39+07:00', 'Lilis Suryani 3', 'Admin', 11519000, 0, 11519000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100253', '', '', '', 541000, NULL, '2026-11-17 17:17:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00254', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 3, 2560000, 7680000, 2500000, 0, 180000, 'pcs'),
  ('TRX-A00254', 'PRD-A-KEL-0026', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00254', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 1, 2290000, 2290000, 2100000, 0, 190000, 'pcs'),
  ('TRX-A00254', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 1, 780000, 780000, 700000, 0, 80000, 'pcs'),
  ('TRX-A00254', 'PRD-A-KEL-0149', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00254', 'PRD-A-KEL-0111', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00254', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 1, 670000, 670000, 600000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00826', '2026-11-17 17:05:32+07:00', 'Rudi Hartono 3', 'Admin', 4056000, 0, 4056000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100825', '', '', '', 584000, NULL, '2026-11-17 17:05:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00826', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 2, 69000, 138000, 58000, 0, 22000, 'pcs'),
  ('TRX-A00826', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 2, 860000, 1720000, 700000, 0, 320000, 'pcs'),
  ('TRX-A00826', 'PRD-A-KEL-0018', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00826', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A00826', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 1, 2100000, 2100000, 1900000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01270', '2026-11-17 16:59:46+07:00', 'Fajar Nugroho 4', 'Admin', 14734000, 0, 0, 14734000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101269', '', '', '', 1461500, NULL, '2026-11-17 16:59:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01270', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01270', 'PRD-A-KEL-0188', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01270', 'PRD-A-HP-0070', 'HP SAMSUNG 9A 4/128 90887', 1, 2070000, 2070000, 1900000, 0, 170000, 'pcs'),
  ('TRX-A01270', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 3, 2930000, 8790000, 2700000, 0, 690000, 'pcs'),
  ('TRX-A01270', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 1, 890000, 890000, 800000, 0, 90000, 'pcs'),
  ('TRX-A01270', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 2, 30000, 60000, 17000, 0, 26000, 'pcs'),
  ('TRX-A01270', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 3, 960000, 2880000, 800000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01795', '2026-11-17 16:55:31+07:00', 'Rina Marlina 4', 'Admin', 2676000, 0, 2676000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101794', '', '', '', 252000, NULL, '2026-11-17 16:55:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01795', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A01795', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01010', '2026-11-17 16:50:58+07:00', 'Umum', 'Admin', 3341000, 0, 3341000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101009', '', '', '', 608000, NULL, '2026-11-17 16:50:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01010', 'PRD-A-AKS-0038', 'Case Vivo Y20', 1, 40000, 40000, 26000, 0, 14000, 'pcs'),
  ('TRX-A01010', 'PRD-A-KEL-0110', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01010', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 3, 550000, 1650000, 400000, 0, 450000, 'pcs'),
  ('TRX-A01010', 'PRD-A-KEL-0122', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01010', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 1, 1520000, 1520000, 1400000, 0, 120000, 'pcs'),
  ('TRX-A01010', 'PRD-A-AKS-0053', 'Memory Card 16GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs'),
  ('TRX-A01010', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00153', '2026-11-17 16:45:09+07:00', 'Umum', 'Admin', 70000, 0, 70000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100152', '', '', '', 18000, NULL, '2026-11-17 16:45:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00153', 'PRD-A-KEL-0136', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00153', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 2, 20000, 40000, 14000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00310', '2026-11-17 16:29:00+07:00', 'Dewi Lestari 4', 'Admin', 804000, 0, 0, 804000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100309', '', '', '', 251000, NULL, '2026-11-17 16:29:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00310', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 1, 590000, 590000, 400000, 0, 190000, 'pcs'),
  ('TRX-A00310', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 3, 28000, 84000, 24000, 0, 12000, 'pcs'),
  ('TRX-A00310', 'PRD-A-KEL-0068', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00310', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01326', '2026-11-17 16:26:23+07:00', 'Umum', 'Admin', 16145000, 0, 16145000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101325', '', '', '', 1955000, NULL, '2026-11-17 16:26:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01326', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 3, 2230000, 6690000, 2000000, 0, 690000, 'pcs'),
  ('TRX-A01326', 'PRD-A-KEL-0160', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A01326', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A01326', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A01326', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 2, 1310000, 2620000, 1100000, 0, 420000, 'pcs'),
  ('TRX-A01326', 'PRD-A-KEL-0112', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01326', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 2, 1810000, 3620000, 1600000, 0, 420000, 'pcs'),
  ('TRX-A01326', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01421', '2026-11-17 16:08:43+07:00', 'Eko Saputra', 'Admin', 8121000, 0, 8121000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101420', '', '', '', 1568000, NULL, '2026-11-17 16:08:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01421', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A01421', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 1, 1040000, 1040000, 900000, 0, 140000, 'pcs'),
  ('TRX-A01421', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 3, 21000, 63000, 17000, 0, 12000, 'pcs'),
  ('TRX-A01421', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 1, 1770000, 1770000, 1700000, 0, 70000, 'pcs'),
  ('TRX-A01421', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 1, 940000, 940000, 700000, 0, 240000, 'pcs'),
  ('TRX-A01421', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 2, 690000, 1380000, 500000, 0, 380000, 'pcs'),
  ('TRX-A01421', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 3, 930000, 2790000, 700000, 0, 690000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00141', '2026-11-17 15:52:19+07:00', 'Joko Prasetyo 4', 'Admin', 13538000, 0, 6769000, 6769000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100140', '', '', '', 2012000, NULL, '2026-11-17 15:52:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00141', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 3, 1540000, 4620000, 1300000, 0, 720000, 'pcs'),
  ('TRX-A00141', 'PRD-A-KEL-0151', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00141', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 1, 1270000, 1270000, 1100000, 0, 170000, 'pcs'),
  ('TRX-A00141', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 1, 43000, 43000, 32000, 0, 11000, 'pcs'),
  ('TRX-A00141', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 2, 2550000, 5100000, 2300000, 0, 500000, 'pcs'),
  ('TRX-A00141', 'PRD-A-AKS-0150', 'Memory Card 16GB', 1, 55000, 55000, 41000, 0, 14000, 'pcs'),
  ('TRX-A00141', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 2, 25000, 50000, 16000, 0, 18000, 'pcs'),
  ('TRX-A00141', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 3, 790000, 2370000, 600000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00588', '2026-11-17 15:45:02+07:00', 'Fajar Nugroho 2', 'Admin', 2950000, 0, 2950000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100587', '', '', '', 150000, NULL, '2026-11-17 15:45:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00588', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 1, 2950000, 2950000, 2800000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01253', '2026-11-17 15:38:20+07:00', 'Umum', 'Admin', 9589000, 0, 4794500, 4794500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101252', '', '', '', 772000, NULL, '2026-11-17 15:38:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01253', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 1, 22000, 22000, 15000, 0, 7000, 'pcs'),
  ('TRX-A01253', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 2, 2560000, 5120000, 2400000, 0, 320000, 'pcs'),
  ('TRX-A01253', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 1, 42000, 42000, 30000, 0, 12000, 'pcs'),
  ('TRX-A01253', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 1, 1860000, 1860000, 1700000, 0, 160000, 'pcs'),
  ('TRX-A01253', 'PRD-A-AKS-0079', 'Handsfree Oppo', 3, 51000, 153000, 43000, 0, 24000, 'pcs'),
  ('TRX-A01253', 'PRD-A-AKS-0049', 'Memory Card 32GB', 3, 84000, 252000, 81000, 0, 9000, 'pcs'),
  ('TRX-A01253', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 1, 2140000, 2140000, 1900000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00169', '2026-11-17 15:18:35+07:00', 'Ayu Lestari 2', 'Admin', 15078000, 0, 15078000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100168', '', '', '', 1883000, NULL, '2026-11-17 15:18:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00169', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A00169', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 2, 2290000, 4580000, 2100000, 0, 380000, 'pcs'),
  ('TRX-A00169', 'PRD-A-AKS-0150', 'Memory Card 16GB', 3, 55000, 165000, 41000, 0, 42000, 'pcs'),
  ('TRX-A00169', 'PRD-A-KEL-0078', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00169', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 3, 1670000, 5010000, 1500000, 0, 510000, 'pcs'),
  ('TRX-A00169', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 3, 1050000, 3150000, 900000, 0, 450000, 'pcs'),
  ('TRX-A00169', 'PRD-A-KEL-0053', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00169', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 2, 1040000, 2080000, 800000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00253', '2026-11-17 15:18:26+07:00', 'Eko Saputra 5', 'Admin', 2209000, 0, 2209000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100252', '', '', '', 254000, NULL, '2026-11-17 15:18:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00253', 'PRD-A-KEL-0012', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00253', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 1, 2140000, 2140000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A00253', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00253', 'PRD-A-KEL-0142', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00213', '2026-11-17 15:11:44+07:00', 'Umum', 'Admin', 19877000, 0, 9938500, 9938500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100212', '', '', '', 1621500, NULL, '2026-11-17 15:11:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00213', 'PRD-A-KEL-0050', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00213', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A00213', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 1, 2050000, 2050000, 2000000, 0, 50000, 'pcs'),
  ('TRX-A00213', 'PRD-A-AKS-0175', 'Kartu Perdana Tri', 3, 28000, 84000, 18000, 0, 30000, 'pcs'),
  ('TRX-A00213', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 2, 1150000, 2300000, 900000, 0, 500000, 'pcs'),
  ('TRX-A00213', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs'),
  ('TRX-A00213', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 2, 2350000, 4700000, 2300000, 0, 100000, 'pcs'),
  ('TRX-A00213', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 1, 2580000, 2580000, 2500000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01531', '2026-11-17 15:10:36+07:00', 'Umum', 'Admin', 1769000, 0, 1769000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101530', '', '', '', 261000, NULL, '2026-11-17 15:10:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01531', 'PRD-A-KEL-0108', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01531', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 1, 1620000, 1620000, 1400000, 0, 220000, 'pcs'),
  ('TRX-A01531', 'PRD-A-KEL-0013', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01531', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 1, 21000, 21000, 9000, 0, 12000, 'pcs'),
  ('TRX-A01531', 'PRD-A-KEL-0145', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01531', 'PRD-A-KEL-0015', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00514', '2026-11-17 15:06:54+07:00', 'Umum', 'Admin', 694000, 0, 347000, 347000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100513', '', '', '', 246000, NULL, '2026-11-17 15:06:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00514', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 1, 54000, 54000, 39000, 0, 15000, 'pcs'),
  ('TRX-A00514', 'PRD-A-AKS-0137', 'Tempered Glass Samsung', 2, 18000, 36000, 10000, 0, 16000, 'pcs'),
  ('TRX-A00514', 'PRD-A-HP-0143', 'HP NOKIA Y53 4/128 49361', 1, 450000, 450000, 300000, 0, 150000, 'pcs'),
  ('TRX-A00514', 'PRD-A-KEL-0132', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00514', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A00514', 'PRD-A-AKS-0234', 'Case Samsung A03', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A00514', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 3, 18000, 54000, 8000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00572', '2026-11-17 15:00:38+07:00', 'Ayu Lestari 3', 'Admin', 5166000, 0, 5166000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100571', '', '', '', 498000, NULL, '2026-11-17 15:00:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00572', 'PRD-A-AKS-0088', 'Case Redmi 9A', 2, 43000, 86000, 34000, 0, 18000, 'pcs'),
  ('TRX-A00572', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 2, 2540000, 5080000, 2300000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00731', '2026-11-17 14:55:08+07:00', 'Eko Saputra', 'Admin', 2424000, 0, 2424000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100730', '', '', '', 268000, NULL, '2026-11-17 14:55:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00731', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 1, 960000, 960000, 800000, 0, 160000, 'pcs'),
  ('TRX-A00731', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 2, 26000, 52000, 16000, 0, 20000, 'pcs'),
  ('TRX-A00731', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs'),
  ('TRX-A00731', 'PRD-A-AKS-0021', 'Handsfree Samsung', 2, 18000, 36000, 10000, 0, 16000, 'pcs'),
  ('TRX-A00731', 'PRD-A-KEL-0182', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00728', '2026-11-17 14:42:57+07:00', 'Fajar Nugroho 4', 'Admin', 1201000, 0, 1201000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100727', '', '', '', 259000, NULL, '2026-11-17 14:42:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00728', 'PRD-A-AKS-0149', 'Case Samsung A03', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00728', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 1, 1150000, 1150000, 900000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01412', '2026-11-17 14:26:12+07:00', 'Umum', 'Admin', 14990000, 0, 14990000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101411', '', '', '', 1290000, NULL, '2026-11-17 14:26:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01412', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A01412', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A01412', 'PRD-A-HP-0142', 'HP VIVO A57 3/32 10794', 1, 740000, 740000, 500000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00389', '2026-11-17 14:26:00+07:00', 'Andi Kurnia 4', 'Admin', 5484000, 0, 2742000, 2742000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100388', '', '', '', 226000, NULL, '2026-11-17 14:26:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00389', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 2, 2700000, 5400000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A00389', 'PRD-A-KEL-0114', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00389', 'PRD-A-AKS-0235', 'Handsfree Xiaomi', 2, 32000, 64000, 22000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00593', '2026-11-17 14:25:53+07:00', 'Maya Putri 3', 'Admin', 5464000, 0, 5464000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100592', '', '', '', 192000, NULL, '2026-11-17 14:25:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00593', 'PRD-A-AKS-0123', 'Voucher Indosat 5GB', 3, 28000, 84000, 24000, 0, 12000, 'pcs'),
  ('TRX-A00593', 'PRD-A-HP-0334', 'HP SAMSUNG Y16 3/64 17970', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00920', '2026-11-17 14:08:13+07:00', 'Umum', 'Admin', 12461000, 0, 6230500, 6230500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100919', '', '', '', 1628000, NULL, '2026-11-17 14:08:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00920', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 3, 790000, 2370000, 600000, 0, 570000, 'pcs'),
  ('TRX-A00920', 'PRD-A-AKS-0230', 'Handsfree Oppo', 3, 52000, 156000, 38000, 0, 42000, 'pcs'),
  ('TRX-A00920', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 2, 1860000, 3720000, 1700000, 0, 320000, 'pcs'),
  ('TRX-A00920', 'PRD-A-KEL-0159', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A00920', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 2, 2220000, 4440000, 2000000, 0, 440000, 'pcs'),
  ('TRX-A00920', 'PRD-A-KEL-0048', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00920', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 1, 1750000, 1750000, 1500000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01333', '2026-11-17 13:47:32+07:00', 'Lilis Suryani 3', 'Admin', 2508000, 0, 2508000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101332', '', '', '', 155000, NULL, '2026-11-17 13:47:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01333', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 3, 23000, 69000, 16000, 0, 21000, 'pcs'),
  ('TRX-A01333', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01333', 'PRD-A-AKS-0079', 'Handsfree Oppo', 1, 51000, 51000, 43000, 0, 8000, 'pcs'),
  ('TRX-A01333', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 1, 2320000, 2320000, 2200000, 0, 120000, 'pcs'),
  ('TRX-A01333', 'PRD-A-AKS-0223', 'Memory Card 32GB', 1, 51000, 51000, 48000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01477', '2026-11-17 13:34:06+07:00', 'Umum', 'Admin', 18000, 0, 9000, 9000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101476', '', '', '', 6000, NULL, '2026-11-17 13:34:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01477', 'PRD-A-KEL-0171', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01921', '2026-11-17 13:29:50+07:00', 'Fajar Nugroho 3', 'Admin', 4180000, 0, 0, 4180000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101920', '', '', '', 380000, NULL, '2026-11-17 13:29:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01921', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 2, 2090000, 4180000, 1900000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01026', '2026-11-17 13:28:35+07:00', 'Joko Prasetyo 3', 'Admin', 2030000, 0, 2030000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101025', '', '', '', 230000, NULL, '2026-11-17 13:28:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01026', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A01026', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 1, 1170000, 1170000, 1100000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00099', '2026-11-17 13:02:05+07:00', 'Intan Permata 4', 'Admin', 14944000, 0, 14944000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100098', '', '', '', 1163400, NULL, '2026-11-17 13:02:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00099', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 2, 1960000, 3920000, 1900000, 0, 120000, 'pcs'),
  ('TRX-A00099', 'PRD-A-AKS-0224', 'Case Samsung A03', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A00099', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 1, 960000, 960000, 800000, 0, 160000, 'pcs'),
  ('TRX-A00099', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 2, 1670000, 3340000, 1600000, 0, 140000, 'pcs'),
  ('TRX-A00099', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 2, 580000, 1160000, 400000, 0, 360000, 'pcs'),
  ('TRX-A00099', 'PRD-A-KEL-0076', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00099', 'PRD-A-AKS-0223', 'Memory Card 32GB', 3, 51000, 153000, 48000, 0, 9000, 'pcs'),
  ('TRX-A00099', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 2, 2680000, 5360000, 2500000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01613', '2026-11-17 12:42:57+07:00', 'Umum', 'Admin', 5621000, 0, 5621000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101612', '', '', '', 557000, NULL, '2026-11-17 12:42:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01613', 'PRD-A-AKS-0125', 'Handsfree Samsung', 3, 52000, 156000, 37000, 0, 45000, 'pcs'),
  ('TRX-A01613', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A01613', 'PRD-A-KEL-0198', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A01613', 'PRD-A-AKS-0223', 'Memory Card 32GB', 2, 51000, 102000, 48000, 0, 6000, 'pcs'),
  ('TRX-A01613', 'PRD-A-KEL-0011', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01613', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 3, 20000, 60000, 14000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01526', '2026-11-17 12:25:44+07:00', 'Maya Putri 2', 'Admin', 24000, 0, 12000, 12000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101525', '', '', '', 6000, NULL, '2026-11-17 12:25:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01526', 'PRD-A-KEL-0144', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00266', '2026-11-17 12:19:09+07:00', 'Umum', 'Admin', 2880000, 0, 2880000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100265', '', '', '', 510000, NULL, '2026-11-17 12:19:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00266', 'PRD-A-HP-0175', 'HP REALME S23 4/64 80825', 2, 410000, 820000, 300000, 0, 220000, 'pcs'),
  ('TRX-A00266', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 1, 1850000, 1850000, 1600000, 0, 250000, 'pcs'),
  ('TRX-A00266', 'PRD-A-AKS-0163', 'Kartu Perdana XL', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A00266', 'PRD-A-AKS-0177', 'Case Samsung A03', 3, 39000, 117000, 34000, 0, 15000, 'pcs'),
  ('TRX-A00266', 'PRD-A-KEL-0056', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01153', '2026-11-17 11:39:51+07:00', 'Nur Halimah 3', 'Admin', 2159000, 0, 2159000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101152', '', '', '', 357000, NULL, '2026-11-17 11:39:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01153', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 1, 620000, 620000, 500000, 0, 120000, 'pcs'),
  ('TRX-A01153', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 1, 1410000, 1410000, 1200000, 0, 210000, 'pcs'),
  ('TRX-A01153', 'PRD-A-AKS-0193', 'Case Oppo A57', 3, 25000, 75000, 21000, 0, 12000, 'pcs'),
  ('TRX-A01153', 'PRD-A-KEL-0163', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A01153', 'PRD-A-KEL-0144', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01153', 'PRD-A-KEL-0011', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01433', '2026-11-17 11:17:55+07:00', 'Maya Putri 4', 'Admin', 7906000, 0, 7906000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101432', '', '', '', 457000, NULL, '2026-11-17 11:17:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01433', 'PRD-A-KEL-0019', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01433', 'PRD-A-KEL-0045', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01433', 'PRD-A-AKS-0201', 'Memory Card 32GB', 1, 38000, 38000, 27000, 0, 11000, 'pcs'),
  ('TRX-A01433', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 2, 620000, 1240000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01433', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A01433', 'PRD-A-KEL-0030', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00948', '2026-11-17 11:09:17+07:00', 'Yusuf Maulana 4', 'Admin', 5234000, 0, 5234000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100947', '', '', '', 516000, NULL, '2026-11-17 11:09:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00948', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 2, 1990000, 3980000, 1900000, 0, 180000, 'pcs'),
  ('TRX-A00948', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 3, 410000, 1230000, 300000, 0, 330000, 'pcs'),
  ('TRX-A00948', 'PRD-A-KEL-0172', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01044', '2026-11-17 11:03:24+07:00', 'Siti Aisyah', 'Admin', 3878000, 0, 3878000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101043', '', '', '', 451000, NULL, '2026-11-17 11:03:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01044', 'PRD-A-KEL-0030', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01044', 'PRD-A-KEL-0145', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01044', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01044', 'PRD-A-AKS-0236', 'Memory Card 64GB', 3, 72000, 216000, 63000, 0, 27000, 'pcs'),
  ('TRX-A01044', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs'),
  ('TRX-A01044', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 1, 2010000, 2010000, 1800000, 0, 210000, 'pcs'),
  ('TRX-A01044', 'PRD-A-AKS-0053', 'Memory Card 16GB', 2, 41000, 82000, 28000, 0, 26000, 'pcs'),
  ('TRX-A01044', 'PRD-A-AKS-0183', 'Kabel Charger 2m', 1, 14000, 14000, 10000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01450', '2026-11-17 11:01:58+07:00', 'Fitri Rahmawati 5', 'Admin', 1652000, 0, 1652000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101449', '', '', '', 311000, NULL, '2026-11-17 11:01:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01450', 'PRD-A-KEL-0150', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01450', 'PRD-A-AKS-0188', 'Batre Oppo A57', 2, 52000, 104000, 40000, 0, 24000, 'pcs'),
  ('TRX-A01450', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs'),
  ('TRX-A01450', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 2, 620000, 1240000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01450', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01450', 'PRD-A-AKS-0236', 'Memory Card 64GB', 3, 72000, 216000, 63000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01247', '2026-11-17 10:28:23+07:00', 'Umum', 'Admin', 3388000, 0, 1694000, 1694000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101246', '', '', '', 353000, NULL, '2026-11-17 10:28:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01247', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 2, 51000, 102000, 47000, 0, 8000, 'pcs'),
  ('TRX-A01247', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 1, 2490000, 2490000, 2300000, 0, 190000, 'pcs'),
  ('TRX-A01247', 'PRD-A-KEL-0085', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01247', 'PRD-A-HP-0216', 'HP REDMI Y91C 4/128 56889', 1, 740000, 740000, 600000, 0, 140000, 'pcs'),
  ('TRX-A01247', 'PRD-A-KEL-0030', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01943', '2026-11-17 09:47:31+07:00', 'Ayu Lestari', 'Admin', 2160000, 0, 2160000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101942', '', '', '', 160000, NULL, '2026-11-17 09:47:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01943', 'PRD-A-HP-0536', 'HP ITEL HOT30i 8/256 76951', 2, 1080000, 2160000, 1000000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01092', '2026-11-17 09:42:27+07:00', 'Umum', 'Admin', 4840000, 0, 0, 4840000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101091', '', '', '', 240000, NULL, '2026-11-17 09:42:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01092', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00621', '2026-11-17 09:41:06+07:00', 'Hendra Gunawan 4', 'Admin', 88000, 0, 88000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100620', '', '', '', 17000, NULL, '2026-11-17 09:41:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00621', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 2, 29000, 58000, 25000, 0, 8000, 'pcs'),
  ('TRX-A00621', 'PRD-A-KEL-0165', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01235', '2026-11-17 09:31:54+07:00', 'Eko Saputra 2', 'Admin', 4036000, 0, 4036000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101234', '', '', '', 787000, NULL, '2026-11-17 09:31:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01235', 'PRD-A-KEL-0022', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01235', 'PRD-A-KEL-0002', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01235', 'PRD-A-HP-0510', 'HP SAMSUNG Y91C 2/32 52223', 3, 350000, 1050000, 300000, 0, 150000, 'pcs'),
  ('TRX-A01235', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 1, 1110000, 1110000, 1000000, 0, 110000, 'pcs'),
  ('TRX-A01235', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 3, 25000, 75000, 17000, 0, 24000, 'pcs'),
  ('TRX-A01235', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 1, 41000, 41000, 30000, 0, 11000, 'pcs'),
  ('TRX-A01235', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 3, 560000, 1680000, 400000, 0, 480000, 'pcs'),
  ('TRX-A01235', 'PRD-A-KEL-0125', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00838', '2026-11-17 09:29:37+07:00', 'Umum', 'Admin', 11144000, 0, 5572000, 5572000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100837', '', '', '', 759000, NULL, '2026-11-17 09:29:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00838', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 3, 2150000, 6450000, 2100000, 0, 150000, 'pcs'),
  ('TRX-A00838', 'PRD-A-AKS-0137', 'Tempered Glass Samsung', 3, 18000, 54000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00838', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 3, 42000, 126000, 27000, 0, 45000, 'pcs'),
  ('TRX-A00838', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00838', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 2, 57000, 114000, 45000, 0, 24000, 'pcs'),
  ('TRX-A00838', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 1, 15000, 15000, 10000, 0, 5000, 'pcs'),
  ('TRX-A00838', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A00838', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01788', '2026-11-17 09:12:16+07:00', 'Maya Putri 2', 'Admin', 3858000, 0, 1929000, 1929000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101787', '', '', '', 389000, NULL, '2026-11-17 09:12:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01788', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 1, 520000, 520000, 400000, 0, 120000, 'pcs'),
  ('TRX-A01788', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 2, 1630000, 3260000, 1500000, 0, 260000, 'pcs'),
  ('TRX-A01788', 'PRD-A-AKS-0082', 'Case Redmi 9A', 3, 26000, 78000, 23000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00759', '2026-11-17 09:07:26+07:00', 'Umum', 'Admin', 1770000, 0, 1770000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100758', '', '', '', 639000, NULL, '2026-11-17 09:07:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00759', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00759', 'PRD-A-AKS-0099', 'Tempered Glass Xiaomi', 1, 27000, 27000, 16000, 0, 11000, 'pcs'),
  ('TRX-A00759', 'PRD-A-AKS-0053', 'Memory Card 16GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs'),
  ('TRX-A00759', 'PRD-A-AKS-0172', 'Case Samsung A03', 2, 24000, 48000, 20000, 0, 8000, 'pcs'),
  ('TRX-A00759', 'PRD-A-KEL-0008', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00759', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 1, 75000, 75000, 50000, 0, 25000, 'pcs'),
  ('TRX-A00759', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 1, 39000, 39000, 30000, 0, 9000, 'pcs'),
  ('TRX-A00759', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 3, 480000, 1440000, 300000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01366', '2026-11-17 08:54:53+07:00', 'Umum', 'Admin', 22055000, 0, 22055000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101365', '', '', '', 1849000, NULL, '2026-11-17 08:54:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01366', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 1, 2050000, 2050000, 2000000, 0, 50000, 'pcs'),
  ('TRX-A01366', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A01366', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 3, 15000, 45000, 8000, 0, 21000, 'pcs'),
  ('TRX-A01366', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 3, 1520000, 4560000, 1300000, 0, 660000, 'pcs'),
  ('TRX-A01366', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 3, 910000, 2730000, 700000, 0, 630000, 'pcs'),
  ('TRX-A01366', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 3, 2350000, 7050000, 2300000, 0, 150000, 'pcs'),
  ('TRX-A01366', 'PRD-A-AKS-0150', 'Memory Card 16GB', 2, 55000, 110000, 41000, 0, 28000, 'pcs'),
  ('TRX-A01366', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 2, 1700000, 3400000, 1600000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01956', '2026-11-17 08:38:57+07:00', 'Umum', 'Admin', 165000, 0, 82500, 82500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101955', '', '', '', 42000, NULL, '2026-11-17 08:38:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01956', 'PRD-A-AKS-0150', 'Memory Card 16GB', 3, 55000, 165000, 41000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00929', '2026-11-17 08:24:43+07:00', 'Fajar Nugroho 2', 'Admin', 13429000, 0, 6714500, 6714500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100928', '', '', '', 1151000, NULL, '2026-11-17 08:24:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00929', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 2, 2090000, 4180000, 2000000, 0, 180000, 'pcs'),
  ('TRX-A00929', 'PRD-A-KEL-0007', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00929', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A00929', 'PRD-A-KEL-0160', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00929', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 3, 20000, 60000, 14000, 0, 18000, 'pcs'),
  ('TRX-A00929', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 2, 1170000, 2340000, 1100000, 0, 140000, 'pcs'),
  ('TRX-A00929', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00729', '2026-11-17 08:08:07+07:00', 'Fajar Nugroho 5', 'Admin', 13223000, 0, 0, 13223000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100728', '', '', '', 727000, NULL, '2026-11-17 08:08:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00729', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00729', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs'),
  ('TRX-A00729', 'PRD-A-AKS-0057', 'Case Redmi 9A', 1, 37000, 37000, 26000, 0, 11000, 'pcs'),
  ('TRX-A00729', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs'),
  ('TRX-A00729', 'PRD-A-HP-0043', 'HP NOKIA A16 2/32 10126', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A00729', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 3, 28000, 84000, 14000, 0, 42000, 'pcs'),
  ('TRX-A00729', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 1, 2590000, 2590000, 2500000, 0, 90000, 'pcs'),
  ('TRX-A00729', 'PRD-A-KEL-0177', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00497', '2026-11-16 20:55:34+07:00', 'Siti Aisyah 5', 'Admin', 14870000, 0, 14870000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100496', '', '', '', 898000, NULL, '2026-11-16 20:55:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00497', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs'),
  ('TRX-A00497', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 2, 1050000, 2100000, 1000000, 0, 100000, 'pcs'),
  ('TRX-A00497', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00497', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A00497', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 1, 1520000, 1520000, 1300000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00605', '2026-11-16 20:28:48+07:00', 'Umum', 'Admin', 7784000, 0, 3892000, 3892000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100604', '', '', '', 351500, NULL, '2026-11-16 20:28:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00605', 'PRD-A-KEL-0039', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00605', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 3, 2500000, 7500000, 2400000, 0, 300000, 'pcs'),
  ('TRX-A00605', 'PRD-A-AKS-0031', 'Batre Samsung J1', 1, 58000, 58000, 50000, 0, 8000, 'pcs'),
  ('TRX-A00605', 'PRD-A-AKS-0055', 'Memory Card 16GB', 3, 66000, 198000, 56000, 0, 30000, 'pcs'),
  ('TRX-A00605', 'PRD-A-KEL-0091', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00605', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 1, 25000, 25000, 13000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00154', '2026-11-16 20:08:40+07:00', 'Umum', 'Admin', 14395000, 0, 14395000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100153', '', '', '', 1349000, NULL, '2026-11-16 20:08:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00154', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 2, 1710000, 3420000, 1500000, 0, 420000, 'pcs'),
  ('TRX-A00154', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 2, 51000, 102000, 44000, 0, 14000, 'pcs'),
  ('TRX-A00154', 'PRD-A-HP-0485', 'HP ITEL Y91C 3/64 10965', 3, 2820000, 8460000, 2600000, 0, 660000, 'pcs'),
  ('TRX-A00154', 'PRD-A-KEL-0163', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A00154', 'PRD-A-KEL-0050', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00154', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 3, 15000, 45000, 10000, 0, 15000, 'pcs'),
  ('TRX-A00154', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00996', '2026-11-16 19:58:47+07:00', 'Fajar Nugroho', 'Admin', 16243000, 0, 16243000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100995', '', '', '', 1153500, NULL, '2026-11-16 19:58:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00996', 'PRD-A-AKS-0055', 'Memory Card 16GB', 3, 66000, 198000, 56000, 0, 30000, 'pcs'),
  ('TRX-A00996', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 2, 1180000, 2360000, 1100000, 0, 160000, 'pcs'),
  ('TRX-A00996', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 1, 2160000, 2160000, 2100000, 0, 60000, 'pcs'),
  ('TRX-A00996', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 3, 2230000, 6690000, 2000000, 0, 690000, 'pcs'),
  ('TRX-A00996', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00996', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 2, 2400000, 4800000, 2300000, 0, 200000, 'pcs'),
  ('TRX-A00996', 'PRD-A-KEL-0008', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01575', '2026-11-16 19:17:36+07:00', 'Siti Aisyah 4', 'Admin', 8160000, 0, 0, 8160000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101574', '', '', '', 849000, NULL, '2026-11-16 19:17:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01575', 'PRD-A-KEL-0043', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01575', 'PRD-A-KEL-0091', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01575', 'PRD-A-KEL-0085', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01575', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 3, 25000, 75000, 17000, 0, 24000, 'pcs'),
  ('TRX-A01575', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 3, 1490000, 4470000, 1300000, 0, 570000, 'pcs'),
  ('TRX-A01575', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 3, 1180000, 3540000, 1100000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01053', '2026-11-16 18:52:45+07:00', 'Intan Permata 4', 'Admin', 5926000, 0, 5926000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101052', '', '', '', 222000, NULL, '2026-11-16 18:52:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01053', 'PRD-A-KEL-0139', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01053', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs'),
  ('TRX-A01053', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 2, 1760000, 3520000, 1700000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01971', '2026-11-16 18:47:01+07:00', 'Umum', 'Admin', 220000, 0, 220000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101970', '', '', '', 42000, NULL, '2026-11-16 18:47:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01971', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 2, 74000, 148000, 59000, 0, 30000, 'pcs'),
  ('TRX-A01971', 'PRD-A-AKS-0102', 'Case Vivo Y20', 2, 36000, 72000, 30000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01802', '2026-11-16 18:32:04+07:00', 'Intan Permata 5', 'Admin', 2989000, 0, 0, 2989000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101801', '', '', '', 240000, NULL, '2026-11-16 18:32:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01802', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs'),
  ('TRX-A01802', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01802', 'PRD-A-AKS-0027', 'Batre Samsung J1', 3, 51000, 153000, 39000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00853', '2026-11-16 17:51:19+07:00', 'Umum', 'Admin', 7632000, 0, 7632000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100852', '', '', '', 822000, NULL, '2026-11-16 17:51:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00853', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 2, 2720000, 5440000, 2600000, 0, 240000, 'pcs'),
  ('TRX-A00853', 'PRD-A-AKS-0045', 'Memory Card 16GB', 2, 58000, 116000, 53000, 0, 10000, 'pcs'),
  ('TRX-A00853', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 3, 690000, 2070000, 500000, 0, 570000, 'pcs'),
  ('TRX-A00853', 'PRD-A-KEL-0185', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00814', '2026-11-16 17:50:59+07:00', 'Umum', 'Admin', 122000, 0, 122000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100813', '', '', '', 38000, NULL, '2026-11-16 17:50:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00814', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00814', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 2, 35000, 70000, 20000, 0, 30000, 'pcs'),
  ('TRX-A00814', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00173', '2026-11-16 17:49:11+07:00', 'Rudi Hartono 4', 'Admin', 7091000, 0, 7091000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100172', '', '', '', 563000, NULL, '2026-11-16 17:49:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00173', 'PRD-A-KEL-0034', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00173', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00173', 'PRD-A-AKS-0201', 'Memory Card 32GB', 3, 38000, 114000, 27000, 0, 33000, 'pcs'),
  ('TRX-A00173', 'PRD-A-AKS-0030', 'Case Samsung A03', 3, 25000, 75000, 20000, 0, 15000, 'pcs'),
  ('TRX-A00173', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 2, 1170000, 2340000, 1100000, 0, 140000, 'pcs'),
  ('TRX-A00173', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 1, 1820000, 1820000, 1700000, 0, 120000, 'pcs'),
  ('TRX-A00173', 'PRD-A-KEL-0163', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A00173', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00446', '2026-11-16 17:42:57+07:00', 'Toko O''Brien', 'Admin', 3355000, 0, 0, 3355000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100445', '', '', '', 282400, NULL, '2026-11-16 17:42:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00446', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 2, 55000, 110000, 49000, 0, 12000, 'pcs'),
  ('TRX-A00446', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 1, 1670000, 1670000, 1600000, 0, 70000, 'pcs'),
  ('TRX-A00446', 'PRD-A-KEL-0050', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00446', 'PRD-A-KEL-0131', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00446', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs'),
  ('TRX-A00446', 'PRD-A-KEL-0065', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00446', 'PRD-A-KEL-0076', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00446', 'PRD-A-AKS-0105', 'Case Samsung A03', 2, 36000, 72000, 21000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00736', '2026-11-16 17:25:07+07:00', 'Fajar Nugroho 2', 'Admin', 12661000, 0, 12661000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100735', '', '', '', 875000, NULL, '2026-11-16 17:25:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00736', 'PRD-A-KEL-0068', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00736', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 2, 2300000, 4600000, 2200000, 0, 200000, 'pcs'),
  ('TRX-A00736', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 3, 39000, 117000, 35000, 0, 12000, 'pcs'),
  ('TRX-A00736', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 3, 460000, 1380000, 400000, 0, 180000, 'pcs'),
  ('TRX-A00736', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 1, 1590000, 1590000, 1500000, 0, 90000, 'pcs'),
  ('TRX-A00736', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 2, 22000, 44000, 15000, 0, 14000, 'pcs'),
  ('TRX-A00736', 'PRD-A-HP-0536', 'HP ITEL HOT30i 8/256 76951', 3, 1080000, 3240000, 1000000, 0, 240000, 'pcs'),
  ('TRX-A00736', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 1, 1630000, 1630000, 1500000, 0, 130000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01888', '2026-11-16 17:19:07+07:00', 'Sri Wahyuni 4', 'Admin', 1960000, 0, 1960000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101887', '', '', '', 172000, NULL, '2026-11-16 17:19:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01888', 'PRD-A-KEL-0132', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01888', 'PRD-A-KEL-0091', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01888', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A01888', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00579', '2026-11-16 16:58:11+07:00', 'Agus Wijaya 2', 'Admin', 9109000, 0, 9109000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100578', '', '', '', 907000, NULL, '2026-11-16 16:58:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00579', 'PRD-A-AKS-0099', 'Tempered Glass Xiaomi', 2, 27000, 54000, 16000, 0, 22000, 'pcs'),
  ('TRX-A00579', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 1, 2580000, 2580000, 2500000, 0, 80000, 'pcs'),
  ('TRX-A00579', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 3, 1680000, 5040000, 1500000, 0, 540000, 'pcs'),
  ('TRX-A00579', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00579', 'PRD-A-AKS-0116', 'Memory Card 16GB', 3, 88000, 264000, 76000, 0, 36000, 'pcs'),
  ('TRX-A00579', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 1, 1010000, 1010000, 800000, 0, 210000, 'pcs'),
  ('TRX-A00579', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 1, 41000, 41000, 34000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01974', '2026-11-16 16:57:10+07:00', 'Andi Kurnia 5', 'Admin', 11076000, 0, 11076000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101973', '', '', '', 1091000, NULL, '2026-11-16 16:57:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01974', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 2, 480000, 960000, 400000, 0, 160000, 'pcs'),
  ('TRX-A01974', 'PRD-A-AKS-0231', 'Case Samsung A03', 1, 34000, 34000, 27000, 0, 7000, 'pcs'),
  ('TRX-A01974', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A01974', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 1, 2610000, 2610000, 2400000, 0, 210000, 'pcs'),
  ('TRX-A01974', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 2, 2920000, 5840000, 2700000, 0, 440000, 'pcs'),
  ('TRX-A01974', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 2, 29000, 58000, 15000, 0, 28000, 'pcs'),
  ('TRX-A01974', 'PRD-A-KEL-0026', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00539', '2026-11-16 16:56:03+07:00', 'Umum', 'Admin', 3336000, 0, 0, 3336000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100538', '', '', '', 276000, NULL, '2026-11-16 16:56:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00539', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 2, 1620000, 3240000, 1500000, 0, 240000, 'pcs'),
  ('TRX-A00539', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 2, 30000, 60000, 18000, 0, 24000, 'pcs'),
  ('TRX-A00539', 'PRD-A-KEL-0054', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01947', '2026-11-16 16:43:28+07:00', 'Umum', 'Admin', 10790000, 0, 10790000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101946', '', '', '', 1290000, NULL, '2026-11-16 16:43:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01947', 'PRD-A-HP-0075', 'HP VIVO Y53 2/16 24312', 3, 520000, 1560000, 300000, 0, 660000, 'pcs'),
  ('TRX-A01947', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 3, 1110000, 3330000, 1000000, 0, 330000, 'pcs'),
  ('TRX-A01947', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 2, 2950000, 5900000, 2800000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00773', '2026-11-16 16:22:54+07:00', 'Siti Aisyah', 'Admin', 12774000, 0, 12774000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100772', '', '', '', 825500, NULL, '2026-11-16 16:22:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00773', 'PRD-A-KEL-0171', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00773', 'PRD-A-AKS-0102', 'Case Vivo Y20', 1, 36000, 36000, 30000, 0, 6000, 'pcs'),
  ('TRX-A00773', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 3, 1630000, 4890000, 1500000, 0, 390000, 'pcs'),
  ('TRX-A00773', 'PRD-A-HP-0491', 'HP REDMI V7 2/32 86419', 1, 2300000, 2300000, 2200000, 0, 100000, 'pcs'),
  ('TRX-A00773', 'PRD-A-HP-0406', 'HP REDMI Y55S 4/128 92726', 2, 2760000, 5520000, 2600000, 0, 320000, 'pcs'),
  ('TRX-A00773', 'PRD-A-KEL-0008', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A00773', 'PRD-A-KEL-0109', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01830', '2026-11-16 16:22:47+07:00', 'Umum', 'Admin', 14240000, 0, 14240000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101829', '', '', '', 1931000, NULL, '2026-11-16 16:22:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01830', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A01830', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 1, 24000, 24000, 16000, 0, 8000, 'pcs'),
  ('TRX-A01830', 'PRD-A-HP-0030', 'HP NOKIA 9A 4/128 49838', 3, 700000, 2100000, 500000, 0, 600000, 'pcs'),
  ('TRX-A01830', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 2, 1540000, 3080000, 1400000, 0, 280000, 'pcs'),
  ('TRX-A01830', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 3, 35000, 105000, 20000, 0, 45000, 'pcs'),
  ('TRX-A01830', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 1, 2090000, 2090000, 1900000, 0, 190000, 'pcs'),
  ('TRX-A01830', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 3, 1540000, 4620000, 1300000, 0, 720000, 'pcs'),
  ('TRX-A01830', 'PRD-A-AKS-0216', 'Memory Card 16GB', 1, 41000, 41000, 33000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00012', '2026-11-16 16:19:44+07:00', 'Umum', 'Admin', 6284000, 0, 3142000, 3142000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100011', '', '', '', 468000, NULL, '2026-11-16 16:19:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00012', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A00012', 'PRD-A-KEL-0148', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00012', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 2, 2290000, 4580000, 2100000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00190', '2026-11-16 16:10:52+07:00', 'Umum', 'Admin', 3526000, 0, 1763000, 1763000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100189', '', '', '', 427000, NULL, '2026-11-16 16:10:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00190', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs'),
  ('TRX-A00190', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 2, 1700000, 3400000, 1500000, 0, 400000, 'pcs'),
  ('TRX-A00190', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 3, 15000, 45000, 10000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00415', '2026-11-16 16:09:48+07:00', 'Dedi Supriadi 4', 'Admin', 7817000, 0, 3908500, 3908500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100414', '', '', '', 680000, NULL, '2026-11-16 16:09:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00415', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 1, 55000, 55000, 48000, 0, 7000, 'pcs'),
  ('TRX-A00415', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 3, 2510000, 7530000, 2300000, 0, 630000, 'pcs'),
  ('TRX-A00415', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 3, 72000, 216000, 59000, 0, 39000, 'pcs'),
  ('TRX-A00415', 'PRD-A-KEL-0098', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01739', '2026-11-16 16:07:45+07:00', 'Umum', 'Admin', 5732000, 0, 5732000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101738', '', '', '', 331000, NULL, '2026-11-16 16:07:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01739', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 3, 1910000, 5730000, 1800000, 0, 330000, 'pcs'),
  ('TRX-A01739', 'PRD-A-KEL-0061', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01360', '2026-11-16 16:00:03+07:00', 'Joko Prasetyo', 'Admin', 17188000, 0, 0, 17188000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101359', '', '', '', 1789000, NULL, '2026-11-16 16:00:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01360', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 3, 1900000, 5700000, 1700000, 0, 600000, 'pcs'),
  ('TRX-A01360', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 1, 74000, 74000, 59000, 0, 15000, 'pcs'),
  ('TRX-A01360', 'PRD-A-AKS-0178', 'Case Vivo Y20', 1, 36000, 36000, 24000, 0, 12000, 'pcs'),
  ('TRX-A01360', 'PRD-A-AKS-0043', 'Case Oppo A57', 2, 28000, 56000, 13000, 0, 30000, 'pcs'),
  ('TRX-A01360', 'PRD-A-AKS-0114', 'Memory Card 16GB', 3, 44000, 132000, 30000, 0, 42000, 'pcs'),
  ('TRX-A01360', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs'),
  ('TRX-A01360', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 3, 1320000, 3960000, 1200000, 0, 360000, 'pcs'),
  ('TRX-A01360', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01089', '2026-11-16 15:51:45+07:00', 'Umum', 'Admin', 222000, 0, 222000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101088', '', '', '', 45000, NULL, '2026-11-16 15:51:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01089', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 3, 74000, 222000, 59000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01750', '2026-11-16 15:33:16+07:00', 'Umum', 'Admin', 7060000, 0, 7060000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101749', '', '', '', 860000, NULL, '2026-11-16 15:33:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01750', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 3, 1620000, 4860000, 1400000, 0, 660000, 'pcs'),
  ('TRX-A01750', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 1, 2200000, 2200000, 2000000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01897', '2026-11-16 15:17:59+07:00', 'Umum', 'Admin', 16824000, 0, 16824000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101896', '', '', '', 1545000, NULL, '2026-11-16 15:17:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01897', 'PRD-A-AKS-0144', 'Voucher Telkomsel 10GB', 2, 65000, 130000, 60000, 0, 10000, 'pcs'),
  ('TRX-A01897', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 3, 2870000, 8610000, 2700000, 0, 510000, 'pcs'),
  ('TRX-A01897', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 2, 2920000, 5840000, 2700000, 0, 440000, 'pcs'),
  ('TRX-A01897', 'PRD-A-AKS-0045', 'Memory Card 16GB', 3, 58000, 174000, 53000, 0, 15000, 'pcs'),
  ('TRX-A01897', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 3, 690000, 2070000, 500000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00608', '2026-11-16 15:17:28+07:00', 'Umum', 'Admin', 7156000, 0, 0, 7156000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100607', '', '', '', 587000, NULL, '2026-11-16 15:17:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00608', 'PRD-A-AKS-0076', 'Handsfree Samsung', 2, 58000, 116000, 45000, 0, 26000, 'pcs'),
  ('TRX-A00608', 'PRD-A-AKS-0171', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A00608', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 1, 1800000, 1800000, 1600000, 0, 200000, 'pcs'),
  ('TRX-A00608', 'PRD-A-AKS-0116', 'Memory Card 16GB', 2, 88000, 176000, 76000, 0, 24000, 'pcs'),
  ('TRX-A00608', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 1, 1320000, 1320000, 1200000, 0, 120000, 'pcs'),
  ('TRX-A00608', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 3, 1150000, 3450000, 1100000, 0, 150000, 'pcs'),
  ('TRX-A00608', 'PRD-A-AKS-0236', 'Memory Card 64GB', 2, 72000, 144000, 63000, 0, 18000, 'pcs'),
  ('TRX-A00608', 'PRD-A-AKS-0143', 'Batre Samsung J1', 3, 34000, 102000, 23000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00113', '2026-11-16 15:17:11+07:00', 'Umum', 'Admin', 4524000, 0, 4524000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100112', '', '', '', 304000, NULL, '2026-11-16 15:17:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00113', 'PRD-A-HP-0344', 'HP VIVO V7 2/16 55806', 1, 2700000, 2700000, 2600000, 0, 100000, 'pcs'),
  ('TRX-A00113', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 1, 1780000, 1780000, 1600000, 0, 180000, 'pcs'),
  ('TRX-A00113', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 2, 22000, 44000, 10000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00571', '2026-11-16 15:05:13+07:00', 'Umum', 'Admin', 3765000, 0, 3765000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100570', '', '', '', 677000, NULL, '2026-11-16 15:05:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00571', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 3, 33000, 99000, 28000, 0, 15000, 'pcs'),
  ('TRX-A00571', 'PRD-A-KEL-0141', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00571', 'PRD-A-HP-0044', 'HP OPPO HOT30i 3/64 35099', 3, 1220000, 3660000, 1000000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00847', '2026-11-16 15:03:53+07:00', 'Nur Halimah', 'Admin', 5020000, 0, 5020000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100846', '', '', '', 369000, NULL, '2026-11-16 15:03:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00847', 'PRD-A-KEL-0093', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00847', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 2, 2480000, 4960000, 2300000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00962', '2026-11-16 14:52:00+07:00', 'Umum', 'Admin', 5609500, 0, 5609500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100961', '', '', '', 816000, NULL, '2026-11-16 14:52:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00962', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 3, 560000, 1680000, 400000, 0, 480000, 'pcs'),
  ('TRX-A00962', 'PRD-A-AKS-0165', 'Case Vivo Y20', 3, 43000, 129000, 31000, 0, 36000, 'pcs'),
  ('TRX-A00962', 'PRD-A-KEL-0169', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00962', 'PRD-A-KEL-0180', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00962', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 2, 1730000, 3460000, 1600000, 0, 260000, 'pcs'),
  ('TRX-A00962', 'PRD-A-AKS-0226', 'Memory Card 32GB', 3, 85000, 255000, 78000, 0, 21000, 'pcs'),
  ('TRX-A00962', 'PRD-A-KEL-0056', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00962', 'PRD-A-KEL-0023', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01733', '2026-11-16 14:37:29+07:00', 'Budi Santoso', 'Admin', 660000, 0, 660000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101732', '', '', '', 160000, NULL, '2026-11-16 14:37:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01733', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 1, 660000, 660000, 500000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01231', '2026-11-16 14:16:29+07:00', 'Umum', 'Admin', 5250000, 0, 5250000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101230', '', '', '', 750000, NULL, '2026-11-16 14:16:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01231', 'PRD-A-HP-0514', 'HP SAMSUNG Y55S 4/64 61784', 3, 1750000, 5250000, 1500000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00447', '2026-11-16 14:11:44+07:00', 'Umum', 'Admin', 2728000, 0, 1364000, 1364000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100446', '', '', '', 209000, NULL, '2026-11-16 14:11:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00447', 'PRD-A-KEL-0044', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00447', 'PRD-A-KEL-0104', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00447', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 1, 2700000, 2700000, 2500000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00347', '2026-11-16 14:09:41+07:00', 'Joko Prasetyo 5', 'Admin', 5440000, 0, 5440000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100346', '', '', '', 240000, NULL, '2026-11-16 14:09:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00347', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 2, 2720000, 5440000, 2600000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00308', '2026-11-16 13:56:29+07:00', 'Fitri Rahmawati 2', 'Admin', 12766000, 0, 12766000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100307', '', '', '', 1473000, NULL, '2026-11-16 13:56:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00308', 'PRD-A-AKS-0137', 'Tempered Glass Samsung', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A00308', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 2, 2540000, 5080000, 2300000, 0, 480000, 'pcs'),
  ('TRX-A00308', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 2, 930000, 1860000, 700000, 0, 460000, 'pcs'),
  ('TRX-A00308', 'PRD-A-AKS-0115', 'Tempered Glass Samsung', 3, 20000, 60000, 9000, 0, 33000, 'pcs'),
  ('TRX-A00308', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs'),
  ('TRX-A00308', 'PRD-A-AKS-0143', 'Batre Samsung J1', 2, 34000, 68000, 23000, 0, 22000, 'pcs'),
  ('TRX-A00308', 'PRD-A-KEL-0009', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00795', '2026-11-16 13:41:54+07:00', 'Eko Saputra 2', 'Admin', 1422000, 0, 1422000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100794', '', '', '', 200000, NULL, '2026-11-16 13:41:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00795', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs'),
  ('TRX-A00795', 'PRD-A-KEL-0060', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00795', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00752', '2026-11-16 13:39:54+07:00', 'Umum', 'Admin', 10763000, 0, 5381500, 5381500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100751', '', '', '', 762000, NULL, '2026-11-16 13:39:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00752', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A00752', 'PRD-A-KEL-0185', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00752', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 1, 1610000, 1610000, 1400000, 0, 210000, 'pcs'),
  ('TRX-A00752', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A00752', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A00752', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs'),
  ('TRX-A00752', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 3, 2190000, 6570000, 2100000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01245', '2026-11-16 13:39:17+07:00', 'Dewi Lestari 3', 'Admin', 3188000, 0, 1594000, 1594000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101244', '', '', '', 1020000, NULL, '2026-11-16 13:39:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01245', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A01245', 'PRD-A-AKS-0055', 'Memory Card 16GB', 3, 66000, 198000, 56000, 0, 30000, 'pcs'),
  ('TRX-A01245', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 3, 650000, 1950000, 400000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01568', '2026-11-16 13:39:11+07:00', 'Umum', 'Admin', 5333000, 0, 5333000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101567', '', '', '', 240500, NULL, '2026-11-16 13:39:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01568', 'PRD-A-AKS-0102', 'Case Vivo Y20', 1, 36000, 36000, 30000, 0, 6000, 'pcs'),
  ('TRX-A01568', 'PRD-A-KEL-0048', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01568', 'PRD-A-KEL-0143', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01568', 'PRD-A-HP-0236', 'HP INFINIX A15 3/32 68246', 2, 2610000, 5220000, 2500000, 0, 220000, 'pcs'),
  ('TRX-A01568', 'PRD-A-KEL-0130', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01568', 'PRD-A-KEL-0091', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01011', '2026-11-16 13:39:02+07:00', 'Umum', 'Admin', 6226000, 0, 6226000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101010', '', '', '', 1298500, NULL, '2026-11-16 13:39:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01011', 'PRD-A-KEL-0185', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01011', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 1, 790000, 790000, 600000, 0, 190000, 'pcs'),
  ('TRX-A01011', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 3, 600000, 1800000, 500000, 0, 300000, 'pcs'),
  ('TRX-A01011', 'PRD-A-AKS-0045', 'Memory Card 16GB', 1, 58000, 58000, 53000, 0, 5000, 'pcs'),
  ('TRX-A01011', 'PRD-A-KEL-0081', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A01011', 'PRD-A-AKS-0098', 'Tempered Glass Oppo', 2, 23000, 46000, 11000, 0, 24000, 'pcs'),
  ('TRX-A01011', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 3, 1150000, 3450000, 900000, 0, 750000, 'pcs'),
  ('TRX-A01011', 'PRD-A-AKS-0090', 'Kartu Perdana XL', 2, 35000, 70000, 22000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01380', '2026-11-16 13:36:13+07:00', 'Budi Santoso 2', 'Admin', 8118000, 0, 4059000, 4059000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101379', '', '', '', 847000, NULL, '2026-11-16 13:36:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01380', 'PRD-A-AKS-0222', 'Case Redmi 9A', 3, 46000, 138000, 35000, 0, 33000, 'pcs'),
  ('TRX-A01380', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 2, 20000, 40000, 7000, 0, 26000, 'pcs'),
  ('TRX-A01380', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 2, 910000, 1820000, 700000, 0, 420000, 'pcs'),
  ('TRX-A01380', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01380', 'PRD-A-KEL-0150', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01380', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 3, 2020000, 6060000, 1900000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00865', '2026-11-16 13:16:38+07:00', 'Umum', 'Admin', 7896000, 0, 3948000, 3948000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100864', '', '', '', 417000, NULL, '2026-11-16 13:16:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00865', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A00865', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A00865', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 3, 32000, 96000, 24000, 0, 24000, 'pcs'),
  ('TRX-A00865', 'PRD-A-KEL-0033', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00865', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 1, 1330000, 1330000, 1200000, 0, 130000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00085', '2026-11-16 13:06:49+07:00', 'Umum', 'Admin', 2891000, 0, 2891000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100084', '', '', '', 814000, NULL, '2026-11-16 13:06:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00085', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 3, 670000, 2010000, 500000, 0, 510000, 'pcs'),
  ('TRX-A00085', 'PRD-A-AKS-0013', 'Case Samsung A03', 3, 41000, 123000, 29000, 0, 36000, 'pcs'),
  ('TRX-A00085', 'PRD-A-AKS-0102', 'Case Vivo Y20', 3, 36000, 108000, 30000, 0, 18000, 'pcs'),
  ('TRX-A00085', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 1, 650000, 650000, 400000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01546', '2026-11-16 12:38:36+07:00', 'Umum', 'Admin', 70000, 0, 35000, 35000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101545', '', '', '', 30000, NULL, '2026-11-16 12:38:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01546', 'PRD-A-AKS-0111', 'Kabel Data Micro USB', 2, 35000, 70000, 20000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01878', '2026-11-16 12:38:07+07:00', 'Intan Permata 2', 'Admin', 129000, 0, 129000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101877', '', '', '', 33000, NULL, '2026-11-16 12:38:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01878', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 3, 43000, 129000, 32000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00677', '2026-11-16 12:26:02+07:00', 'Rudi Hartono', 'Admin', 4080000, 0, 4080000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100676', '', '', '', 464000, NULL, '2026-11-16 12:26:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00677', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 3, 1350000, 4050000, 1200000, 0, 450000, 'pcs'),
  ('TRX-A00677', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 2, 15000, 30000, 8000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00108', '2026-11-16 12:00:10+07:00', 'Umum', 'Admin', 5900000, 0, 5900000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100107', '', '', '', 300000, NULL, '2026-11-16 12:00:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00108', 'PRD-A-HP-0221', 'HP REALME HOT30i 3/32 90969', 1, 460000, 460000, 400000, 0, 60000, 'pcs'),
  ('TRX-A00108', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 2, 2720000, 5440000, 2600000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00044', '2026-11-16 11:19:45+07:00', 'Fajar Nugroho 4', 'Admin', 15000, 0, 15000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100043', '', '', '', 5000, NULL, '2026-11-16 11:19:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00044', 'PRD-A-KEL-0044', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00044', 'PRD-A-KEL-0023', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01286', '2026-11-16 11:13:56+07:00', 'Umum', 'Admin', 1938000, 0, 1938000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101285', '', '', '', 207000, NULL, '2026-11-16 11:13:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01286', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 1, 1660000, 1660000, 1500000, 0, 160000, 'pcs'),
  ('TRX-A01286', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 2, 64000, 128000, 51000, 0, 26000, 'pcs'),
  ('TRX-A01286', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01286', 'PRD-A-KEL-0196', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00657', '2026-11-16 11:06:24+07:00', 'Budi Santoso 5', 'Admin', 1453000, 0, 1453000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100656', '', '', '', 193000, NULL, '2026-11-16 11:06:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00657', 'PRD-A-KEL-0017', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A00657', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 1, 27000, 27000, 18000, 0, 9000, 'pcs'),
  ('TRX-A00657', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 1, 1210000, 1210000, 1100000, 0, 110000, 'pcs'),
  ('TRX-A00657', 'PRD-A-AKS-0053', 'Memory Card 16GB', 2, 41000, 82000, 28000, 0, 26000, 'pcs'),
  ('TRX-A00657', 'PRD-A-AKS-0242', 'Handsfree Samsung', 3, 28000, 84000, 16000, 0, 36000, 'pcs'),
  ('TRX-A00657', 'PRD-A-KEL-0104', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00264', '2026-11-16 10:37:06+07:00', 'Umum', 'Admin', 5861000, 0, 5861000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100263', '', '', '', 967000, NULL, '2026-11-16 10:37:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00264', 'PRD-A-KEL-0189', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00264', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 3, 820000, 2460000, 600000, 0, 660000, 'pcs'),
  ('TRX-A00264', 'PRD-A-AKS-0141', 'Batre Oppo A57', 1, 62000, 62000, 50000, 0, 12000, 'pcs'),
  ('TRX-A00264', 'PRD-A-AKS-0134', 'Case Oppo A57', 1, 35000, 35000, 28000, 0, 7000, 'pcs'),
  ('TRX-A00264', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00264', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 2, 1640000, 3280000, 1500000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01955', '2026-11-16 09:59:26+07:00', 'Umum', 'Admin', 3328000, 0, 3328000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101954', '', '', '', 780000, NULL, '2026-11-16 09:59:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01955', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 3, 22000, 66000, 10000, 0, 36000, 'pcs'),
  ('TRX-A01955', 'PRD-A-KEL-0045', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01955', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs'),
  ('TRX-A01955', 'PRD-A-KEL-0168', 'Teh celup', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01491', '2026-11-16 09:32:41+07:00', 'Umum', 'Admin', 7304000, 0, 7304000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101490', '', '', '', 438000, NULL, '2026-11-16 09:32:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01491', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 3, 1870000, 5610000, 1800000, 0, 210000, 'pcs'),
  ('TRX-A01491', 'PRD-A-KEL-0054', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01491', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 2, 57000, 114000, 45000, 0, 24000, 'pcs'),
  ('TRX-A01491', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs'),
  ('TRX-A01491', 'PRD-A-AKS-0139', 'Case Samsung A03', 2, 34000, 68000, 21000, 0, 26000, 'pcs'),
  ('TRX-A01491', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 1, 22000, 22000, 10000, 0, 12000, 'pcs'),
  ('TRX-A01491', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 1, 18000, 18000, 16000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00038', '2026-11-16 09:31:46+07:00', 'Umum', 'Admin', 6360000, 0, 6360000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100037', '', '', '', 660000, NULL, '2026-11-16 09:31:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00038', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00816', '2026-11-16 09:15:27+07:00', 'Dewi Lestari 5', 'Admin', 7721000, 0, 3860500, 3860500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100815', '', '', '', 455500, NULL, '2026-11-16 09:15:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00816', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 3, 1870000, 5610000, 1800000, 0, 210000, 'pcs'),
  ('TRX-A00816', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 1, 1860000, 1860000, 1700000, 0, 160000, 'pcs'),
  ('TRX-A00816', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00816', 'PRD-A-KEL-0122', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00816', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 3, 75000, 225000, 50000, 0, 75000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00821', '2026-11-16 09:10:07+07:00', 'Umum', 'Admin', 11163000, 0, 11163000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100820', '', '', '', 667000, NULL, '2026-11-16 09:10:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00821', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 1, 57000, 57000, 45000, 0, 12000, 'pcs'),
  ('TRX-A00821', 'PRD-A-KEL-0190', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00821', 'PRD-A-AKS-0105', 'Case Samsung A03', 1, 36000, 36000, 21000, 0, 15000, 'pcs'),
  ('TRX-A00821', 'PRD-A-KEL-0166', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00821', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 2, 1450000, 2900000, 1400000, 0, 100000, 'pcs'),
  ('TRX-A00821', 'PRD-A-HP-0508', 'HP REDMI 9C 4/128 88002', 3, 2070000, 6210000, 2000000, 0, 210000, 'pcs'),
  ('TRX-A00821', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 2, 960000, 1920000, 800000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00518', '2026-11-16 09:02:32+07:00', 'Umum', 'Admin', 2400000, 0, 1200000, 1200000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100517', '', '', '', 238000, NULL, '2026-11-16 09:02:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00518', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs'),
  ('TRX-A00518', 'PRD-A-AKS-0073', 'Memory Card 64GB', 2, 35000, 70000, 31000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00379', '2026-11-16 08:58:45+07:00', 'Dewi Lestari 3', 'Admin', 1714000, 0, 1714000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100378', '', '', '', 292000, NULL, '2026-11-16 08:58:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00379', 'PRD-A-AKS-0041', 'Tempered Glass Vivo', 2, 19000, 38000, 5000, 0, 28000, 'pcs'),
  ('TRX-A00379', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 1, 1070000, 1070000, 1000000, 0, 70000, 'pcs'),
  ('TRX-A00379', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 1, 590000, 590000, 400000, 0, 190000, 'pcs'),
  ('TRX-A00379', 'PRD-A-KEL-0131', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01112', '2026-11-16 08:57:52+07:00', 'Rudi Hartono 3', 'Admin', 11684000, 0, 11684000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101111', '', '', '', 940000, NULL, '2026-11-16 08:57:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01112', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 2, 1330000, 2660000, 1200000, 0, 260000, 'pcs'),
  ('TRX-A01112', 'PRD-A-AKS-0021', 'Handsfree Samsung', 3, 18000, 54000, 10000, 0, 24000, 'pcs'),
  ('TRX-A01112', 'PRD-A-HP-0272', 'HP ITEL 6A 4/128 52530', 2, 2720000, 5440000, 2500000, 0, 440000, 'pcs'),
  ('TRX-A01112', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 3, 1170000, 3510000, 1100000, 0, 210000, 'pcs'),
  ('TRX-A01112', 'PRD-A-KEL-0062', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00694', '2026-11-16 08:54:23+07:00', 'Umum', 'Admin', 10466000, 0, 10466000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100693', '', '', '', 1162000, NULL, '2026-11-16 08:54:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00694', 'PRD-A-HP-0272', 'HP ITEL 6A 4/128 52530', 3, 2720000, 8160000, 2500000, 0, 660000, 'pcs'),
  ('TRX-A00694', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 1, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A00694', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 2, 1150000, 2300000, 900000, 0, 500000, 'pcs'),
  ('TRX-A00694', 'PRD-A-KEL-0177', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00122', '2026-11-16 08:10:36+07:00', 'Umum', 'Admin', 3572000, 0, 3572000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100121', '', '', '', 316000, NULL, '2026-11-16 08:10:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00122', 'PRD-A-HP-0111', 'HP OPPO A57 4/128 32620', 1, 2120000, 2120000, 1900000, 0, 220000, 'pcs'),
  ('TRX-A00122', 'PRD-A-AKS-0053', 'Memory Card 16GB', 2, 41000, 82000, 28000, 0, 26000, 'pcs'),
  ('TRX-A00122', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00651', '2026-11-15 20:54:48+07:00', 'Maya Putri 3', 'Admin', 3026000, 0, 3026000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100650', '', '', '', 213000, NULL, '2026-11-15 20:54:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00651', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 21000, 0, 42000, 'pcs'),
  ('TRX-A00651', 'PRD-A-AKS-0023', 'Memory Card 32GB', 1, 53000, 53000, 45000, 0, 8000, 'pcs'),
  ('TRX-A00651', 'PRD-A-HP-0050', 'HP REALME S23 2/16 76169', 1, 2860000, 2860000, 2700000, 0, 160000, 'pcs'),
  ('TRX-A00651', 'PRD-A-KEL-0128', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00278', '2026-11-15 20:43:26+07:00', 'Fitri Rahmawati 3', 'Admin', 1691000, 0, 1691000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100277', '', '', '', 221000, NULL, '2026-11-15 20:43:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00278', 'PRD-A-AKS-0125', 'Handsfree Samsung', 2, 52000, 104000, 37000, 0, 30000, 'pcs'),
  ('TRX-A00278', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 1, 1330000, 1330000, 1200000, 0, 130000, 'pcs'),
  ('TRX-A00278', 'PRD-A-AKS-0178', 'Case Vivo Y20', 1, 36000, 36000, 24000, 0, 12000, 'pcs'),
  ('TRX-A00278', 'PRD-A-AKS-0150', 'Memory Card 16GB', 2, 55000, 110000, 41000, 0, 28000, 'pcs'),
  ('TRX-A00278', 'PRD-A-KEL-0033', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00278', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00949', '2026-11-15 20:42:02+07:00', 'Ayu Lestari 4', 'Admin', 3000, 0, 3000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100948', '', '', '', 1000, NULL, '2026-11-15 20:42:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00949', 'PRD-A-KEL-0007', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01510', '2026-11-15 20:33:43+07:00', 'Sri Wahyuni 4', 'Admin', 5441000, 0, 0, 5441000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101509', '', '', '', 440500, NULL, '2026-11-15 20:33:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01510', 'PRD-A-HP-0005', 'HP VIVO Y53 8/256 91381', 2, 2720000, 5440000, 2500000, 0, 440000, 'pcs'),
  ('TRX-A01510', 'PRD-A-KEL-0154', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01908', '2026-11-15 20:30:57+07:00', 'Dedi Supriadi 3', 'Admin', 6072000, 0, 6072000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101907', '', '', '', 764500, NULL, '2026-11-15 20:30:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01908', 'PRD-A-KEL-0018', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01908', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 2, 2160000, 4320000, 2000000, 0, 320000, 'pcs'),
  ('TRX-A01908', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 1, 1090000, 1090000, 900000, 0, 190000, 'pcs'),
  ('TRX-A01908', 'PRD-A-HP-0477', 'HP INFINIX C15 3/32 90452', 1, 650000, 650000, 400000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00997', '2026-11-15 20:12:11+07:00', 'Umum', 'Admin', 3830000, 0, 0, 3830000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100996', '', '', '', 458000, NULL, '2026-11-15 20:12:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00997', 'PRD-A-KEL-0180', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00997', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs'),
  ('TRX-A00997', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 2, 1800000, 3600000, 1600000, 0, 400000, 'pcs'),
  ('TRX-A00997', 'PRD-A-AKS-0091', 'Case Oppo A57', 1, 22000, 22000, 11000, 0, 11000, 'pcs'),
  ('TRX-A00997', 'PRD-A-AKS-0023', 'Memory Card 32GB', 1, 53000, 53000, 45000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01027', '2026-11-15 20:10:11+07:00', 'Budi Santoso', 'Admin', 265000, 0, 265000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101026', '', '', '', 71000, NULL, '2026-11-15 20:10:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01027', 'PRD-A-KEL-0175', 'Snack wafer', 1, 10000, 10000, 8000, 0, 2000, 'pcs'),
  ('TRX-A01027', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 3, 28000, 84000, 19000, 0, 27000, 'pcs'),
  ('TRX-A01027', 'PRD-A-AKS-0245', 'Batre Samsung J1', 3, 57000, 171000, 43000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00575', '2026-11-15 20:08:10+07:00', 'Fitri Rahmawati 5', 'Admin', 102000, 0, 51000, 51000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100574', '', '', '', 28000, NULL, '2026-11-15 20:08:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00575', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 2, 45000, 90000, 33000, 0, 24000, 'pcs'),
  ('TRX-A00575', 'PRD-A-KEL-0019', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00363', '2026-11-15 19:46:32+07:00', 'Dedi Supriadi 2', 'Admin', 1629000, 0, 814500, 814500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100362', '', '', '', 324000, NULL, '2026-11-15 19:46:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00363', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 1, 930000, 930000, 800000, 0, 130000, 'pcs'),
  ('TRX-A00363', 'PRD-A-AKS-0233', 'Tempered Glass Vivo', 1, 9000, 9000, 5000, 0, 4000, 'pcs'),
  ('TRX-A00363', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 1, 690000, 690000, 500000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00205', '2026-11-15 19:37:29+07:00', 'Umum', 'Admin', 12446000, 0, 0, 12446000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100204', '', '', '', 1433000, NULL, '2026-11-15 19:37:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00205', 'PRD-A-AKS-0105', 'Case Samsung A03', 3, 36000, 108000, 21000, 0, 45000, 'pcs'),
  ('TRX-A00205', 'PRD-A-HP-0271', 'HP REDMI A15 2/32 43955', 1, 2480000, 2480000, 2300000, 0, 180000, 'pcs'),
  ('TRX-A00205', 'PRD-A-AKS-0031', 'Batre Samsung J1', 1, 58000, 58000, 50000, 0, 8000, 'pcs'),
  ('TRX-A00205', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A00205', 'PRD-A-HP-0194', 'HP REALME C15 2/16 38996', 2, 940000, 1880000, 700000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00916', '2026-11-15 19:37:11+07:00', 'Dedi Supriadi 4', 'Admin', 6192000, 0, 3096000, 3096000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100915', '', '', '', 1146000, NULL, '2026-11-15 19:37:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00916', 'PRD-A-HP-0524', 'HP INFINIX Y16 2/16 63764', 2, 1510000, 3020000, 1300000, 0, 420000, 'pcs'),
  ('TRX-A00916', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 1, 52000, 52000, 46000, 0, 6000, 'pcs'),
  ('TRX-A00916', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00797', '2026-11-15 19:33:48+07:00', 'Umum', 'Admin', 7300000, 0, 7300000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100796', '', '', '', 364000, NULL, '2026-11-15 19:33:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00797', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 3, 2420000, 7260000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A00797', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01941', '2026-11-15 19:31:21+07:00', 'Eko Saputra 2', 'Admin', 5741000, 0, 2870500, 2870500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101940', '', '', '', 554000, NULL, '2026-11-15 19:31:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01941', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 2, 2500000, 5000000, 2300000, 0, 400000, 'pcs'),
  ('TRX-A01941', 'PRD-A-AKS-0084', 'Memory Card 64GB', 2, 95000, 190000, 82000, 0, 26000, 'pcs'),
  ('TRX-A01941', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01941', 'PRD-A-KEL-0168', 'Teh celup', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01941', 'PRD-A-AKS-0114', 'Memory Card 16GB', 3, 44000, 132000, 30000, 0, 42000, 'pcs'),
  ('TRX-A01941', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 3, 29000, 87000, 15000, 0, 42000, 'pcs'),
  ('TRX-A01941', 'PRD-A-AKS-0214', 'Memory Card 64GB', 2, 100000, 200000, 86000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01163', '2026-11-15 19:12:50+07:00', 'Umum', 'Admin', 8718000, 0, 0, 8718000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101162', '', '', '', 605000, NULL, '2026-11-15 19:12:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01163', 'PRD-A-AKS-0019', 'Kartu Perdana Telkomsel', 1, 18000, 18000, 13000, 0, 5000, 'pcs'),
  ('TRX-A01163', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01045', '2026-11-15 19:04:11+07:00', 'Fajar Nugroho 3', 'Admin', 5190000, 0, 5190000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101044', '', '', '', 390000, NULL, '2026-11-15 19:04:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01045', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 3, 1730000, 5190000, 1600000, 0, 390000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01960', '2026-11-15 18:40:57+07:00', 'Umum', 'Admin', 12317000, 0, 12317000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101959', '', '', '', 1460000, NULL, '2026-11-15 18:40:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01960', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 1, 2290000, 2290000, 2100000, 0, 190000, 'pcs'),
  ('TRX-A01960', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 3, 1110000, 3330000, 900000, 0, 630000, 'pcs'),
  ('TRX-A01960', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 3, 31000, 93000, 17000, 0, 42000, 'pcs'),
  ('TRX-A01960', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 2, 54000, 108000, 47000, 0, 14000, 'pcs'),
  ('TRX-A01960', 'PRD-A-KEL-0172', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01960', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A01960', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 1, 1200000, 1200000, 1100000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00150', '2026-11-15 18:14:22+07:00', 'Ayu Lestari 3', 'Admin', 8517000, 0, 0, 8517000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100149', '', '', '', 617000, NULL, '2026-11-15 18:14:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00150', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 3, 23000, 69000, 16000, 0, 21000, 'pcs'),
  ('TRX-A00150', 'PRD-A-AKS-0148', 'Case Vivo Y20', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A00150', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 3, 1350000, 4050000, 1200000, 0, 450000, 'pcs'),
  ('TRX-A00150', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A00150', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 1, 2150000, 2150000, 2100000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01831', '2026-11-15 18:14:05+07:00', 'Intan Permata 2', 'Admin', 14589000, 0, 14589000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101830', '', '', '', 819500, NULL, '2026-11-15 18:14:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01831', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A01831', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A01831', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 3, 1700000, 5100000, 1600000, 0, 300000, 'pcs'),
  ('TRX-A01831', 'PRD-A-KEL-0009', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01831', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01831', 'PRD-A-KEL-0123', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01132', '2026-11-15 18:05:54+07:00', 'Agus Wijaya', 'Admin', 10076000, 0, 10076000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101131', '', '', '', 579500, NULL, '2026-11-15 18:05:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01132', 'PRD-A-KEL-0108', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01132', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 2, 2090000, 4180000, 2000000, 0, 180000, 'pcs'),
  ('TRX-A01132', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 2, 34000, 68000, 20000, 0, 28000, 'pcs'),
  ('TRX-A01132', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs'),
  ('TRX-A01132', 'PRD-A-KEL-0010', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01803', '2026-11-15 17:59:59+07:00', 'Rudi Hartono 5', 'Admin', 22209000, 0, 22209000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101802', '', '', '', 1480000, NULL, '2026-11-15 17:59:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01803', 'PRD-A-KEL-0044', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01803', 'PRD-A-KEL-0035', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01803', 'PRD-A-HP-0491', 'HP REDMI V7 2/32 86419', 3, 2300000, 6900000, 2200000, 0, 300000, 'pcs'),
  ('TRX-A01803', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 2, 41000, 82000, 30000, 0, 22000, 'pcs'),
  ('TRX-A01803', 'PRD-A-KEL-0149', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01803', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 2, 1870000, 3740000, 1700000, 0, 340000, 'pcs'),
  ('TRX-A01803', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs'),
  ('TRX-A01803', 'PRD-A-HP-0485', 'HP ITEL Y91C 3/64 10965', 2, 2820000, 5640000, 2600000, 0, 440000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00185', '2026-11-15 17:51:00+07:00', 'Umum', 'Admin', 8207000, 0, 4103500, 4103500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100184', '', '', '', 903500, NULL, '2026-11-15 17:51:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00185', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 3, 480000, 1440000, 300000, 0, 540000, 'pcs'),
  ('TRX-A00185', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 1, 2770000, 2770000, 2600000, 0, 170000, 'pcs'),
  ('TRX-A00185', 'PRD-A-AKS-0134', 'Case Oppo A57', 1, 35000, 35000, 28000, 0, 7000, 'pcs'),
  ('TRX-A00185', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 1, 18000, 18000, 11000, 0, 7000, 'pcs'),
  ('TRX-A00185', 'PRD-A-KEL-0081', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A00185', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 1, 1670000, 1670000, 1600000, 0, 70000, 'pcs'),
  ('TRX-A00185', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 1, 2190000, 2190000, 2100000, 0, 90000, 'pcs'),
  ('TRX-A00185', 'PRD-A-AKS-0007', 'Case Redmi 9A', 3, 26000, 78000, 20000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00864', '2026-11-15 17:48:43+07:00', 'Umum', 'Admin', 144000, 0, 144000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100863', '', '', '', 18000, NULL, '2026-11-15 17:48:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00864', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00864', 'PRD-A-KEL-0041', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00695', '2026-11-15 17:22:06+07:00', 'Agus Wijaya', 'Admin', 1400000, 0, 0, 1400000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100694', '', '', '', 400000, NULL, '2026-11-15 17:22:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00695', 'PRD-A-HP-0030', 'HP NOKIA 9A 4/128 49838', 2, 700000, 1400000, 500000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00583', '2026-11-15 17:04:06+07:00', 'Yusuf Maulana 4', 'Admin', 3336000, 0, 1668000, 1668000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100582', '', '', '', 278000, NULL, '2026-11-15 17:04:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00583', 'PRD-A-KEL-0054', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00583', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 2, 1630000, 3260000, 1500000, 0, 260000, 'pcs'),
  ('TRX-A00583', 'PRD-A-KEL-0010', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00583', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 1, 38000, 38000, 33000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00869', '2026-11-15 16:49:45+07:00', 'Umum', 'Admin', 4371000, 0, 4371000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100868', '', '', '', 416000, NULL, '2026-11-15 16:49:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00869', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 1, 1870000, 1870000, 1800000, 0, 70000, 'pcs'),
  ('TRX-A00869', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 1, 46000, 46000, 33000, 0, 13000, 'pcs'),
  ('TRX-A00869', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 2, 26000, 52000, 16000, 0, 20000, 'pcs'),
  ('TRX-A00869', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 3, 41000, 123000, 30000, 0, 33000, 'pcs'),
  ('TRX-A00869', 'PRD-A-HP-0423', 'HP INFINIX Y16 2/16 64863', 2, 1140000, 2280000, 1000000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A02000', '2026-11-15 16:49:11+07:00', 'Maya Putri 4', 'Admin', 2773000, 0, 2773000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101999', '', '', '', 362000, NULL, '2026-11-15 16:49:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A02000', 'PRD-A-AKS-0050', 'Case Redmi 9A', 1, 34000, 34000, 26000, 0, 8000, 'pcs'),
  ('TRX-A02000', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 3, 21000, 63000, 17000, 0, 12000, 'pcs'),
  ('TRX-A02000', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 3, 25000, 75000, 13000, 0, 36000, 'pcs'),
  ('TRX-A02000', 'PRD-A-AKS-0043', 'Case Oppo A57', 1, 28000, 28000, 13000, 0, 15000, 'pcs'),
  ('TRX-A02000', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A02000', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 27000, 0, 24000, 'pcs'),
  ('TRX-A02000', 'PRD-A-AKS-0201', 'Memory Card 32GB', 3, 38000, 114000, 27000, 0, 33000, 'pcs'),
  ('TRX-A02000', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01170', '2026-11-15 16:43:55+07:00', 'Toko O''Brien', 'Admin', 5452000, 0, 5452000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101169', '', '', '', 818000, NULL, '2026-11-15 16:43:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01170', 'PRD-A-HP-0454', 'HP INFINIX A16 4/128 75084', 1, 1160000, 1160000, 1000000, 0, 160000, 'pcs'),
  ('TRX-A01170', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 2, 31000, 62000, 17000, 0, 28000, 'pcs'),
  ('TRX-A01170', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 3, 1410000, 4230000, 1200000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00467', '2026-11-15 16:31:55+07:00', 'Rudi Hartono 5', 'Admin', 12390000, 0, 12390000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100466', '', '', '', 690000, NULL, '2026-11-15 16:31:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00467', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs'),
  ('TRX-A00467', 'PRD-A-HP-0357', 'HP REALME A57 3/64 94377', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01236', '2026-11-15 16:28:04+07:00', 'Umum', 'Admin', 4726000, 0, 4726000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101235', '', '', '', 217000, NULL, '2026-11-15 16:28:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01236', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 3, 28000, 84000, 19000, 0, 27000, 'pcs'),
  ('TRX-A01236', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 2, 2290000, 4580000, 2200000, 0, 180000, 'pcs'),
  ('TRX-A01236', 'PRD-A-KEL-0123', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01236', 'PRD-A-KEL-0024', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00371', '2026-11-15 16:12:06+07:00', 'Intan Permata', 'Admin', 10824000, 0, 10824000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100370', '', '', '', 1320000, NULL, '2026-11-15 16:12:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00371', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 1, 2000000, 2000000, 1900000, 0, 100000, 'pcs'),
  ('TRX-A00371', 'PRD-A-HP-0254', 'HP VIVO J5 2/16 85377', 1, 1000000, 1000000, 800000, 0, 200000, 'pcs'),
  ('TRX-A00371', 'PRD-A-KEL-0111', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00371', 'PRD-A-AKS-0007', 'Case Redmi 9A', 3, 26000, 78000, 20000, 0, 18000, 'pcs'),
  ('TRX-A00371', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 1, 1700000, 1700000, 1600000, 0, 100000, 'pcs'),
  ('TRX-A00371', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A00371', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 2, 500000, 1000000, 300000, 0, 400000, 'pcs'),
  ('TRX-A00371', 'PRD-A-AKS-0234', 'Case Samsung A03', 2, 24000, 48000, 16000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01899', '2026-11-15 16:04:26+07:00', 'Rudi Hartono 3', 'Admin', 4887000, 0, 0, 4887000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101898', '', '', '', 637500, NULL, '2026-11-15 16:04:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01899', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs'),
  ('TRX-A01899', 'PRD-A-KEL-0091', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01899', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01782', '2026-11-15 15:57:47+07:00', 'Umum', 'Admin', 13012000, 0, 6506000, 6506000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101781', '', '', '', 901000, NULL, '2026-11-15 15:57:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01782', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01782', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 1, 2150000, 2150000, 2100000, 0, 50000, 'pcs'),
  ('TRX-A01782', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A01782', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 2, 1370000, 2740000, 1300000, 0, 140000, 'pcs'),
  ('TRX-A01782', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01782', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 1, 38000, 38000, 23000, 0, 15000, 'pcs'),
  ('TRX-A01782', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 1, 1110000, 1110000, 1000000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01844', '2026-11-15 15:56:35+07:00', 'Umum', 'Admin', 4780000, 0, 4780000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101843', '', '', '', 1129000, NULL, '2026-11-15 15:56:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01844', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A01844', 'PRD-A-KEL-0151', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01844', 'PRD-A-HP-0194', 'HP REALME C15 2/16 38996', 1, 940000, 940000, 700000, 0, 240000, 'pcs'),
  ('TRX-A01844', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs'),
  ('TRX-A01844', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 3, 820000, 2460000, 600000, 0, 660000, 'pcs'),
  ('TRX-A01844', 'PRD-A-AKS-0014', 'Tempered Glass Oppo', 2, 25000, 50000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01844', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 2, 580000, 1160000, 500000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01813', '2026-11-15 15:33:20+07:00', 'Umum', 'Admin', 5927000, 0, 2963500, 2963500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101812', '', '', '', 684000, NULL, '2026-11-15 15:33:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01813', 'PRD-A-AKS-0245', 'Batre Samsung J1', 1, 57000, 57000, 43000, 0, 14000, 'pcs'),
  ('TRX-A01813', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 2, 2110000, 4220000, 2000000, 0, 220000, 'pcs'),
  ('TRX-A01813', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 3, 550000, 1650000, 400000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01574', '2026-11-15 15:27:06+07:00', 'Umum', 'Admin', 3365500, 0, 0, 3365500, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101573', '', '', '', 743000, NULL, '2026-11-15 15:27:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01574', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 1, 32000, 32000, 24000, 0, 8000, 'pcs'),
  ('TRX-A01574', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 1, 1170000, 1170000, 1000000, 0, 170000, 'pcs'),
  ('TRX-A01574', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 3, 33000, 99000, 22000, 0, 33000, 'pcs'),
  ('TRX-A01574', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 2, 940000, 1880000, 700000, 0, 480000, 'pcs'),
  ('TRX-A01574', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A01574', 'PRD-A-AKS-0071', 'Case Oppo A57', 1, 31000, 31000, 19000, 0, 12000, 'pcs'),
  ('TRX-A01574', 'PRD-A-KEL-0079', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A01574', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00873', '2026-11-15 15:18:34+07:00', 'Agus Wijaya 4', 'Admin', 113000, 0, 56500, 56500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100872', '', '', '', 19000, NULL, '2026-11-15 15:18:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00873', 'PRD-A-AKS-0154', 'Memory Card 16GB', 1, 101000, 101000, 86000, 0, 15000, 'pcs'),
  ('TRX-A00873', 'PRD-A-KEL-0057', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00701', '2026-11-15 15:16:22+07:00', 'Umum', 'Admin', 120000, 0, 120000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100700', '', '', '', 12000, NULL, '2026-11-15 15:16:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00701', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01359', '2026-11-15 14:58:03+07:00', 'Umum', 'Admin', 4517000, 0, 2258500, 2258500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101358', '', '', '', 514000, NULL, '2026-11-15 14:58:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01359', 'PRD-A-KEL-0149', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01359', 'PRD-A-KEL-0050', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01359', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A01359', 'PRD-A-AKS-0226', 'Memory Card 32GB', 1, 85000, 85000, 78000, 0, 7000, 'pcs'),
  ('TRX-A01359', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 3, 740000, 2220000, 600000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01082', '2026-11-15 14:39:17+07:00', 'Sri Wahyuni 3', 'Admin', 2745000, 0, 0, 2745000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101081', '', '', '', 241000, NULL, '2026-11-15 14:39:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01082', 'PRD-A-KEL-0120', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01082', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01082', 'PRD-A-KEL-0065', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01082', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 1, 2500000, 2500000, 2300000, 0, 200000, 'pcs'),
  ('TRX-A01082', 'PRD-A-KEL-0163', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A01082', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00282', '2026-11-15 14:33:09+07:00', 'Umum', 'Admin', 4198000, 0, 4198000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100281', '', '', '', 905000, NULL, '2026-11-15 14:33:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00282', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 1, 700000, 700000, 500000, 0, 200000, 'pcs'),
  ('TRX-A00282', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 21000, 0, 30000, 'pcs'),
  ('TRX-A00282', 'PRD-A-AKS-0166', 'Case Redmi 9A', 3, 25000, 75000, 10000, 0, 45000, 'pcs'),
  ('TRX-A00282', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 3, 1110000, 3330000, 900000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01487', '2026-11-15 14:20:51+07:00', 'Intan Permata 5', 'Admin', 6277000, 0, 6277000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101486', '', '', '', 547000, NULL, '2026-11-15 14:20:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01487', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 2, 2680000, 5360000, 2500000, 0, 360000, 'pcs'),
  ('TRX-A01487', 'PRD-A-KEL-0137', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01487', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 2, 380000, 760000, 300000, 0, 160000, 'pcs'),
  ('TRX-A01487', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 27000, 0, 8000, 'pcs'),
  ('TRX-A01487', 'PRD-A-AKS-0063', 'Case Samsung A03', 2, 40000, 80000, 35000, 0, 10000, 'pcs'),
  ('TRX-A01487', 'PRD-A-AKS-0134', 'Case Oppo A57', 1, 35000, 35000, 28000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00186', '2026-11-15 14:16:48+07:00', 'Siti Aisyah 2', 'Admin', 10883000, 0, 10883000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100185', '', '', '', 929000, NULL, '2026-11-15 14:16:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00186', 'PRD-A-KEL-0198', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A00186', 'PRD-A-HP-0485', 'HP ITEL Y91C 3/64 10965', 3, 2820000, 8460000, 2600000, 0, 660000, 'pcs'),
  ('TRX-A00186', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A00186', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 1, 2230000, 2230000, 2000000, 0, 230000, 'pcs'),
  ('TRX-A00186', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 1, 74000, 74000, 59000, 0, 15000, 'pcs'),
  ('TRX-A00186', 'PRD-A-KEL-0192', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00186', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 1, 23000, 23000, 16000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00630', '2026-11-15 14:14:19+07:00', 'Umum', 'Admin', 1903000, 0, 1903000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100629', '', '', '', 78000, NULL, '2026-11-15 14:14:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00630', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 1, 1870000, 1870000, 1800000, 0, 70000, 'pcs'),
  ('TRX-A00630', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 1, 33000, 33000, 25000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00431', '2026-11-15 14:09:15+07:00', 'Umum', 'Admin', 19641000, 0, 9820500, 9820500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100430', '', '', '', 1954500, NULL, '2026-11-15 14:09:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00431', 'PRD-A-KEL-0128', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00431', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 3, 1520000, 4560000, 1300000, 0, 660000, 'pcs'),
  ('TRX-A00431', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 3, 1780000, 5340000, 1600000, 0, 540000, 'pcs'),
  ('TRX-A00431', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 3, 35000, 105000, 21000, 0, 42000, 'pcs'),
  ('TRX-A00431', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 3, 2680000, 8040000, 2500000, 0, 540000, 'pcs'),
  ('TRX-A00431', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 1, 24000, 24000, 16000, 0, 8000, 'pcs'),
  ('TRX-A00431', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 2, 780000, 1560000, 700000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00139', '2026-11-15 13:37:50+07:00', 'Umum', 'Admin', 1232000, 0, 1232000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100138', '', '', '', 331000, NULL, '2026-11-15 13:37:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00139', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 2, 560000, 1120000, 400000, 0, 320000, 'pcs'),
  ('TRX-A00139', 'PRD-A-AKS-0045', 'Memory Card 16GB', 1, 58000, 58000, 53000, 0, 5000, 'pcs'),
  ('TRX-A00139', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01378', '2026-11-15 12:58:33+07:00', 'Ayu Lestari 2', 'Admin', 205000, 0, 102500, 102500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101377', '', '', '', 32000, NULL, '2026-11-15 12:58:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01378', 'PRD-A-AKS-0084', 'Memory Card 64GB', 2, 95000, 190000, 82000, 0, 26000, 'pcs'),
  ('TRX-A01378', 'PRD-A-KEL-0129', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00043', '2026-11-15 12:42:24+07:00', 'Siti Aisyah 3', 'Admin', 6246000, 0, 3123000, 3123000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100042', '', '', '', 919000, NULL, '2026-11-15 12:42:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00043', 'PRD-A-KEL-0090', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A00043', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A00043', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 2, 27000, 54000, 13000, 0, 28000, 'pcs'),
  ('TRX-A00043', 'PRD-A-HP-0454', 'HP INFINIX A16 4/128 75084', 3, 1160000, 3480000, 1000000, 0, 480000, 'pcs'),
  ('TRX-A00043', 'PRD-A-KEL-0184', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00043', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 1, 690000, 690000, 500000, 0, 190000, 'pcs'),
  ('TRX-A00043', 'PRD-A-AKS-0131', 'Handsfree Xiaomi', 1, 51000, 51000, 44000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00513', '2026-11-15 12:31:03+07:00', 'Umum', 'Admin', 1242000, 0, 1242000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100512', '', '', '', 291000, NULL, '2026-11-15 12:31:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00513', 'PRD-A-HP-0475', 'HP REALME 9A 2/32 65032', 1, 1010000, 1010000, 800000, 0, 210000, 'pcs'),
  ('TRX-A00513', 'PRD-A-AKS-0087', 'Tempered Glass Xiaomi', 3, 15000, 45000, 10000, 0, 15000, 'pcs'),
  ('TRX-A00513', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00513', 'PRD-A-AKS-0013', 'Case Samsung A03', 3, 41000, 123000, 29000, 0, 36000, 'pcs'),
  ('TRX-A00513', 'PRD-A-AKS-0115', 'Tempered Glass Samsung', 2, 20000, 40000, 9000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01190', '2026-11-15 12:10:56+07:00', 'Fitri Rahmawati 3', 'Admin', 2568000, 0, 2568000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101189', '', '', '', 336000, NULL, '2026-11-15 12:10:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01190', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 2, 1260000, 2520000, 1100000, 0, 320000, 'pcs'),
  ('TRX-A01190', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00246', '2026-11-15 12:03:05+07:00', 'Umum', 'Admin', 1471000, 0, 0, 1471000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100245', '', '', '', 552000, NULL, '2026-11-15 12:03:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00246', 'PRD-A-AKS-0013', 'Case Samsung A03', 3, 41000, 123000, 29000, 0, 36000, 'pcs'),
  ('TRX-A00246', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A00246', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 2, 540000, 1080000, 300000, 0, 480000, 'pcs'),
  ('TRX-A00246', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00246', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 3, 52000, 156000, 46000, 0, 18000, 'pcs'),
  ('TRX-A00246', 'PRD-A-KEL-0116', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01977', '2026-11-15 11:55:20+07:00', 'Rina Marlina 3', 'Admin', 4155500, 0, 2077750, 2077750, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101976', '', '', '', 877100, NULL, '2026-11-15 11:55:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01977', 'PRD-A-HP-0348', 'HP REALME C15 8/256 21999', 2, 910000, 1820000, 700000, 0, 420000, 'pcs'),
  ('TRX-A01977', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A01977', 'PRD-A-AKS-0069', 'Handsfree Vivo', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A01977', 'PRD-A-KEL-0083', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A01977', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 3, 740000, 2220000, 600000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01714', '2026-11-15 11:32:35+07:00', 'Nur Halimah 4', 'Admin', 5262000, 0, 5262000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101713', '', '', '', 797000, NULL, '2026-11-15 11:32:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01714', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 2, 52000, 104000, 46000, 0, 12000, 'pcs'),
  ('TRX-A01714', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 3, 41000, 123000, 37000, 0, 12000, 'pcs'),
  ('TRX-A01714', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 3, 1650000, 4950000, 1400000, 0, 750000, 'pcs'),
  ('TRX-A01714', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 1, 61000, 61000, 46000, 0, 15000, 'pcs'),
  ('TRX-A01714', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01649', '2026-11-15 11:19:09+07:00', 'Rina Marlina 5', 'Admin', 7440000, 0, 7440000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101648', '', '', '', 840000, NULL, '2026-11-15 11:19:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01649', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 2, 1410000, 2820000, 1200000, 0, 420000, 'pcs'),
  ('TRX-A01649', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 3, 1540000, 4620000, 1400000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00891', '2026-11-15 11:05:32+07:00', 'Umum', 'Admin', 128000, 0, 0, 128000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100890', '', '', '', 22500, NULL, '2026-11-15 11:05:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00891', 'PRD-A-KEL-0116', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00891', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 1, 36000, 36000, 26000, 0, 10000, 'pcs'),
  ('TRX-A00891', 'PRD-A-KEL-0043', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00986', '2026-11-15 10:56:41+07:00', 'Siti Aisyah 2', 'Admin', 14278000, 0, 14278000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100985', '', '', '', 1429000, NULL, '2026-11-15 10:56:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00986', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 1, 25000, 25000, 17000, 0, 8000, 'pcs'),
  ('TRX-A00986', 'PRD-A-HP-0111', 'HP OPPO A57 4/128 32620', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs'),
  ('TRX-A00986', 'PRD-A-AKS-0198', 'Batre Oppo A57', 1, 19000, 19000, 14000, 0, 5000, 'pcs'),
  ('TRX-A00986', 'PRD-A-HP-0058', 'HP SAMSUNG 6A 4/128 77147', 1, 2420000, 2420000, 2300000, 0, 120000, 'pcs'),
  ('TRX-A00986', 'PRD-A-KEL-0052', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00986', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01401', '2026-11-15 10:56:00+07:00', 'Umum', 'Admin', 343000, 0, 343000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101400', '', '', '', 91500, NULL, '2026-11-15 10:56:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01401', 'PRD-A-AKS-0013', 'Case Samsung A03', 2, 41000, 82000, 29000, 0, 24000, 'pcs'),
  ('TRX-A01401', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 3, 27000, 81000, 13000, 0, 42000, 'pcs'),
  ('TRX-A01401', 'PRD-A-KEL-0119', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01401', 'PRD-A-AKS-0116', 'Memory Card 16GB', 2, 88000, 176000, 76000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01349', '2026-11-15 10:34:46+07:00', 'Agus Wijaya', 'Admin', 18806000, 0, 0, 18806000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101348', '', '', '', 702000, NULL, '2026-11-15 10:34:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01349', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A01349', 'PRD-A-HP-0468', 'HP OPPO Y53 4/64 80362', 2, 1910000, 3820000, 1800000, 0, 220000, 'pcs'),
  ('TRX-A01349', 'PRD-A-KEL-0041', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01349', 'PRD-A-KEL-0124', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01349', 'PRD-A-HP-0094', 'HP INFINIX Y20 8/256 25072', 3, 2390000, 7170000, 2300000, 0, 270000, 'pcs'),
  ('TRX-A01349', 'PRD-A-AKS-0134', 'Case Oppo A57', 2, 35000, 70000, 28000, 0, 14000, 'pcs'),
  ('TRX-A01349', 'PRD-A-HP-0324', 'HP INFINIX A03 3/64 89524', 3, 2560000, 7680000, 2500000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00730', '2026-11-15 10:14:47+07:00', 'Dedi Supriadi 4', 'Admin', 3250000, 0, 3250000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100729', '', '', '', 396000, NULL, '2026-11-15 10:14:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00730', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A00730', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 3, 30000, 90000, 18000, 0, 36000, 'pcs'),
  ('TRX-A00730', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 1, 1310000, 1310000, 1100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00459', '2026-11-15 10:07:30+07:00', 'Ayu Lestari 2', 'Admin', 14592000, 0, 14592000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100458', '', '', '', 1150000, NULL, '2026-11-15 10:07:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00459', 'PRD-A-KEL-0091', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00459', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A00459', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 1, 1820000, 1820000, 1700000, 0, 120000, 'pcs'),
  ('TRX-A00459', 'PRD-A-AKS-0160', 'Memory Card 32GB', 1, 40000, 40000, 34000, 0, 6000, 'pcs'),
  ('TRX-A00459', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 3, 2020000, 6060000, 1800000, 0, 660000, 'pcs'),
  ('TRX-A00459', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 1, 2190000, 2190000, 2000000, 0, 190000, 'pcs'),
  ('TRX-A00459', 'PRD-A-AKS-0063', 'Case Samsung A03', 1, 40000, 40000, 35000, 0, 5000, 'pcs'),
  ('TRX-A00459', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01603', '2026-11-15 10:01:38+07:00', 'Umum', 'Admin', 1070000, 0, 1070000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101602', '', '', '', 70000, NULL, '2026-11-15 10:01:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01603', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 1, 1070000, 1070000, 1000000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00917', '2026-11-15 09:54:49+07:00', 'Lilis Suryani 2', 'Admin', 12203000, 0, 6101500, 6101500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100916', '', '', '', 869000, NULL, '2026-11-15 09:54:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00917', 'PRD-A-AKS-0031', 'Batre Samsung J1', 2, 58000, 116000, 50000, 0, 16000, 'pcs'),
  ('TRX-A00917', 'PRD-A-AKS-0027', 'Batre Samsung J1', 1, 51000, 51000, 39000, 0, 12000, 'pcs'),
  ('TRX-A00917', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 3, 2560000, 7680000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00917', 'PRD-A-AKS-0213', 'Memory Card 16GB', 3, 72000, 216000, 65000, 0, 21000, 'pcs'),
  ('TRX-A00917', 'PRD-A-HP-0070', 'HP SAMSUNG 9A 4/128 90887', 2, 2070000, 4140000, 1900000, 0, 340000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01772', '2026-11-15 09:40:33+07:00', 'Umum', 'Admin', 4208000, 0, 4208000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101771', '', '', '', 355000, NULL, '2026-11-15 09:40:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01772', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 1, 1220000, 1220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01772', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A01772', 'PRD-A-AKS-0088', 'Case Redmi 9A', 2, 43000, 86000, 34000, 0, 18000, 'pcs'),
  ('TRX-A01772', 'PRD-A-KEL-0062', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01772', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 1, 2770000, 2770000, 2700000, 0, 70000, 'pcs'),
  ('TRX-A01772', 'PRD-A-AKS-0114', 'Memory Card 16GB', 1, 44000, 44000, 30000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01041', '2026-11-15 09:33:37+07:00', 'Lilis Suryani 4', 'Admin', 6755000, 0, 6755000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101040', '', '', '', 886000, NULL, '2026-11-15 09:33:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01041', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 1, 25000, 25000, 13000, 0, 12000, 'pcs'),
  ('TRX-A01041', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 2, 1630000, 3260000, 1500000, 0, 260000, 'pcs'),
  ('TRX-A01041', 'PRD-A-AKS-0102', 'Case Vivo Y20', 2, 36000, 72000, 30000, 0, 12000, 'pcs'),
  ('TRX-A01041', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 2, 38000, 76000, 23000, 0, 30000, 'pcs'),
  ('TRX-A01041', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 2, 1090000, 2180000, 900000, 0, 380000, 'pcs'),
  ('TRX-A01041', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01041', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 1, 960000, 960000, 800000, 0, 160000, 'pcs'),
  ('TRX-A01041', 'PRD-A-AKS-0027', 'Batre Samsung J1', 2, 51000, 102000, 39000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01925', '2026-11-15 09:21:47+07:00', 'Sri Wahyuni 4', 'Admin', 6143000, 0, 6143000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101924', '', '', '', 512000, NULL, '2026-11-15 09:21:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01925', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 2, 1450000, 2900000, 1400000, 0, 100000, 'pcs'),
  ('TRX-A01925', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 3, 24000, 72000, 16000, 0, 24000, 'pcs'),
  ('TRX-A01925', 'PRD-A-KEL-0057', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01925', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 3, 41000, 123000, 37000, 0, 12000, 'pcs'),
  ('TRX-A01925', 'PRD-A-HP-0477', 'HP INFINIX C15 3/32 90452', 1, 650000, 650000, 400000, 0, 250000, 'pcs'),
  ('TRX-A01925', 'PRD-A-HP-0491', 'HP REDMI V7 2/32 86419', 1, 2300000, 2300000, 2200000, 0, 100000, 'pcs'),
  ('TRX-A01925', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 2, 43000, 86000, 32000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00748', '2026-11-15 09:16:08+07:00', 'Umum', 'Admin', 10894000, 0, 5447000, 5447000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100747', '', '', '', 754500, NULL, '2026-11-15 09:16:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00748', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 1, 2780000, 2780000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A00748', 'PRD-A-EDGE-LONG', 'Baju anak laki-laki lengan panjang bahan katun premium motif dinosaurus warna biru dongker ukuran L edisi terbatas koleksi tahun 2026 toko ZPOS grosir eceran', 2, 75000, 150000, 50000, 0, 50000, 'pcs'),
  ('TRX-A00748', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 1, 73000, 73000, 58000, 0, 15000, 'pcs'),
  ('TRX-A00748', 'PRD-A-AKS-0019', 'Kartu Perdana Telkomsel', 1, 18000, 18000, 13000, 0, 5000, 'pcs'),
  ('TRX-A00748', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs'),
  ('TRX-A00748', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A00748', 'PRD-A-KEL-0123', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00748', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01926', '2026-11-15 09:12:01+07:00', 'Umum', 'Admin', 196500, 0, 0, 196500, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101925', '', '', '', 84700, NULL, '2026-11-15 09:12:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01926', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 3, 31000, 93000, 17000, 0, 42000, 'pcs'),
  ('TRX-A01926', 'PRD-A-KEL-0070', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A01926', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 18000, 0, 39000, 'pcs'),
  ('TRX-A01926', 'PRD-A-KEL-0141', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00849', '2026-11-15 09:01:59+07:00', 'Maya Putri 2', 'Admin', 11272000, 0, 11272000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100848', '', '', '', 470000, NULL, '2026-11-15 09:01:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00849', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 2, 2580000, 5160000, 2500000, 0, 160000, 'pcs'),
  ('TRX-A00849', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 3, 42000, 126000, 30000, 0, 36000, 'pcs'),
  ('TRX-A00849', 'PRD-A-HP-0224', 'HP INFINIX Y20 4/64 87565', 3, 1990000, 5970000, 1900000, 0, 270000, 'pcs'),
  ('TRX-A00849', 'PRD-A-KEL-0098', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01827', '2026-11-15 09:01:58+07:00', 'Ayu Lestari', 'Admin', 7152000, 0, 7152000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101826', '', '', '', 537000, NULL, '2026-11-15 09:01:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01827', 'PRD-A-KEL-0104', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01827', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 3, 1730000, 5190000, 1600000, 0, 390000, 'pcs'),
  ('TRX-A01827', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 2, 970000, 1940000, 900000, 0, 140000, 'pcs'),
  ('TRX-A01827', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01416', '2026-11-15 08:42:42+07:00', 'Dewi Lestari', 'Admin', 294000, 0, 0, 294000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101415', '', '', '', 80000, NULL, '2026-11-15 08:42:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01416', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 2, 29000, 58000, 15000, 0, 28000, 'pcs'),
  ('TRX-A01416', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A01416', 'PRD-A-KEL-0009', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01416', 'PRD-A-KEL-0027', 'Pensil', 2, 2000, 4000, 1500, 0, 1000, 'pcs'),
  ('TRX-A01416', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01416', 'PRD-A-KEL-0171', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01456', '2026-11-15 08:02:11+07:00', 'Umum', 'Admin', 2416000, 0, 2416000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101455', '', '', '', 156000, NULL, '2026-11-15 08:02:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01456', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A01456', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 2, 30000, 60000, 17000, 0, 26000, 'pcs'),
  ('TRX-A01456', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 2, 18000, 36000, 13000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01773', '2026-11-14 20:56:36+07:00', 'Umum', 'Admin', 332000, 0, 332000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101772', '', '', '', 43000, NULL, '2026-11-14 20:56:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01773', 'PRD-A-AKS-0091', 'Case Oppo A57', 2, 22000, 44000, 11000, 0, 22000, 'pcs'),
  ('TRX-A01773', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs'),
  ('TRX-A01773', 'PRD-A-KEL-0003', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00027', '2026-11-14 20:39:02+07:00', 'Joko Prasetyo 3', 'Admin', 7239000, 0, 7239000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100026', '', '', '', 282000, NULL, '2026-11-14 20:39:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00027', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00027', 'PRD-A-KEL-0129', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A00027', 'PRD-A-HP-0094', 'HP INFINIX Y20 8/256 25072', 3, 2390000, 7170000, 2300000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00197', '2026-11-14 20:15:53+07:00', 'Rina Marlina 2', 'Admin', 5510000, 0, 5510000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100196', '', '', '', 610000, NULL, '2026-11-14 20:15:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00197', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 1, 1100000, 1100000, 900000, 0, 200000, 'pcs'),
  ('TRX-A00197', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 2, 1540000, 3080000, 1400000, 0, 280000, 'pcs'),
  ('TRX-A00197', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 1, 1330000, 1330000, 1200000, 0, 130000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01056', '2026-11-14 20:09:50+07:00', 'Ayu Lestari 2', 'Admin', 5210000, 0, 5210000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101055', '', '', '', 574000, NULL, '2026-11-14 20:09:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01056', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 1, 410000, 410000, 300000, 0, 110000, 'pcs'),
  ('TRX-A01056', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 2, 1850000, 3700000, 1700000, 0, 300000, 'pcs'),
  ('TRX-A01056', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01056', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 1, 1060000, 1060000, 900000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01268', '2026-11-14 20:03:46+07:00', 'Umum', 'Admin', 7680000, 0, 7680000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101267', '', '', '', 1190000, NULL, '2026-11-14 20:03:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01268', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01268', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A01268', 'PRD-A-AKS-0153', 'Memory Card 32GB', 1, 92000, 92000, 86000, 0, 6000, 'pcs'),
  ('TRX-A01268', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01268', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 3, 500000, 1500000, 300000, 0, 600000, 'pcs'),
  ('TRX-A01268', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 3, 18000, 54000, 11000, 0, 21000, 'pcs'),
  ('TRX-A01268', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 2, 1610000, 3220000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A01268', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 1, 2590000, 2590000, 2500000, 0, 90000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00969', '2026-11-14 19:49:53+07:00', 'Umum', 'Admin', 28000, 0, 0, 28000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100968', '', '', '', 7000, NULL, '2026-11-14 19:49:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00969', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 1, 28000, 28000, 21000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01015', '2026-11-14 19:23:31+07:00', 'Maya Putri 3', 'Admin', 176000, 0, 176000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101014', '', '', '', 24000, NULL, '2026-11-14 19:23:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01015', 'PRD-A-AKS-0221', 'Memory Card 32GB', 2, 88000, 176000, 76000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00315', '2026-11-14 19:22:12+07:00', 'Sri Wahyuni 3', 'Admin', 4069500, 0, 2034750, 2034750, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100314', '', '', '', 780500, NULL, '2026-11-14 19:22:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00315', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A00315', 'PRD-A-KEL-0106', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A00315', 'PRD-A-KEL-0128', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00315', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00315', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 1, 910000, 910000, 700000, 0, 210000, 'pcs'),
  ('TRX-A00315', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 2, 700000, 1400000, 500000, 0, 400000, 'pcs'),
  ('TRX-A00315', 'PRD-A-KEL-0180', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00048', '2026-11-14 19:14:21+07:00', 'Umum', 'Admin', 1983000, 0, 1983000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100047', '', '', '', 194000, NULL, '2026-11-14 19:14:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00048', 'PRD-A-AKS-0242', 'Handsfree Samsung', 1, 28000, 28000, 16000, 0, 12000, 'pcs'),
  ('TRX-A00048', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs'),
  ('TRX-A00048', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 2, 39000, 78000, 30000, 0, 18000, 'pcs'),
  ('TRX-A00048', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01316', '2026-11-14 19:14:21+07:00', 'Andi Kurnia 4', 'Admin', 13410000, 0, 6705000, 6705000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101315', '', '', '', 793000, NULL, '2026-11-14 19:14:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01316', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs'),
  ('TRX-A01316', 'PRD-A-KEL-0072', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01316', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 2, 2270000, 4540000, 2100000, 0, 340000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00053', '2026-11-14 19:05:43+07:00', 'Umum', 'Admin', 1969000, 0, 984500, 984500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100052', '', '', '', 175000, NULL, '2026-11-14 19:05:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00053', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 3, 64000, 192000, 51000, 0, 39000, 'pcs'),
  ('TRX-A00053', 'PRD-A-AKS-0175', 'Kartu Perdana Tri', 1, 28000, 28000, 18000, 0, 10000, 'pcs'),
  ('TRX-A00053', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 1, 1590000, 1590000, 1500000, 0, 90000, 'pcs'),
  ('TRX-A00053', 'PRD-A-AKS-0134', 'Case Oppo A57', 3, 35000, 105000, 28000, 0, 21000, 'pcs'),
  ('TRX-A00053', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00288', '2026-11-14 19:00:12+07:00', 'Eko Saputra 4', 'Admin', 11745000, 0, 11745000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100287', '', '', '', 1250000, NULL, '2026-11-14 19:00:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00288', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 2, 930000, 1860000, 800000, 0, 260000, 'pcs'),
  ('TRX-A00288', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 3, 27000, 81000, 13000, 0, 42000, 'pcs'),
  ('TRX-A00288', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 2, 1460000, 2920000, 1300000, 0, 320000, 'pcs'),
  ('TRX-A00288', 'PRD-A-HP-0483', 'HP REALME Y20 2/16 63302', 2, 1690000, 3380000, 1600000, 0, 180000, 'pcs'),
  ('TRX-A00288', 'PRD-A-KEL-0037', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A00288', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 2, 26000, 52000, 16000, 0, 20000, 'pcs'),
  ('TRX-A00288', 'PRD-A-KEL-0089', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00288', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 2, 1710000, 3420000, 1500000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00204', '2026-11-14 18:45:11+07:00', 'Rudi Hartono 3', 'Admin', 3972000, 0, 3972000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100203', '', '', '', 276000, NULL, '2026-11-14 18:45:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00204', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 2, 41000, 82000, 34000, 0, 14000, 'pcs'),
  ('TRX-A00204', 'PRD-A-AKS-0186', 'Case Redmi 9A', 2, 25000, 50000, 14000, 0, 22000, 'pcs'),
  ('TRX-A00204', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00978', '2026-11-14 18:42:02+07:00', 'Umum', 'Admin', 6150000, 0, 0, 6150000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100977', '', '', '', 150000, NULL, '2026-11-14 18:42:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00978', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 3, 2050000, 6150000, 2000000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00910', '2026-11-14 18:38:40+07:00', 'Umum', 'Admin', 5868000, 0, 2934000, 2934000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100909', '', '', '', 356500, NULL, '2026-11-14 18:38:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00910', 'PRD-A-KEL-0198', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00910', 'PRD-A-HP-0483', 'HP REALME Y20 2/16 63302', 3, 1690000, 5070000, 1600000, 0, 270000, 'pcs'),
  ('TRX-A00910', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 1, 780000, 780000, 700000, 0, 80000, 'pcs'),
  ('TRX-A00910', 'PRD-A-KEL-0023', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A00910', 'PRD-A-KEL-0061', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00972', '2026-11-14 18:38:01+07:00', 'Sri Wahyuni 5', 'Admin', 151000, 0, 0, 151000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100971', '', '', '', 38000, NULL, '2026-11-14 18:38:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00972', 'PRD-A-AKS-0216', 'Memory Card 16GB', 3, 41000, 123000, 33000, 0, 24000, 'pcs'),
  ('TRX-A00972', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01814', '2026-11-14 18:21:32+07:00', 'Umum', 'Admin', 2420000, 0, 2420000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101813', '', '', '', 420000, NULL, '2026-11-14 18:21:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01814', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 2, 1210000, 2420000, 1000000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00618', '2026-11-14 18:03:23+07:00', 'Budi Santoso', 'Admin', 5014500, 0, 5014500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100617', '', '', '', 312100, NULL, '2026-11-14 18:03:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00618', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 2, 1570000, 3140000, 1500000, 0, 140000, 'pcs'),
  ('TRX-A00618', 'PRD-A-KEL-0038', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00618', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 1, 1870000, 1870000, 1700000, 0, 170000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00874', '2026-11-14 17:59:55+07:00', 'Umum', 'Admin', 4027000, 0, 4027000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100873', '', '', '', 603000, NULL, '2026-11-14 17:59:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00874', 'PRD-A-KEL-0151', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00874', 'PRD-A-KEL-0085', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00874', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 3, 1290000, 3870000, 1100000, 0, 570000, 'pcs'),
  ('TRX-A00874', 'PRD-A-KEL-0034', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00874', 'PRD-A-AKS-0073', 'Memory Card 64GB', 1, 35000, 35000, 31000, 0, 4000, 'pcs'),
  ('TRX-A00874', 'PRD-A-AKS-0189', 'Tempered Glass Oppo', 1, 22000, 22000, 15000, 0, 7000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00745', '2026-11-14 17:55:56+07:00', 'Umum', 'Admin', 19331000, 0, 9665500, 9665500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100744', '', '', '', 1836000, NULL, '2026-11-14 17:55:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00745', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 2, 2190000, 4380000, 2000000, 0, 380000, 'pcs'),
  ('TRX-A00745', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 3, 910000, 2730000, 700000, 0, 630000, 'pcs'),
  ('TRX-A00745', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 3, 1150000, 3450000, 1100000, 0, 150000, 'pcs'),
  ('TRX-A00745', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 3, 41000, 123000, 30000, 0, 33000, 'pcs'),
  ('TRX-A00745', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs'),
  ('TRX-A00745', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 1, 2960000, 2960000, 2800000, 0, 160000, 'pcs'),
  ('TRX-A00745', 'PRD-A-AKS-0222', 'Case Redmi 9A', 3, 46000, 138000, 35000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01842', '2026-11-14 17:35:14+07:00', 'Umum', 'Admin', 7892000, 0, 7892000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101841', '', '', '', 896000, NULL, '2026-11-14 17:35:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01842', 'PRD-A-KEL-0089', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01842', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 2, 1780000, 3560000, 1600000, 0, 360000, 'pcs'),
  ('TRX-A01842', 'PRD-A-AKS-0191', 'Batre Samsung J1', 2, 54000, 108000, 39000, 0, 30000, 'pcs'),
  ('TRX-A01842', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 2, 1220000, 2440000, 1000000, 0, 440000, 'pcs'),
  ('TRX-A01842', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 1, 1760000, 1760000, 1700000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00700', '2026-11-14 17:34:48+07:00', 'Umum', 'Admin', 2142000, 0, 2142000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100699', '', '', '', 354000, NULL, '2026-11-14 17:34:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00700', 'PRD-A-KEL-0034', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A00700', 'PRD-A-KEL-0196', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00700', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A00700', 'PRD-A-AKS-0073', 'Memory Card 64GB', 1, 35000, 35000, 31000, 0, 4000, 'pcs'),
  ('TRX-A00700', 'PRD-A-AKS-0188', 'Batre Oppo A57', 1, 52000, 52000, 40000, 0, 12000, 'pcs'),
  ('TRX-A00700', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 2, 55000, 110000, 50000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00436', '2026-11-14 17:28:50+07:00', 'Lilis Suryani', 'Admin', 3395000, 0, 3395000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100435', '', '', '', 230000, NULL, '2026-11-14 17:28:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00436', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 2, 1600000, 3200000, 1500000, 0, 200000, 'pcs'),
  ('TRX-A00436', 'PRD-A-KEL-0170', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00750', '2026-11-14 17:10:05+07:00', 'Agus Wijaya 3', 'Admin', 3870000, 0, 3870000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100749', '', '', '', 670000, NULL, '2026-11-14 17:10:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00750', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 1, 600000, 600000, 400000, 0, 200000, 'pcs'),
  ('TRX-A00750', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 2, 1110000, 2220000, 900000, 0, 420000, 'pcs'),
  ('TRX-A00750', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 1, 1050000, 1050000, 1000000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01474', '2026-11-14 16:57:11+07:00', 'Umum', 'Admin', 940500, 0, 940500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101473', '', '', '', 303000, NULL, '2026-11-14 16:57:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01474', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 2, 430000, 860000, 300000, 0, 260000, 'pcs'),
  ('TRX-A01474', 'PRD-A-KEL-0079', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A01474', 'PRD-A-KEL-0157', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00611', '2026-11-14 16:45:35+07:00', 'Dewi Lestari 2', 'Admin', 12805000, 0, 12805000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100610', '', '', '', 1104000, NULL, '2026-11-14 16:45:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00611', 'PRD-A-KEL-0196', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00611', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 1, 3030000, 3030000, 2800000, 0, 230000, 'pcs'),
  ('TRX-A00611', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 2, 1600000, 3200000, 1500000, 0, 200000, 'pcs'),
  ('TRX-A00611', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 2, 1810000, 3620000, 1600000, 0, 420000, 'pcs'),
  ('TRX-A00611', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 1, 2730000, 2730000, 2500000, 0, 230000, 'pcs'),
  ('TRX-A00611', 'PRD-A-AKS-0144', 'Voucher Telkomsel 10GB', 3, 65000, 195000, 60000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01732', '2026-11-14 16:44:09+07:00', 'Umum', 'Admin', 2985000, 0, 2985000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101731', '', '', '', 256500, NULL, '2026-11-14 16:44:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01732', 'PRD-A-HP-0272', 'HP ITEL 6A 4/128 52530', 1, 2720000, 2720000, 2500000, 0, 220000, 'pcs'),
  ('TRX-A01732', 'PRD-A-KEL-0050', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01732', 'PRD-A-AKS-0221', 'Memory Card 32GB', 3, 88000, 264000, 76000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00063', '2026-11-14 16:36:52+07:00', 'Nur Halimah 5', 'Admin', 2763500, 0, 2763500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100062', '', '', '', 731700, NULL, '2026-11-14 16:36:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00063', 'PRD-A-AKS-0015', 'Kabel Data Lightning', 1, 24000, 24000, 15000, 0, 9000, 'pcs'),
  ('TRX-A00063', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 1, 860000, 860000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00063', 'PRD-A-AKS-0140', 'Voucher Tri 8GB', 2, 69000, 138000, 58000, 0, 22000, 'pcs'),
  ('TRX-A00063', 'PRD-A-KEL-0006', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00063', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 3, 580000, 1740000, 400000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00292', '2026-11-14 16:26:28+07:00', 'Nur Halimah 5', 'Admin', 13050000, 0, 13050000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100291', '', '', '', 1490000, NULL, '2026-11-14 16:26:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00292', 'PRD-A-KEL-0098', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00292', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 1, 1940000, 1940000, 1700000, 0, 240000, 'pcs'),
  ('TRX-A00292', 'PRD-A-AKS-0195', 'Memory Card 16GB', 2, 70000, 140000, 65000, 0, 10000, 'pcs'),
  ('TRX-A00292', 'PRD-A-KEL-0173', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00292', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 2, 2490000, 4980000, 2300000, 0, 380000, 'pcs'),
  ('TRX-A00292', 'PRD-A-HP-0333', 'HP REALME Y16 3/32 21366', 1, 1330000, 1330000, 1200000, 0, 130000, 'pcs'),
  ('TRX-A00292', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 3, 1540000, 4620000, 1300000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01469', '2026-11-14 16:20:41+07:00', 'Ayu Lestari 3', 'Admin', 2416500, 0, 2416500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101468', '', '', '', 151700, NULL, '2026-11-14 16:20:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01469', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 3, 18000, 54000, 10000, 0, 24000, 'pcs'),
  ('TRX-A01469', 'PRD-A-AKS-0146', 'Memory Card 32GB', 1, 91000, 91000, 82000, 0, 9000, 'pcs'),
  ('TRX-A01469', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 1, 2190000, 2190000, 2100000, 0, 90000, 'pcs'),
  ('TRX-A01469', 'PRD-A-KEL-0006', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A01469', 'PRD-A-AKS-0038', 'Case Vivo Y20', 2, 40000, 80000, 26000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00675', '2026-11-14 15:17:50+07:00', 'Umum', 'Admin', 68000, 0, 68000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100674', '', '', '', 22000, NULL, '2026-11-14 15:17:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00675', 'PRD-A-AKS-0143', 'Batre Samsung J1', 2, 34000, 68000, 23000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00601', '2026-11-14 15:01:36+07:00', 'Rudi Hartono', 'Admin', 3540000, 0, 3540000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100600', '', '', '', 240000, NULL, '2026-11-14 15:01:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00601', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 3, 1180000, 3540000, 1100000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01538', '2026-11-14 14:56:31+07:00', 'Umum', 'Admin', 3531000, 0, 3531000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101537', '', '', '', 752000, NULL, '2026-11-14 14:56:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01538', 'PRD-A-HP-0453', 'HP NOKIA A15 2/32 24339', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A01538', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A01538', 'PRD-A-KEL-0011', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01538', 'PRD-A-AKS-0155', 'Handsfree Samsung', 1, 40000, 40000, 31000, 0, 9000, 'pcs'),
  ('TRX-A01538', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 2, 700000, 1400000, 500000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00351', '2026-11-14 14:41:34+07:00', 'Sri Wahyuni 2', 'Admin', 2626000, 0, 2626000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100350', '', '', '', 259000, NULL, '2026-11-14 14:41:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00351', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 2, 1210000, 2420000, 1100000, 0, 220000, 'pcs'),
  ('TRX-A00351', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 3, 38000, 114000, 33000, 0, 15000, 'pcs'),
  ('TRX-A00351', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 2, 46000, 92000, 34000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00473', '2026-11-14 14:27:33+07:00', 'Yusuf Maulana 2', 'Admin', 2545000, 0, 2545000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100472', '', '', '', 449000, NULL, '2026-11-14 14:27:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00473', 'PRD-A-AKS-0084', 'Memory Card 64GB', 1, 95000, 95000, 82000, 0, 13000, 'pcs'),
  ('TRX-A00473', 'PRD-A-KEL-0077', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00473', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 2, 890000, 1780000, 800000, 0, 180000, 'pcs'),
  ('TRX-A00473', 'PRD-A-HP-0477', 'HP INFINIX C15 3/32 90452', 1, 650000, 650000, 400000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00495', '2026-11-14 14:22:25+07:00', 'Umum', 'Admin', 12648000, 0, 12648000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100494', '', '', '', 1216000, NULL, '2026-11-14 14:22:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00495', 'PRD-A-AKS-0171', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A00495', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A00495', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 3, 2540000, 7620000, 2300000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00125', '2026-11-14 13:53:54+07:00', 'Dedi Supriadi 5', 'Admin', 1788000, 0, 1788000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100124', '', '', '', 183000, NULL, '2026-11-14 13:53:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00125', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 1, 1780000, 1780000, 1600000, 0, 180000, 'pcs'),
  ('TRX-A00125', 'PRD-A-KEL-0008', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00488', '2026-11-14 13:45:43+07:00', 'Umum', 'Admin', 10578000, 0, 5289000, 5289000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100487', '', '', '', 688000, NULL, '2026-11-14 13:45:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00488', 'PRD-A-AKS-0213', 'Memory Card 16GB', 3, 72000, 216000, 65000, 0, 21000, 'pcs'),
  ('TRX-A00488', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 1, 1390000, 1390000, 1200000, 0, 190000, 'pcs'),
  ('TRX-A00488', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs'),
  ('TRX-A00488', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A00488', 'PRD-A-KEL-0024', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00302', '2026-11-14 13:36:29+07:00', 'Dewi Lestari 4', 'Admin', 6618000, 0, 6618000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100301', '', '', '', 623000, NULL, '2026-11-14 13:36:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00302', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs'),
  ('TRX-A00302', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 2, 41000, 82000, 34000, 0, 14000, 'pcs'),
  ('TRX-A00302', 'PRD-A-AKS-0226', 'Memory Card 32GB', 3, 85000, 255000, 78000, 0, 21000, 'pcs'),
  ('TRX-A00302', 'PRD-A-KEL-0125', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00302', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 2, 1870000, 3740000, 1700000, 0, 340000, 'pcs'),
  ('TRX-A00302', 'PRD-A-KEL-0029', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A00302', 'PRD-A-AKS-0050', 'Case Redmi 9A', 1, 34000, 34000, 26000, 0, 8000, 'pcs'),
  ('TRX-A00302', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 2, 55000, 110000, 49000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00050', '2026-11-14 13:34:25+07:00', 'Joko Prasetyo 4', 'Admin', 12689000, 0, 12689000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100049', '', '', '', 808000, NULL, '2026-11-14 13:34:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00050', 'PRD-A-KEL-0164', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00050', 'PRD-A-KEL-0120', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00050', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 1, 2300000, 2300000, 2200000, 0, 100000, 'pcs'),
  ('TRX-A00050', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A00050', 'PRD-A-AKS-0210', 'Batre Nokia BL-4C', 3, 51000, 153000, 47000, 0, 12000, 'pcs'),
  ('TRX-A00050', 'PRD-A-AKS-0166', 'Case Redmi 9A', 3, 25000, 75000, 10000, 0, 45000, 'pcs'),
  ('TRX-A00050', 'PRD-A-AKS-0154', 'Memory Card 16GB', 1, 101000, 101000, 86000, 0, 15000, 'pcs'),
  ('TRX-A00050', 'PRD-A-HP-0098', 'HP INFINIX 9A 3/64 25641', 3, 1550000, 4650000, 1400000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01621', '2026-11-14 13:31:34+07:00', 'Siti Aisyah 3', 'Admin', 882000, 0, 882000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101620', '', '', '', 102000, NULL, '2026-11-14 13:31:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01621', 'PRD-A-KEL-0057', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01621', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 1, 780000, 780000, 700000, 0, 80000, 'pcs'),
  ('TRX-A01621', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01621', 'PRD-A-KEL-0109', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01835', '2026-11-14 12:41:35+07:00', 'Umum', 'Admin', 8386000, 0, 8386000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101834', '', '', '', 922000, NULL, '2026-11-14 12:41:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01835', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01835', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01835', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 1, 940000, 940000, 700000, 0, 240000, 'pcs'),
  ('TRX-A01835', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 1, 820000, 820000, 600000, 0, 220000, 'pcs'),
  ('TRX-A01835', 'PRD-A-AKS-0242', 'Handsfree Samsung', 1, 28000, 28000, 16000, 0, 12000, 'pcs'),
  ('TRX-A01835', 'PRD-A-AKS-0166', 'Case Redmi 9A', 3, 25000, 75000, 10000, 0, 45000, 'pcs'),
  ('TRX-A01835', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 1, 2010000, 2010000, 1800000, 0, 210000, 'pcs'),
  ('TRX-A01835', 'PRD-A-AKS-0088', 'Case Redmi 9A', 3, 43000, 129000, 34000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00626', '2026-11-14 12:18:07+07:00', 'Umum', 'Admin', 8944000, 0, 8944000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100625', '', '', '', 640000, NULL, '2026-11-14 12:18:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00626', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A00626', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A00626', 'PRD-A-HP-0408', 'HP INFINIX A15 3/64 21912', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A00626', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 2, 2730000, 5460000, 2500000, 0, 460000, 'pcs'),
  ('TRX-A00626', 'PRD-A-AKS-0116', 'Memory Card 16GB', 1, 88000, 88000, 76000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01118', '2026-11-14 12:17:22+07:00', 'Umum', 'Admin', 14076000, 0, 7038000, 7038000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101117', '', '', '', 1241000, NULL, '2026-11-14 12:17:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01118', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 2, 1210000, 2420000, 1000000, 0, 420000, 'pcs'),
  ('TRX-A01118', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 3, 2590000, 7770000, 2400000, 0, 570000, 'pcs'),
  ('TRX-A01118', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A01118', 'PRD-A-AKS-0222', 'Case Redmi 9A', 1, 46000, 46000, 35000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00638', '2026-11-14 12:14:34+07:00', 'Fitri Rahmawati 4', 'Admin', 10244000, 0, 10244000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100637', '', '', '', 949000, NULL, '2026-11-14 12:14:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00638', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 1, 1680000, 1680000, 1600000, 0, 80000, 'pcs'),
  ('TRX-A00638', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 3, 2550000, 7650000, 2300000, 0, 750000, 'pcs'),
  ('TRX-A00638', 'PRD-A-AKS-0023', 'Memory Card 32GB', 2, 53000, 106000, 45000, 0, 16000, 'pcs'),
  ('TRX-A00638', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 3, 46000, 138000, 35000, 0, 33000, 'pcs'),
  ('TRX-A00638', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 1, 670000, 670000, 600000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00047', '2026-11-14 12:06:20+07:00', 'Umum', 'Admin', 4500, 0, 4500, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100046', '', '', '', 2100, NULL, '2026-11-14 12:06:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00047', 'PRD-A-KEL-0070', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01334', '2026-11-14 11:45:28+07:00', 'Dedi Supriadi 4', 'Admin', 40000, 0, 40000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101333', '', '', '', 6000, NULL, '2026-11-14 11:45:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01334', 'PRD-A-KEL-0093', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01860', '2026-11-14 11:25:28+07:00', 'Umum', 'Admin', 14711000, 0, 14711000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101859', '', '', '', 1174000, NULL, '2026-11-14 11:25:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01860', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A01860', 'PRD-A-HP-0263', 'HP ITEL C11 3/32 56898', 1, 2910000, 2910000, 2700000, 0, 210000, 'pcs'),
  ('TRX-A01860', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 1, 41000, 41000, 37000, 0, 4000, 'pcs'),
  ('TRX-A01860', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 1, 1760000, 1760000, 1700000, 0, 60000, 'pcs'),
  ('TRX-A01860', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 2, 1850000, 3700000, 1700000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00385', '2026-11-14 11:22:01+07:00', 'Budi Santoso 4', 'Admin', 3000000, 0, 1500000, 1500000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100384', '', '', '', 383000, NULL, '2026-11-14 11:22:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00385', 'PRD-A-KEL-0047', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00385', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 2, 1490000, 2980000, 1300000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00268', '2026-11-14 11:17:11+07:00', 'Umum', 'Admin', 40000, 0, 40000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100267', '', '', '', 5000, NULL, '2026-11-14 11:17:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00268', 'PRD-A-AKS-0063', 'Case Samsung A03', 1, 40000, 40000, 35000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01429', '2026-11-14 10:57:24+07:00', 'Eko Saputra', 'Admin', 10127000, 0, 10127000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101428', '', '', '', 652000, NULL, '2026-11-14 10:57:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01429', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A01429', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 3, 1670000, 5010000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A01429', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A01429', 'PRD-A-KEL-0136', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01429', 'PRD-A-AKS-0007', 'Case Redmi 9A', 3, 26000, 78000, 20000, 0, 18000, 'pcs'),
  ('TRX-A01429', 'PRD-A-HP-0306', 'HP REALME 5A 4/128 66559', 2, 1110000, 2220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01429', 'PRD-A-AKS-0236', 'Memory Card 64GB', 3, 72000, 216000, 63000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01271', '2026-11-14 10:53:18+07:00', 'Fitri Rahmawati 3', 'Admin', 2080000, 0, 2080000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101270', '', '', '', 480000, NULL, '2026-11-14 10:53:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01271', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 2, 1040000, 2080000, 800000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01403', '2026-11-14 10:52:24+07:00', 'Umum', 'Admin', 18000, 0, 18000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101402', '', '', '', 6000, NULL, '2026-11-14 10:52:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01403', 'PRD-A-KEL-0189', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;
