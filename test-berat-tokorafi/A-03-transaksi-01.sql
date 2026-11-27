-- ============================================================================
-- TEST BERAT TOKORAFI — Dataset A (1.000 produk + 2.000 transaksi)
-- File: A-03-transaksi-01.sql  (bagian 1 dari 7 langkah ini — jalankan berurutan)
-- Isi: transaksi: 323, transaksi_detail: 1445
-- Transaksi 28 hari terakhir + detail (induk & detail satu unit).
-- Semua INSERT memakai ON CONFLICT DO NOTHING — aman dijalankan 2x dan
-- tidak bentrok dengan seed bawaan tokorafi (TES Kopi, TRX-8250237222,
-- CBG-UTAMA, PLG-UMUM). Dibuat oleh gen-tokorafi.js (deterministik).
-- ============================================================================

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00320', '2026-11-27 20:56:38+07:00', 'Budi Santoso 4', 'Admin', 16868000, 0, 16868000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100319', '', '', '', 1752000, NULL, '2026-11-27 20:56:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00320', 'PRD-A-AKS-0239', 'Batre Samsung J1', 2, 43000, 86000, 30000, 0, 26000, 'pcs'),
  ('TRX-A00320', 'PRD-A-KEL-0148', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00320', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 3, 1260000, 3780000, 1100000, 0, 480000, 'pcs'),
  ('TRX-A00320', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 1, 1710000, 1710000, 1500000, 0, 210000, 'pcs'),
  ('TRX-A00320', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00320', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A00320', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00451', '2026-11-27 20:35:34+07:00', 'Dedi Supriadi 2', 'Admin', 12940000, 0, 12940000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100450', '', '', '', 805000, NULL, '2026-11-27 20:35:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00451', 'PRD-A-AKS-0063', 'Case Samsung A03', 1, 40000, 40000, 35000, 0, 5000, 'pcs'),
  ('TRX-A00451', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 3, 2600000, 7800000, 2500000, 0, 300000, 'pcs'),
  ('TRX-A00451', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 2, 2550000, 5100000, 2300000, 0, 500000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00846', '2026-11-27 20:32:05+07:00', 'Umum', 'Admin', 149000, 0, 74500, 74500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100845', '', '', '', 31000, NULL, '2026-11-27 20:32:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00846', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A00846', 'PRD-A-KEL-0170', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01385', '2026-11-27 20:27:27+07:00', 'Fajar Nugroho 5', 'Admin', 11534000, 0, 11534000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101384', '', '', '', 688000, NULL, '2026-11-27 20:27:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01385', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 2, 38000, 76000, 33000, 0, 10000, 'pcs'),
  ('TRX-A01385', 'PRD-A-AKS-0192', 'Handsfree Oppo', 2, 49000, 98000, 40000, 0, 18000, 'pcs'),
  ('TRX-A01385', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs'),
  ('TRX-A01385', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 1, 2510000, 2510000, 2300000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00487', '2026-11-27 20:13:29+07:00', 'Rudi Hartono 5', 'Admin', 15315000, 0, 15315000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100486', '', '', '', 1085000, NULL, '2026-11-27 20:13:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00487', 'PRD-A-HP-0485', 'HP ITEL Y91C 3/64 10965', 3, 2820000, 8460000, 2600000, 0, 660000, 'pcs'),
  ('TRX-A00487', 'PRD-A-KEL-0175', 'Snack wafer', 1, 10000, 10000, 8000, 0, 2000, 'pcs'),
  ('TRX-A00487', 'PRD-A-KEL-0171', 'Teh celup', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00487', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A00487', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 1, 2970000, 2970000, 2800000, 0, 170000, 'pcs'),
  ('TRX-A00487', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 1, 23000, 23000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00423', '2026-11-27 19:58:48+07:00', 'Agus Wijaya 5', 'Admin', 4389000, 0, 0, 4389000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100422', '', '', '', 1142500, NULL, '2026-11-27 19:58:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00423', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 2, 25000, 50000, 19000, 0, 12000, 'pcs'),
  ('TRX-A00423', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 1, 740000, 740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A00423', 'PRD-A-HP-0348', 'HP REALME C15 8/256 21999', 3, 910000, 2730000, 700000, 0, 630000, 'pcs'),
  ('TRX-A00423', 'PRD-A-AKS-0142', 'Kartu Perdana Telkomsel', 3, 23000, 69000, 16000, 0, 21000, 'pcs'),
  ('TRX-A00423', 'PRD-A-KEL-0188', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00423', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 3, 9000, 27000, 6000, 0, 9000, 'pcs'),
  ('TRX-A00423', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 3, 57000, 171000, 45000, 0, 36000, 'pcs'),
  ('TRX-A00423', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 1, 590000, 590000, 400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01313', '2026-11-27 19:24:08+07:00', 'Umum', 'Admin', 70000, 0, 70000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101312', '', '', '', 23000, NULL, '2026-11-27 19:24:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01313', 'PRD-A-KEL-0052', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01313', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 1, 42000, 42000, 27000, 0, 15000, 'pcs'),
  ('TRX-A01313', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 3, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A01313', 'PRD-A-KEL-0177', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01744', '2026-11-27 19:22:27+07:00', 'Dedi Supriadi', 'Admin', 11519000, 0, 11519000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101743', '', '', '', 699000, NULL, '2026-11-27 19:22:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01744', 'PRD-A-AKS-0104', 'Memory Card 64GB', 3, 43000, 129000, 40000, 0, 9000, 'pcs'),
  ('TRX-A01744', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 1, 2690000, 2690000, 2600000, 0, 90000, 'pcs'),
  ('TRX-A01744', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01514', '2026-11-27 19:13:20+07:00', 'Eko Saputra', 'Admin', 2386000, 0, 1193000, 1193000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101513', '', '', '', 628000, NULL, '2026-11-27 19:13:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01514', 'PRD-A-KEL-0089', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01514', 'PRD-A-AKS-0052', 'Memory Card 32GB', 2, 95000, 190000, 89000, 0, 12000, 'pcs'),
  ('TRX-A01514', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 3, 700000, 2100000, 500000, 0, 600000, 'pcs'),
  ('TRX-A01514', 'PRD-A-AKS-0160', 'Memory Card 32GB', 2, 40000, 80000, 34000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01370', '2026-11-27 19:02:15+07:00', 'Maya Putri 5', 'Admin', 327000, 0, 327000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101369', '', '', '', 95000, NULL, '2026-11-27 19:02:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01370', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 2, 30000, 60000, 18000, 0, 24000, 'pcs'),
  ('TRX-A01370', 'PRD-A-KEL-0101', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01370', 'PRD-A-AKS-0150', 'Memory Card 16GB', 1, 55000, 55000, 41000, 0, 14000, 'pcs'),
  ('TRX-A01370', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 2, 46000, 92000, 35000, 0, 22000, 'pcs'),
  ('TRX-A01370', 'PRD-A-KEL-0164', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01370', 'PRD-A-KEL-0017', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00934', '2026-11-27 18:37:52+07:00', 'Fajar Nugroho', 'Admin', 45000, 0, 0, 45000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100933', '', '', '', 24000, NULL, '2026-11-27 18:37:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00934', 'PRD-A-AKS-0206', 'Tempered Glass Vivo', 3, 15000, 45000, 7000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01408', '2026-11-27 18:21:56+07:00', 'Maya Putri 4', 'Admin', 7085000, 0, 3542500, 3542500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101407', '', '', '', 1198000, NULL, '2026-11-27 18:21:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01408', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 3, 1310000, 3930000, 1100000, 0, 630000, 'pcs'),
  ('TRX-A01408', 'PRD-A-KEL-0015', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A01408', 'PRD-A-KEL-0160', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A01408', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01408', 'PRD-A-AKS-0090', 'Kartu Perdana XL', 1, 35000, 35000, 22000, 0, 13000, 'pcs'),
  ('TRX-A01408', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 3, 960000, 2880000, 800000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01117', '2026-11-27 18:15:04+07:00', 'Umum', 'Admin', 3040000, 0, 3040000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101116', '', '', '', 440000, NULL, '2026-11-27 18:15:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01117', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 2, 1520000, 3040000, 1300000, 0, 440000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01114', '2026-11-27 18:14:58+07:00', 'Rina Marlina 5', 'Admin', 5000, 0, 2500, 2500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101113', '', '', '', 2000, NULL, '2026-11-27 18:14:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01114', 'PRD-A-KEL-0142', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00648', '2026-11-27 18:09:21+07:00', 'Hendra Gunawan 5', 'Admin', 3305000, 0, 3305000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100647', '', '', '', 174000, NULL, '2026-11-27 18:09:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00648', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 3, 33000, 99000, 25000, 0, 24000, 'pcs'),
  ('TRX-A00648', 'PRD-A-AKS-0181', 'Batre Nokia BL-4C', 2, 33000, 66000, 28000, 0, 10000, 'pcs'),
  ('TRX-A00648', 'PRD-A-HP-0234', 'HP NOKIA 5A 8/256 70952', 2, 1570000, 3140000, 1500000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00324', '2026-11-27 17:44:53+07:00', 'Agus Wijaya 5', 'Admin', 6775000, 0, 6775000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100323', '', '', '', 417500, NULL, '2026-11-27 17:44:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00324', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 1, 1050000, 1050000, 1000000, 0, 50000, 'pcs'),
  ('TRX-A00324', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 1, 31000, 31000, 21000, 0, 10000, 'pcs'),
  ('TRX-A00324', 'PRD-A-HP-0406', 'HP REDMI Y55S 4/128 92726', 2, 2760000, 5520000, 2600000, 0, 320000, 'pcs'),
  ('TRX-A00324', 'PRD-A-KEL-0077', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00324', 'PRD-A-KEL-0124', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00324', 'PRD-A-KEL-0152', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00324', 'PRD-A-KEL-0031', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00324', 'PRD-A-AKS-0239', 'Batre Samsung J1', 1, 43000, 43000, 30000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01711', '2026-11-27 17:40:25+07:00', 'Umum', 'Admin', 10362000, 0, 10362000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101710', '', '', '', 875500, NULL, '2026-11-27 17:40:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01711', 'PRD-A-AKS-0099', 'Tempered Glass Xiaomi', 2, 27000, 54000, 16000, 0, 22000, 'pcs'),
  ('TRX-A01711', 'PRD-A-KEL-0188', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01711', 'PRD-A-KEL-0092', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01711', 'PRD-A-HP-0207', 'HP REDMI A57 3/64 82127', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs'),
  ('TRX-A01711', 'PRD-A-AKS-0125', 'Handsfree Samsung', 1, 52000, 52000, 37000, 0, 15000, 'pcs'),
  ('TRX-A01711', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A01711', 'PRD-A-KEL-0030', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01711', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 3, 1680000, 5040000, 1600000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00828', '2026-11-27 17:19:44+07:00', 'Umum', 'Admin', 2960000, 0, 2960000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100827', '', '', '', 160000, NULL, '2026-11-27 17:19:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00828', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 1, 2960000, 2960000, 2800000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01240', '2026-11-27 17:15:06+07:00', 'Umum', 'Admin', 11687000, 0, 11687000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101239', '', '', '', 1786000, NULL, '2026-11-27 17:15:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01240', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 2, 27000, 54000, 13000, 0, 28000, 'pcs'),
  ('TRX-A01240', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 2, 2200000, 4400000, 2000000, 0, 400000, 'pcs'),
  ('TRX-A01240', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 3, 910000, 2730000, 700000, 0, 630000, 'pcs'),
  ('TRX-A01240', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 3, 1410000, 4230000, 1200000, 0, 630000, 'pcs'),
  ('TRX-A01240', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01240', 'PRD-A-KEL-0097', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A01240', 'PRD-A-AKS-0197', 'Case Vivo Y20', 2, 24000, 48000, 11000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01633', '2026-11-27 17:11:09+07:00', 'Joko Prasetyo 5', 'Admin', 329000, 0, 329000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101632', '', '', '', 85000, NULL, '2026-11-27 17:11:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01633', 'PRD-A-AKS-0239', 'Batre Samsung J1', 3, 43000, 129000, 30000, 0, 39000, 'pcs'),
  ('TRX-A01633', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 2, 73000, 146000, 58000, 0, 30000, 'pcs'),
  ('TRX-A01633', 'PRD-A-KEL-0093', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A01633', 'PRD-A-AKS-0139', 'Case Samsung A03', 1, 34000, 34000, 21000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01067', '2026-11-27 16:49:48+07:00', 'Budi Santoso 4', 'Admin', 13022000, 0, 13022000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101066', '', '', '', 1564000, NULL, '2026-11-27 16:49:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01067', 'PRD-A-AKS-0071', 'Case Oppo A57', 2, 31000, 62000, 19000, 0, 24000, 'pcs'),
  ('TRX-A01067', 'PRD-A-HP-0535', 'HP ITEL C11 3/64 17486', 3, 2480000, 7440000, 2300000, 0, 540000, 'pcs'),
  ('TRX-A01067', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 3, 660000, 1980000, 500000, 0, 480000, 'pcs'),
  ('TRX-A01067', 'PRD-A-KEL-0177', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01067', 'PRD-A-KEL-0013', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01067', 'PRD-A-KEL-0124', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01067', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 3, 1170000, 3510000, 1000000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00017', '2026-11-27 16:23:05+07:00', 'Eko Saputra 3', 'Admin', 3866000, 0, 0, 3866000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100016', '', '', '', 452000, NULL, '2026-11-27 16:23:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00017', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 1, 1810000, 1810000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A00017', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 1, 1900000, 1900000, 1700000, 0, 200000, 'pcs'),
  ('TRX-A00017', 'PRD-A-KEL-0169', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00017', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 3, 46000, 138000, 34000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00970', '2026-11-27 16:22:17+07:00', 'Umum', 'Admin', 2140000, 0, 2140000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100969', '', '', '', 140000, NULL, '2026-11-27 16:22:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00970', 'PRD-A-HP-0201', 'HP NOKIA C15 4/64 41094', 2, 1070000, 2140000, 1000000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01262', '2026-11-27 16:10:31+07:00', 'Hendra Gunawan 4', 'Admin', 10669500, 0, 10669500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101261', '', '', '', 722000, NULL, '2026-11-27 16:10:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01262', 'PRD-A-HP-0533', 'HP REALME C3 4/64 64183', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs'),
  ('TRX-A01262', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 3, 580000, 1740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01262', 'PRD-A-KEL-0186', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A01262', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 1, 9000, 9000, 6000, 0, 3000, 'pcs'),
  ('TRX-A01262', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 2, 30000, 60000, 17000, 0, 26000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00596', '2026-11-27 16:07:26+07:00', 'Maya Putri 4', 'Admin', 133000, 0, 133000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100595', '', '', '', 44000, NULL, '2026-11-27 16:07:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00596', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A00596', 'PRD-A-AKS-0150', 'Memory Card 16GB', 1, 55000, 55000, 41000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00860', '2026-11-27 15:57:08+07:00', 'Maya Putri 4', 'Admin', 1254000, 0, 1254000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100859', '', '', '', 90000, NULL, '2026-11-27 15:57:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00860', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00860', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 1, 1050000, 1050000, 1000000, 0, 50000, 'pcs'),
  ('TRX-A00860', 'PRD-A-KEL-0192', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00860', 'PRD-A-AKS-0188', 'Batre Oppo A57', 2, 52000, 104000, 40000, 0, 24000, 'pcs'),
  ('TRX-A00860', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01440', '2026-11-27 15:45:35+07:00', 'Budi Santoso 3', 'Admin', 4970000, 0, 2485000, 2485000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101439', '', '', '', 402000, NULL, '2026-11-27 15:45:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01440', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 2, 2270000, 4540000, 2100000, 0, 340000, 'pcs'),
  ('TRX-A01440', 'PRD-A-KEL-0045', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01440', 'PRD-A-AKS-0214', 'Memory Card 64GB', 3, 100000, 300000, 86000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00343', '2026-11-27 15:32:04+07:00', 'Umum', 'Admin', 9537000, 0, 4768500, 4768500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100342', '', '', '', 1029000, NULL, '2026-11-27 15:32:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00343', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 1, 33000, 33000, 27000, 0, 6000, 'pcs'),
  ('TRX-A00343', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 2, 36000, 72000, 26000, 0, 20000, 'pcs'),
  ('TRX-A00343', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 3, 1170000, 3510000, 1000000, 0, 510000, 'pcs'),
  ('TRX-A00343', 'PRD-A-AKS-0053', 'Memory Card 16GB', 3, 41000, 123000, 28000, 0, 39000, 'pcs'),
  ('TRX-A00343', 'PRD-A-KEL-0111', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00343', 'PRD-A-AKS-0121', 'Kabel Data Lightning', 3, 45000, 135000, 33000, 0, 36000, 'pcs'),
  ('TRX-A00343', 'PRD-A-AKS-0040', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A00343', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00086', '2026-11-27 15:26:33+07:00', 'Umum', 'Admin', 12860000, 0, 6430000, 6430000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100085', '', '', '', 1295000, NULL, '2026-11-27 15:26:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00086', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 3, 600000, 1800000, 500000, 0, 300000, 'pcs'),
  ('TRX-A00086', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 2, 1060000, 2120000, 900000, 0, 320000, 'pcs'),
  ('TRX-A00086', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 3, 2910000, 8730000, 2700000, 0, 630000, 'pcs'),
  ('TRX-A00086', 'PRD-A-AKS-0236', 'Memory Card 64GB', 1, 72000, 72000, 63000, 0, 9000, 'pcs'),
  ('TRX-A00086', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 2, 33000, 66000, 27000, 0, 12000, 'pcs'),
  ('TRX-A00086', 'PRD-A-AKS-0171', 'Tempered Glass Xiaomi', 3, 24000, 72000, 16000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01057', '2026-11-27 15:16:27+07:00', 'Umum', 'Admin', 8118000, 0, 4059000, 4059000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101056', '', '', '', 706000, NULL, '2026-11-27 15:16:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01057', 'PRD-A-KEL-0139', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A01057', 'PRD-A-KEL-0057', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01057', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 2, 1170000, 2340000, 1000000, 0, 340000, 'pcs'),
  ('TRX-A01057', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01818', '2026-11-27 15:08:52+07:00', 'Umum', 'Admin', 3644000, 0, 3644000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101817', '', '', '', 529000, NULL, '2026-11-27 15:08:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01818', 'PRD-A-KEL-0030', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01818', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 1, 28000, 28000, 19000, 0, 9000, 'pcs'),
  ('TRX-A01818', 'PRD-A-AKS-0023', 'Memory Card 32GB', 2, 53000, 106000, 45000, 0, 16000, 'pcs'),
  ('TRX-A01818', 'PRD-A-KEL-0150', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01818', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 2, 18000, 36000, 14000, 0, 8000, 'pcs'),
  ('TRX-A01818', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A01818', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 2, 35000, 70000, 21000, 0, 28000, 'pcs'),
  ('TRX-A01818', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00725', '2026-11-27 15:02:40+07:00', 'Umum', 'Admin', 5228000, 0, 5228000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100724', '', '', '', 315000, NULL, '2026-11-27 15:02:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00725', 'PRD-A-KEL-0158', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00725', 'PRD-A-AKS-0155', 'Handsfree Samsung', 1, 40000, 40000, 31000, 0, 9000, 'pcs'),
  ('TRX-A00725', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 2, 2540000, 5080000, 2400000, 0, 280000, 'pcs'),
  ('TRX-A00725', 'PRD-A-AKS-0027', 'Batre Samsung J1', 2, 51000, 102000, 39000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00887', '2026-11-27 14:53:32+07:00', 'Hendra Gunawan 3', 'Admin', 13808000, 0, 13808000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100886', '', '', '', 1021000, NULL, '2026-11-27 14:53:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00887', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 2, 1880000, 3760000, 1800000, 0, 160000, 'pcs'),
  ('TRX-A00887', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 2, 2510000, 5020000, 2300000, 0, 420000, 'pcs'),
  ('TRX-A00887', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 3, 25000, 75000, 13000, 0, 36000, 'pcs'),
  ('TRX-A00887', 'PRD-A-KEL-0185', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00887', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 1, 21000, 21000, 17000, 0, 4000, 'pcs'),
  ('TRX-A00887', 'PRD-A-KEL-0037', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A00887', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 3, 1630000, 4890000, 1500000, 0, 390000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00391', '2026-11-27 14:50:03+07:00', 'Umum', 'Admin', 14764000, 0, 7382000, 7382000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100390', '', '', '', 1276000, NULL, '2026-11-27 14:50:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00391', 'PRD-A-AKS-0031', 'Batre Samsung J1', 1, 58000, 58000, 50000, 0, 8000, 'pcs'),
  ('TRX-A00391', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 2, 2330000, 4660000, 2100000, 0, 460000, 'pcs'),
  ('TRX-A00391', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 3, 52000, 156000, 46000, 0, 18000, 'pcs'),
  ('TRX-A00391', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 1, 1850000, 1850000, 1600000, 0, 250000, 'pcs'),
  ('TRX-A00391', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 3, 2680000, 8040000, 2500000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00523', '2026-11-27 14:47:58+07:00', 'Umum', 'Admin', 9015000, 0, 9015000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100522', '', '', '', 1013000, NULL, '2026-11-27 14:47:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00523', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 3, 1110000, 3330000, 900000, 0, 630000, 'pcs'),
  ('TRX-A00523', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 27000, 0, 24000, 'pcs'),
  ('TRX-A00523', 'PRD-A-HP-0369', 'HP ITEL A16 3/32 49991', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A00523', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 2, 1160000, 2320000, 1100000, 0, 120000, 'pcs'),
  ('TRX-A00523', 'PRD-A-KEL-0132', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00523', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 1, 1050000, 1050000, 900000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00474', '2026-11-27 14:36:55+07:00', 'Maya Putri 5', 'Admin', 23232000, 0, 23232000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100473', '', '', '', 1590000, NULL, '2026-11-27 14:36:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00474', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 3, 2590000, 7770000, 2500000, 0, 270000, 'pcs'),
  ('TRX-A00474', 'PRD-A-KEL-0088', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00474', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 2, 1600000, 3200000, 1500000, 0, 200000, 'pcs'),
  ('TRX-A00474', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00474', 'PRD-A-HP-0435', 'HP REDMI S23 2/32 68571', 3, 1170000, 3510000, 1000000, 0, 510000, 'pcs'),
  ('TRX-A00474', 'PRD-A-KEL-0102', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00474', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01501', '2026-11-27 14:31:25+07:00', 'Lilis Suryani 5', 'Admin', 29764000, 0, 29764000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101500', '', '', '', 2366000, NULL, '2026-11-27 14:31:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01501', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 3, 2000000, 6000000, 1800000, 0, 600000, 'pcs'),
  ('TRX-A01501', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 3, 2500000, 7500000, 2400000, 0, 300000, 'pcs'),
  ('TRX-A01501', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01501', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01501', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A01501', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01501', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 2, 1610000, 3220000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A01501', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 2, 3030000, 6060000, 2800000, 0, 460000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01991', '2026-11-27 14:29:39+07:00', 'Umum', 'Admin', 4848000, 0, 0, 4848000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101990', '', '', '', 937000, NULL, '2026-11-27 14:29:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01991', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A01991', 'PRD-A-KEL-0078', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01991', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 3, 28000, 84000, 19000, 0, 27000, 'pcs'),
  ('TRX-A01991', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01991', 'PRD-A-HP-0348', 'HP REALME C15 8/256 21999', 2, 910000, 1820000, 700000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00617', '2026-11-27 14:24:15+07:00', 'Agus Wijaya 3', 'Admin', 5265000, 0, 5265000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100616', '', '', '', 329000, NULL, '2026-11-27 14:24:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00617', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 1, 950000, 950000, 900000, 0, 50000, 'pcs'),
  ('TRX-A00617', 'PRD-A-KEL-0056', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A00617', 'PRD-A-HP-0309', 'HP REDMI Y91C 2/32 79898', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs'),
  ('TRX-A00617', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 1, 2810000, 2810000, 2700000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00628', '2026-11-27 14:13:37+07:00', 'Umum', 'Admin', 2115000, 0, 2115000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100627', '', '', '', 251000, NULL, '2026-11-27 14:13:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00628', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 1, 1900000, 1900000, 1700000, 0, 200000, 'pcs'),
  ('TRX-A00628', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 2, 18000, 36000, 13000, 0, 10000, 'pcs'),
  ('TRX-A00628', 'PRD-A-KEL-0080', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00628', 'PRD-A-AKS-0120', 'Batre Oppo A57', 3, 33000, 99000, 22000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00671', '2026-11-27 13:52:05+07:00', 'Joko Prasetyo 3', 'Admin', 5450000, 0, 5450000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100670', '', '', '', 538500, NULL, '2026-11-27 13:52:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00671', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 2, 780000, 1560000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00671', 'PRD-A-AKS-0241', 'Batre Nokia BL-5C', 2, 33000, 66000, 22000, 0, 22000, 'pcs'),
  ('TRX-A00671', 'PRD-A-KEL-0043', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00671', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 2, 1870000, 3740000, 1700000, 0, 340000, 'pcs'),
  ('TRX-A00671', 'PRD-A-AKS-0172', 'Case Samsung A03', 3, 24000, 72000, 20000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00585', '2026-11-27 13:25:52+07:00', 'Yusuf Maulana 5', 'Admin', 18586000, 0, 0, 18586000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100584', '', '', '', 1634000, NULL, '2026-11-27 13:25:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00585', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 2, 2770000, 5540000, 2600000, 0, 340000, 'pcs'),
  ('TRX-A00585', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 1, 2140000, 2140000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A00585', 'PRD-A-HP-0292', 'HP VIVO C3 4/64 55632', 1, 850000, 850000, 600000, 0, 250000, 'pcs'),
  ('TRX-A00585', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 3, 780000, 2340000, 700000, 0, 240000, 'pcs'),
  ('TRX-A00585', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 2, 1820000, 3640000, 1700000, 0, 240000, 'pcs'),
  ('TRX-A00585', 'PRD-A-HP-0150', 'HP OPPO Y55S 8/256 41252', 3, 1300000, 3900000, 1200000, 0, 300000, 'pcs'),
  ('TRX-A00585', 'PRD-A-AKS-0221', 'Memory Card 32GB', 2, 88000, 176000, 76000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00985', '2026-11-27 13:16:16+07:00', 'Umum', 'Admin', 28000, 0, 28000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100984', '', '', '', 10000, NULL, '2026-11-27 13:16:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00985', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 2, 14000, 28000, 9000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01679', '2026-11-27 13:12:41+07:00', 'Umum', 'Admin', 5636000, 0, 5636000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101678', '', '', '', 825000, NULL, '2026-11-27 13:12:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01679', 'PRD-A-HP-0391', 'HP INFINIX A03 3/32 13495', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A01679', 'PRD-A-AKS-0138', 'Tempered Glass Oppo', 1, 16000, 16000, 11000, 0, 5000, 'pcs'),
  ('TRX-A01679', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 2, 2140000, 4280000, 1900000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01449', '2026-11-27 13:06:16+07:00', 'Dewi Lestari 3', 'Admin', 2435000, 0, 0, 2435000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101448', '', '', '', 441000, NULL, '2026-11-27 13:06:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01449', 'PRD-A-KEL-0124', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01449', 'PRD-A-AKS-0088', 'Case Redmi 9A', 3, 43000, 129000, 34000, 0, 27000, 'pcs'),
  ('TRX-A01449', 'PRD-A-AKS-0217', 'Batre Samsung J1', 2, 47000, 94000, 42000, 0, 10000, 'pcs'),
  ('TRX-A01449', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 2, 1100000, 2200000, 900000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01448', '2026-11-27 12:54:35+07:00', 'Rina Marlina 3', 'Admin', 5934000, 0, 5934000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101447', '', '', '', 908000, NULL, '2026-11-27 12:54:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01448', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 3, 740000, 2220000, 600000, 0, 420000, 'pcs'),
  ('TRX-A01448', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 1, 2540000, 2540000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A01448', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 3, 380000, 1140000, 300000, 0, 240000, 'pcs'),
  ('TRX-A01448', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 1, 34000, 34000, 26000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00720', '2026-11-27 12:45:52+07:00', 'Andi Kurnia 4', 'Admin', 13988000, 0, 13988000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100719', '', '', '', 1186000, NULL, '2026-11-27 12:45:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00720', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 1, 1420000, 1420000, 1200000, 0, 220000, 'pcs'),
  ('TRX-A00720', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 3, 2190000, 6570000, 2100000, 0, 270000, 'pcs'),
  ('TRX-A00720', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 2, 64000, 128000, 51000, 0, 26000, 'pcs'),
  ('TRX-A00720', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 2, 2050000, 4100000, 2000000, 0, 100000, 'pcs'),
  ('TRX-A00720', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 3, 590000, 1770000, 400000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00975', '2026-11-27 12:37:16+07:00', 'Siti Aisyah', 'Admin', 67500, 0, 67500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100974', '', '', '', 15700, NULL, '2026-11-27 12:37:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00975', 'PRD-A-KEL-0070', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00975', 'PRD-A-KEL-0129', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A00975', 'PRD-A-KEL-0189', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00975', 'PRD-A-AKS-0177', 'Case Samsung A03', 1, 39000, 39000, 34000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01142', '2026-11-27 12:28:27+07:00', 'Dewi Lestari 5', 'Admin', 96000, 0, 0, 96000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101141', '', '', '', 32000, NULL, '2026-11-27 12:28:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01142', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A01142', 'PRD-A-KEL-0059', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01123', '2026-11-27 12:27:06+07:00', 'Umum', 'Admin', 10294000, 0, 10294000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101122', '', '', '', 654000, NULL, '2026-11-27 12:27:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01123', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A01123', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A01123', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs'),
  ('TRX-A01123', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 2, 46000, 92000, 33000, 0, 26000, 'pcs'),
  ('TRX-A01123', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A01123', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 2, 38000, 76000, 23000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01492', '2026-11-27 12:14:39+07:00', 'Siti Aisyah 5', 'Admin', 11957000, 0, 5978500, 5978500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101491', '', '', '', 910000, NULL, '2026-11-27 12:14:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01492', 'PRD-A-KEL-0013', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01492', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 1, 1900000, 1900000, 1700000, 0, 200000, 'pcs'),
  ('TRX-A01492', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A01492', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 3, 41000, 123000, 37000, 0, 12000, 'pcs'),
  ('TRX-A01492', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 3, 2590000, 7770000, 2400000, 0, 570000, 'pcs'),
  ('TRX-A01492', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 2, 15000, 30000, 10000, 0, 10000, 'pcs'),
  ('TRX-A01492', 'PRD-A-KEL-0169', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00146', '2026-11-27 12:10:04+07:00', 'Umum', 'Admin', 5151000, 0, 5151000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100145', '', '', '', 254000, NULL, '2026-11-27 12:10:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00146', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 2, 2400000, 4800000, 2300000, 0, 200000, 'pcs'),
  ('TRX-A00146', 'PRD-A-KEL-0145', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00146', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00146', 'PRD-A-KEL-0108', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00054', '2026-11-27 12:07:37+07:00', 'Intan Permata 4', 'Admin', 4739000, 0, 4739000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100053', '', '', '', 307000, NULL, '2026-11-27 12:07:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00054', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 2, 1590000, 3180000, 1500000, 0, 180000, 'pcs'),
  ('TRX-A00054', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 1, 1290000, 1290000, 1200000, 0, 90000, 'pcs'),
  ('TRX-A00054', 'PRD-A-AKS-0195', 'Memory Card 16GB', 2, 70000, 140000, 65000, 0, 10000, 'pcs'),
  ('TRX-A00054', 'PRD-A-AKS-0088', 'Case Redmi 9A', 3, 43000, 129000, 34000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00511', '2026-11-27 12:02:12+07:00', 'Lilis Suryani 4', 'Admin', 353000, 0, 353000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100510', '', '', '', 87000, NULL, '2026-11-27 12:02:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00511', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00511', 'PRD-A-AKS-0050', 'Case Redmi 9A', 1, 34000, 34000, 26000, 0, 8000, 'pcs'),
  ('TRX-A00511', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00511', 'PRD-A-KEL-0003', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A00511', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 3, 54000, 162000, 39000, 0, 45000, 'pcs'),
  ('TRX-A00511', 'PRD-A-AKS-0174', 'Case Redmi 9A', 1, 41000, 41000, 26000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00516', '2026-11-27 11:53:04+07:00', 'Umum', 'Admin', 7729000, 0, 7729000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100515', '', '', '', 1306000, NULL, '2026-11-27 11:53:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00516', 'PRD-A-AKS-0236', 'Memory Card 64GB', 2, 72000, 144000, 63000, 0, 18000, 'pcs'),
  ('TRX-A00516', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 2, 1270000, 2540000, 1100000, 0, 340000, 'pcs'),
  ('TRX-A00516', 'PRD-A-AKS-0107', 'Voucher Tri 8GB', 1, 41000, 41000, 28000, 0, 13000, 'pcs'),
  ('TRX-A00516', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 2, 1610000, 3220000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A00516', 'PRD-A-AKS-0057', 'Case Redmi 9A', 2, 37000, 74000, 26000, 0, 22000, 'pcs'),
  ('TRX-A00516', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 1, 30000, 30000, 17000, 0, 13000, 'pcs'),
  ('TRX-A00516', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 3, 560000, 1680000, 400000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00976', '2026-11-27 11:41:07+07:00', 'Fajar Nugroho 3', 'Admin', 12789000, 0, 6394500, 6394500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100975', '', '', '', 1597500, NULL, '2026-11-27 11:41:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00976', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 3, 42000, 126000, 30000, 0, 36000, 'pcs'),
  ('TRX-A00976', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A00976', 'PRD-A-HP-0354', 'HP OPPO J5 2/32 99656', 2, 1870000, 3740000, 1800000, 0, 140000, 'pcs'),
  ('TRX-A00976', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 2, 740000, 1480000, 600000, 0, 280000, 'pcs'),
  ('TRX-A00976', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 3, 1520000, 4560000, 1300000, 0, 660000, 'pcs'),
  ('TRX-A00976', 'PRD-A-KEL-0123', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01275', '2026-11-27 11:31:07+07:00', 'Nur Halimah 4', 'Admin', 15747000, 0, 15747000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101274', '', '', '', 1469500, NULL, '2026-11-27 11:31:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01275', 'PRD-A-KEL-0091', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01275', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 3, 1280000, 3840000, 1200000, 0, 240000, 'pcs'),
  ('TRX-A01275', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 3, 72000, 216000, 59000, 0, 39000, 'pcs'),
  ('TRX-A01275', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 2, 1610000, 3220000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A01275', 'PRD-A-HP-0111', 'HP OPPO A57 4/128 32620', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs'),
  ('TRX-A01275', 'PRD-A-HP-0528', 'HP NOKIA Y91C 2/32 21692', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00979', '2026-11-27 11:28:23+07:00', 'Umum', 'Admin', 2560000, 0, 2560000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100978', '', '', '', 160000, NULL, '2026-11-27 11:28:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00979', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01841', '2026-11-27 10:56:04+07:00', 'Siti Aisyah 3', 'Admin', 11205000, 0, 5602500, 5602500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101840', '', '', '', 902000, NULL, '2026-11-27 10:56:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01841', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 2, 1850000, 3700000, 1700000, 0, 300000, 'pcs'),
  ('TRX-A01841', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 2, 1960000, 3920000, 1900000, 0, 120000, 'pcs'),
  ('TRX-A01841', 'PRD-A-KEL-0034', 'Buku tulis', 1, 5000, 5000, 3000, 0, 2000, 'pcs'),
  ('TRX-A01841', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 1, 540000, 540000, 300000, 0, 240000, 'pcs'),
  ('TRX-A01841', 'PRD-A-HP-0229', 'HP REDMI Y55S 3/32 33051', 2, 1520000, 3040000, 1400000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00178', '2026-11-27 10:54:07+07:00', 'Rina Marlina 2', 'Admin', 6820000, 0, 3410000, 3410000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100177', '', '', '', 620000, NULL, '2026-11-27 10:54:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00178', 'PRD-A-HP-0002', 'HP REALME A16 2/16 79012', 2, 500000, 1000000, 400000, 0, 200000, 'pcs'),
  ('TRX-A00178', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 2, 2910000, 5820000, 2700000, 0, 420000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01686', '2026-11-27 10:31:09+07:00', 'Rudi Hartono 2', 'Admin', 36272000, 0, 18136000, 18136000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101685', '', '', '', 2051500, NULL, '2026-11-27 10:31:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01686', 'PRD-A-HP-0407', 'HP INFINIX V7 4/128 98655', 2, 2160000, 4320000, 2100000, 0, 120000, 'pcs'),
  ('TRX-A01686', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 3, 2810000, 8430000, 2700000, 0, 330000, 'pcs'),
  ('TRX-A01686', 'PRD-A-HP-0382', 'HP VIVO C15 3/32 98148', 3, 1630000, 4890000, 1500000, 0, 390000, 'pcs'),
  ('TRX-A01686', 'PRD-A-HP-0310', 'HP VIVO Y20 3/64 57316', 3, 2950000, 8850000, 2800000, 0, 450000, 'pcs'),
  ('TRX-A01686', 'PRD-A-KEL-0156', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A01686', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A01686', 'PRD-A-HP-0387', 'HP SAMSUNG A03 2/32 57234', 3, 2160000, 6480000, 2100000, 0, 180000, 'pcs'),
  ('TRX-A01686', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 3, 1090000, 3270000, 900000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00800', '2026-11-27 10:05:06+07:00', 'Umum', 'Admin', 6729000, 0, 0, 6729000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100799', '', '', '', 761400, NULL, '2026-11-27 10:05:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00800', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs'),
  ('TRX-A00800', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 2, 1640000, 3280000, 1500000, 0, 280000, 'pcs'),
  ('TRX-A00800', 'PRD-A-AKS-0175', 'Kartu Perdana Tri', 1, 28000, 28000, 18000, 0, 10000, 'pcs'),
  ('TRX-A00800', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A00800', 'PRD-A-KEL-0005', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00800', 'PRD-A-HP-0030', 'HP NOKIA 9A 4/128 49838', 1, 700000, 700000, 500000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00836', '2026-11-27 09:59:10+07:00', 'Fitri Rahmawati 5', 'Admin', 11280000, 0, 11280000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100835', '', '', '', 1180000, NULL, '2026-11-27 09:59:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00836', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 2, 790000, 1580000, 600000, 0, 380000, 'pcs'),
  ('TRX-A00836', 'PRD-A-HP-0111', 'HP OPPO A57 4/128 32620', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs'),
  ('TRX-A00836', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 2, 1670000, 3340000, 1600000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01906', '2026-11-27 09:54:10+07:00', 'Yusuf Maulana', 'Admin', 8882000, 0, 8882000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101905', '', '', '', 1049000, NULL, '2026-11-27 09:54:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01906', 'PRD-A-AKS-0158', 'Kabel Charger 2m', 2, 24000, 48000, 11000, 0, 26000, 'pcs'),
  ('TRX-A01906', 'PRD-A-AKS-0074', 'Handsfree Oppo', 1, 49000, 49000, 39000, 0, 10000, 'pcs'),
  ('TRX-A01906', 'PRD-A-KEL-0078', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01906', 'PRD-A-HP-0284', 'HP INFINIX V5S 4/128 67348', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A01906', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 1, 2700000, 2700000, 2500000, 0, 200000, 'pcs'),
  ('TRX-A01906', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 1, 550000, 550000, 400000, 0, 150000, 'pcs'),
  ('TRX-A01906', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 3, 27000, 81000, 18000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00526', '2026-11-27 09:31:43+07:00', 'Nur Halimah 5', 'Admin', 3930000, 0, 1965000, 1965000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100525', '', '', '', 630000, NULL, '2026-11-27 09:31:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00526', 'PRD-A-HP-0160', 'HP REDMI 9C 8/256 26523', 3, 1310000, 3930000, 1100000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01410', '2026-11-27 09:29:54+07:00', 'Maya Putri 2', 'Admin', 8134000, 0, 8134000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101409', '', '', '', 297500, NULL, '2026-11-27 09:29:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01410', 'PRD-A-HP-0523', 'HP REDMI Y16 2/16 13293', 2, 2350000, 4700000, 2300000, 0, 100000, 'pcs'),
  ('TRX-A01410', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 1, 21000, 21000, 9000, 0, 12000, 'pcs'),
  ('TRX-A01410', 'PRD-A-KEL-0010', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01410', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A01410', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 2, 1680000, 3360000, 1600000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01325', '2026-11-27 09:19:15+07:00', 'Rudi Hartono 5', 'Admin', 5229000, 0, 2614500, 2614500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101324', '', '', '', 1081000, NULL, '2026-11-27 09:19:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01325', 'PRD-A-KEL-0063', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01325', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01325', 'PRD-A-AKS-0108', 'Memory Card 16GB', 3, 96000, 288000, 87000, 0, 27000, 'pcs'),
  ('TRX-A01325', 'PRD-A-HP-0482', 'HP REALME 5A 3/64 79823', 3, 480000, 1440000, 300000, 0, 540000, 'pcs'),
  ('TRX-A01325', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 2, 790000, 1580000, 600000, 0, 380000, 'pcs'),
  ('TRX-A01325', 'PRD-A-HP-0228', 'HP SAMSUNG A15 2/16 41131', 1, 1820000, 1820000, 1700000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01519', '2026-11-27 09:06:19+07:00', 'Maya Putri 3', 'Admin', 7456000, 0, 7456000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101518', '', '', '', 469000, NULL, '2026-11-27 09:06:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01519', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01519', 'PRD-A-HP-0515', 'HP SAMSUNG C15 2/16 77230', 2, 2320000, 4640000, 2200000, 0, 240000, 'pcs'),
  ('TRX-A01519', 'PRD-A-AKS-0030', 'Case Samsung A03', 3, 25000, 75000, 20000, 0, 15000, 'pcs'),
  ('TRX-A01519', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 2, 1290000, 2580000, 1200000, 0, 180000, 'pcs'),
  ('TRX-A01519', 'PRD-A-AKS-0075', 'Voucher XL 10GB', 1, 46000, 46000, 34000, 0, 12000, 'pcs'),
  ('TRX-A01519', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 3, 25000, 75000, 19000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01907', '2026-11-27 08:54:48+07:00', 'Eko Saputra 4', 'Admin', 4123500, 0, 4123500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101906', '', '', '', 439700, NULL, '2026-11-27 08:54:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01907', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 1, 1410000, 1410000, 1200000, 0, 210000, 'pcs'),
  ('TRX-A01907', 'PRD-A-KEL-0041', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01907', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 2, 48000, 96000, 35000, 0, 26000, 'pcs'),
  ('TRX-A01907', 'PRD-A-AKS-0195', 'Memory Card 16GB', 1, 70000, 70000, 65000, 0, 5000, 'pcs'),
  ('TRX-A01907', 'PRD-A-HP-0421', 'HP INFINIX A16 3/64 87154', 1, 2490000, 2490000, 2300000, 0, 190000, 'pcs'),
  ('TRX-A01907', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A01907', 'PRD-A-KEL-0083', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01996', '2026-11-27 08:35:59+07:00', 'Umum', 'Admin', 4310000, 0, 4310000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101995', '', '', '', 820000, NULL, '2026-11-27 08:35:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01996', 'PRD-A-HP-0256', 'HP REALME 6A 2/32 95183', 1, 1460000, 1460000, 1300000, 0, 160000, 'pcs'),
  ('TRX-A01996', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 3, 910000, 2730000, 700000, 0, 630000, 'pcs'),
  ('TRX-A01996', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A01996', 'PRD-A-KEL-0029', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01713', '2026-11-27 08:25:33+07:00', 'Umum', 'Admin', 13088000, 0, 13088000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101712', '', '', '', 664000, NULL, '2026-11-27 08:25:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01713', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01713', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 2, 1650000, 3300000, 1500000, 0, 300000, 'pcs'),
  ('TRX-A01713', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01713', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 3, 2150000, 6450000, 2100000, 0, 150000, 'pcs'),
  ('TRX-A01713', 'PRD-A-HP-0397', 'HP REDMI 5A 4/128 70124', 2, 1600000, 3200000, 1500000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01451', '2026-11-27 08:23:55+07:00', 'Fajar Nugroho 5', 'Admin', 10411000, 0, 10411000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101450', '', '', '', 776000, NULL, '2026-11-27 08:23:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01451', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01451', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 2, 2370000, 4740000, 2300000, 0, 140000, 'pcs'),
  ('TRX-A01451', 'PRD-A-AKS-0004', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A01451', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 2, 380000, 760000, 300000, 0, 160000, 'pcs'),
  ('TRX-A01451', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A01451', 'PRD-A-KEL-0186', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01451', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 2, 42000, 84000, 27000, 0, 30000, 'pcs'),
  ('TRX-A01451', 'PRD-A-HP-0351', 'HP REDMI V5S 3/32 54249', 1, 2700000, 2700000, 2500000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01488', '2026-11-26 20:15:15+07:00', 'Rudi Hartono 2', 'Admin', 206000, 0, 206000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101487', '', '', '', 44000, NULL, '2026-11-26 20:15:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01488', 'PRD-A-KEL-0022', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01488', 'PRD-A-AKS-0168', 'Memory Card 32GB', 2, 40000, 80000, 32000, 0, 16000, 'pcs'),
  ('TRX-A01488', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 2, 57000, 114000, 45000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00647', '2026-11-26 20:12:51+07:00', 'Umum', 'Admin', 12463000, 0, 6231500, 6231500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100646', '', '', '', 933000, NULL, '2026-11-26 20:12:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00647', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 3, 2150000, 6450000, 2100000, 0, 150000, 'pcs'),
  ('TRX-A00647', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 3, 46000, 138000, 35000, 0, 33000, 'pcs'),
  ('TRX-A00647', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 1, 2070000, 2070000, 2000000, 0, 70000, 'pcs'),
  ('TRX-A00647', 'PRD-A-HP-0145', 'HP ITEL C3 3/64 46957', 3, 660000, 1980000, 500000, 0, 480000, 'pcs'),
  ('TRX-A00647', 'PRD-A-KEL-0108', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A00647', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00647', 'PRD-A-AKS-0201', 'Memory Card 32GB', 2, 38000, 76000, 27000, 0, 22000, 'pcs'),
  ('TRX-A00647', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 1, 1660000, 1660000, 1500000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00216', '2026-11-26 20:10:24+07:00', 'Nur Halimah 2', 'Admin', 5062000, 0, 5062000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100215', '', '', '', 384000, NULL, '2026-11-26 20:10:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00216', 'PRD-A-AKS-0147', 'Kabel Charger 2m', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A00216', 'PRD-A-HP-0271', 'HP REDMI A15 2/32 43955', 2, 2480000, 4960000, 2300000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01731', '2026-11-26 20:05:11+07:00', 'Umum', 'Admin', 9950000, 0, 9950000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101730', '', '', '', 1020000, NULL, '2026-11-26 20:05:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01731', 'PRD-A-HP-0244', 'HP VIVO A16 2/32 27518', 2, 590000, 1180000, 400000, 0, 380000, 'pcs'),
  ('TRX-A01731', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs'),
  ('TRX-A01731', 'PRD-A-KEL-0094', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01984', '2026-11-26 19:55:06+07:00', 'Agus Wijaya 2', 'Admin', 3228000, 0, 3228000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101983', '', '', '', 562000, NULL, '2026-11-26 19:55:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01984', 'PRD-A-AKS-0156', 'Handsfree Oppo', 2, 39000, 78000, 33000, 0, 12000, 'pcs'),
  ('TRX-A01984', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 2, 580000, 1160000, 400000, 0, 360000, 'pcs'),
  ('TRX-A01984', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 1, 1990000, 1990000, 1800000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00907', '2026-11-26 19:39:27+07:00', 'Yusuf Maulana 4', 'Admin', 8406500, 0, 8406500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100906', '', '', '', 816700, NULL, '2026-11-26 19:39:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00907', 'PRD-A-HP-0050', 'HP REALME S23 2/16 76169', 1, 2860000, 2860000, 2700000, 0, 160000, 'pcs'),
  ('TRX-A00907', 'PRD-A-KEL-0092', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00907', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00907', 'PRD-A-AKS-0023', 'Memory Card 32GB', 1, 53000, 53000, 45000, 0, 8000, 'pcs'),
  ('TRX-A00907', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 1, 28000, 28000, 21000, 0, 7000, 'pcs'),
  ('TRX-A00907', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A00907', 'PRD-A-KEL-0005', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01484', '2026-11-26 19:16:40+07:00', 'Umum', 'Admin', 26919000, 0, 0, 26919000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101483', '', '', '', 1716000, NULL, '2026-11-26 19:16:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01484', 'PRD-A-KEL-0129', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A01484', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs'),
  ('TRX-A01484', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01484', 'PRD-A-KEL-0033', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01484', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A01484', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 2, 2770000, 5540000, 2600000, 0, 340000, 'pcs'),
  ('TRX-A01484', 'PRD-A-AKS-0199', 'Handsfree Xiaomi', 3, 38000, 114000, 29000, 0, 27000, 'pcs'),
  ('TRX-A01484', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 3, 1900000, 5700000, 1700000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00285', '2026-11-26 19:14:28+07:00', 'Umum', 'Admin', 9162000, 0, 9162000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100284', '', '', '', 847000, NULL, '2026-11-26 19:14:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00285', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00285', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 1, 2600000, 2600000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A00285', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 1, 25000, 25000, 17000, 0, 8000, 'pcs'),
  ('TRX-A00285', 'PRD-A-AKS-0067', 'Case Redmi 9A', 3, 39000, 117000, 30000, 0, 27000, 'pcs'),
  ('TRX-A00285', 'PRD-A-HP-0484', 'HP INFINIX C15 2/16 55266', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01968', '2026-11-26 19:09:31+07:00', 'Fajar Nugroho', 'Admin', 2020000, 0, 2020000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101967', '', '', '', 790000, NULL, '2026-11-26 19:09:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01968', 'PRD-A-HP-0477', 'HP INFINIX C15 3/32 90452', 3, 650000, 1950000, 400000, 0, 750000, 'pcs'),
  ('TRX-A01968', 'PRD-A-KEL-0160', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00034', '2026-11-26 19:09:16+07:00', 'Dedi Supriadi 2', 'Admin', 12826000, 0, 12826000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100033', '', '', '', 705000, NULL, '2026-11-26 19:09:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00034', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 2, 2120000, 4240000, 1900000, 0, 440000, 'pcs'),
  ('TRX-A00034', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 3, 2770000, 8310000, 2700000, 0, 210000, 'pcs'),
  ('TRX-A00034', 'PRD-A-KEL-0181', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00034', 'PRD-A-KEL-0029', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A00034', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A00034', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00034', 'PRD-A-KEL-0111', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00830', '2026-11-26 19:06:28+07:00', 'Andi Kurnia 5', 'Admin', 1960000, 0, 1960000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100829', '', '', '', 324000, NULL, '2026-11-26 19:06:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00830', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00830', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 2, 960000, 1920000, 800000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01201', '2026-11-26 18:45:20+07:00', 'Sri Wahyuni 4', 'Admin', 6486000, 0, 0, 6486000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101200', '', '', '', 376000, NULL, '2026-11-26 18:45:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01201', 'PRD-A-KEL-0013', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01201', 'PRD-A-KEL-0018', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01201', 'PRD-A-KEL-0091', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01201', 'PRD-A-AKS-0046', 'Case Samsung A03', 1, 38000, 38000, 35000, 0, 3000, 'pcs'),
  ('TRX-A01201', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A01201', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs'),
  ('TRX-A01201', 'PRD-A-KEL-0131', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00267', '2026-11-26 18:34:15+07:00', 'Lilis Suryani 3', 'Admin', 16714500, 0, 8357250, 8357250, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100266', '', '', '', 1352100, NULL, '2026-11-26 18:34:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00267', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A00267', 'PRD-A-HP-0526', 'HP ITEL A16 8/256 39065', 2, 1500000, 3000000, 1300000, 0, 400000, 'pcs'),
  ('TRX-A00267', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 3, 2770000, 8310000, 2700000, 0, 210000, 'pcs'),
  ('TRX-A00267', 'PRD-A-AKS-0153', 'Memory Card 32GB', 1, 92000, 92000, 86000, 0, 6000, 'pcs'),
  ('TRX-A00267', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 2, 18000, 36000, 11000, 0, 14000, 'pcs'),
  ('TRX-A00267', 'PRD-A-AKS-0174', 'Case Redmi 9A', 2, 41000, 82000, 26000, 0, 30000, 'pcs'),
  ('TRX-A00267', 'PRD-A-KEL-0083', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A00267', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00719', '2026-11-26 18:29:15+07:00', 'Umum', 'Admin', 17780000, 0, 8890000, 8890000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100718', '', '', '', 1494000, NULL, '2026-11-26 18:29:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00719', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 1, 2920000, 2920000, 2700000, 0, 220000, 'pcs'),
  ('TRX-A00719', 'PRD-A-KEL-0098', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00719', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 1, 23000, 23000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00719', 'PRD-A-HP-0286', 'HP REALME 6A 8/256 48022', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00719', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 3, 25000, 75000, 16000, 0, 27000, 'pcs'),
  ('TRX-A00719', 'PRD-A-AKS-0201', 'Memory Card 32GB', 2, 38000, 76000, 27000, 0, 22000, 'pcs'),
  ('TRX-A00719', 'PRD-A-AKS-0214', 'Memory Card 64GB', 3, 100000, 300000, 86000, 0, 42000, 'pcs'),
  ('TRX-A00719', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 3, 3030000, 9090000, 2800000, 0, 690000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00881', '2026-11-26 18:22:04+07:00', 'Umum', 'Admin', 6600000, 0, 6600000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100880', '', '', '', 1200000, NULL, '2026-11-26 18:22:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00881', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 3, 1350000, 4050000, 1200000, 0, 450000, 'pcs'),
  ('TRX-A00881', 'PRD-A-HP-0292', 'HP VIVO C3 4/64 55632', 3, 850000, 2550000, 600000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00318', '2026-11-26 18:09:25+07:00', 'Maya Putri 3', 'Admin', 5604000, 0, 5604000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100317', '', '', '', 239000, NULL, '2026-11-26 18:09:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00318', 'PRD-A-AKS-0172', 'Case Samsung A03', 1, 24000, 24000, 20000, 0, 4000, 'pcs'),
  ('TRX-A00318', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 3, 38000, 114000, 23000, 0, 45000, 'pcs'),
  ('TRX-A00318', 'PRD-A-KEL-0177', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00318', 'PRD-A-HP-0334', 'HP SAMSUNG Y16 3/64 17970', 2, 2690000, 5380000, 2600000, 0, 180000, 'pcs'),
  ('TRX-A00318', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01764', '2026-11-26 18:05:44+07:00', 'Umum', 'Admin', 3752000, 0, 1876000, 1876000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101763', '', '', '', 440000, NULL, '2026-11-26 18:05:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01764', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01764', 'PRD-A-HP-0359', 'HP REDMI HOT30i 2/16 35055', 1, 2310000, 2310000, 2100000, 0, 210000, 'pcs'),
  ('TRX-A01764', 'PRD-A-KEL-0095', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A01764', 'PRD-A-KEL-0019', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01764', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A01764', 'PRD-A-AKS-0050', 'Case Redmi 9A', 3, 34000, 102000, 26000, 0, 24000, 'pcs'),
  ('TRX-A01764', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A01764', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 2, 580000, 1160000, 500000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00507', '2026-11-26 18:03:38+07:00', 'Rina Marlina 2', 'Admin', 2748000, 0, 1374000, 1374000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100506', '', '', '', 251000, NULL, '2026-11-26 18:03:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00507', 'PRD-A-KEL-0124', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00507', 'PRD-A-KEL-0033', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00507', 'PRD-A-AKS-0222', 'Case Redmi 9A', 2, 46000, 92000, 35000, 0, 22000, 'pcs'),
  ('TRX-A00507', 'PRD-A-AKS-0108', 'Memory Card 16GB', 3, 96000, 288000, 87000, 0, 27000, 'pcs'),
  ('TRX-A00507', 'PRD-A-AKS-0120', 'Batre Oppo A57', 2, 33000, 66000, 22000, 0, 22000, 'pcs'),
  ('TRX-A00507', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 1, 2270000, 2270000, 2100000, 0, 170000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01119', '2026-11-26 17:57:06+07:00', 'Eko Saputra 5', 'Admin', 18214000, 0, 18214000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101118', '', '', '', 1345000, NULL, '2026-11-26 17:57:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01119', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 2, 1900000, 3800000, 1700000, 0, 400000, 'pcs'),
  ('TRX-A01119', 'PRD-A-HP-0274', 'HP OPPO A15 8/256 23961', 2, 1680000, 3360000, 1600000, 0, 160000, 'pcs'),
  ('TRX-A01119', 'PRD-A-HP-0145', 'HP ITEL C3 3/64 46957', 1, 660000, 660000, 500000, 0, 160000, 'pcs'),
  ('TRX-A01119', 'PRD-A-AKS-0179', 'Memory Card 32GB', 3, 102000, 306000, 88000, 0, 42000, 'pcs'),
  ('TRX-A01119', 'PRD-A-HP-0317', 'HP ITEL C11 3/64 74630', 1, 1170000, 1170000, 1100000, 0, 70000, 'pcs'),
  ('TRX-A01119', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs'),
  ('TRX-A01119', 'PRD-A-KEL-0102', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00289', '2026-11-26 17:56:00+07:00', 'Rina Marlina 2', 'Admin', 84500, 0, 84500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100288', '', '', '', 18000, NULL, '2026-11-26 17:56:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00289', 'PRD-A-AKS-0046', 'Case Samsung A03', 1, 38000, 38000, 35000, 0, 3000, 'pcs'),
  ('TRX-A00289', 'PRD-A-KEL-0079', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs'),
  ('TRX-A00289', 'PRD-A-KEL-0012', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00269', '2026-11-26 17:54:23+07:00', 'Umum', 'Admin', 8914000, 0, 8914000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100268', '', '', '', 1014000, NULL, '2026-11-26 17:54:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00269', 'PRD-A-AKS-0141', 'Batre Oppo A57', 2, 62000, 124000, 50000, 0, 24000, 'pcs'),
  ('TRX-A00269', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 3, 930000, 2790000, 800000, 0, 390000, 'pcs'),
  ('TRX-A00269', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 3, 2000000, 6000000, 1800000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01703', '2026-11-26 17:48:00+07:00', 'Lilis Suryani 4', 'Admin', 12000, 0, 12000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101702', '', '', '', 4000, NULL, '2026-11-26 17:48:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01703', 'PRD-A-KEL-0145', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01837', '2026-11-26 17:47:12+07:00', 'Umum', 'Admin', 8358000, 0, 8358000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101836', '', '', '', 584000, NULL, '2026-11-26 17:47:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01837', 'PRD-A-AKS-0125', 'Handsfree Samsung', 2, 52000, 104000, 37000, 0, 30000, 'pcs'),
  ('TRX-A01837', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 1, 2850000, 2850000, 2800000, 0, 50000, 'pcs'),
  ('TRX-A01837', 'PRD-A-KEL-0024', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01837', 'PRD-A-KEL-0114', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01837', 'PRD-A-AKS-0152', 'Batre Nokia BL-4C', 3, 18000, 54000, 14000, 0, 12000, 'pcs'),
  ('TRX-A01837', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01160', '2026-11-26 17:35:47+07:00', 'Joko Prasetyo 3', 'Admin', 2608000, 0, 2608000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101159', '', '', '', 156000, NULL, '2026-11-26 17:35:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01160', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 1, 2540000, 2540000, 2400000, 0, 140000, 'pcs'),
  ('TRX-A01160', 'PRD-A-AKS-0050', 'Case Redmi 9A', 2, 34000, 68000, 26000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00902', '2026-11-26 17:18:16+07:00', 'Budi Santoso 2', 'Admin', 2690000, 0, 2690000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100901', '', '', '', 590000, NULL, '2026-11-26 17:18:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00902', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 1, 830000, 830000, 600000, 0, 230000, 'pcs'),
  ('TRX-A00902', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 3, 620000, 1860000, 500000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01237', '2026-11-26 17:09:36+07:00', 'Umum', 'Admin', 2908000, 0, 2908000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101236', '', '', '', 330000, NULL, '2026-11-26 17:09:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01237', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 3, 380000, 1140000, 300000, 0, 240000, 'pcs'),
  ('TRX-A01237', 'PRD-A-AKS-0074', 'Handsfree Oppo', 2, 49000, 98000, 39000, 0, 20000, 'pcs'),
  ('TRX-A01237', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 1, 1670000, 1670000, 1600000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00418', '2026-11-26 17:09:19+07:00', 'Siti Aisyah 4', 'Admin', 1210000, 0, 1210000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100417', '', '', '', 210000, NULL, '2026-11-26 17:09:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00418', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 2, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A00418', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 1, 1210000, 1210000, 1000000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01644', '2026-11-26 16:27:19+07:00', 'Umum', 'Admin', 2881000, 0, 2881000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101643', '', '', '', 231000, NULL, '2026-11-26 16:27:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01644', 'PRD-A-KEL-0138', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01644', 'PRD-A-AKS-0227', 'Kabel Data Lightning', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A01644', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 1, 2800000, 2800000, 2600000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01305', '2026-11-26 16:09:43+07:00', 'Dedi Supriadi 4', 'Admin', 139000, 0, 69500, 69500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101304', '', '', '', 40000, NULL, '2026-11-26 16:09:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01305', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 2, 18000, 36000, 13000, 0, 10000, 'pcs'),
  ('TRX-A01305', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 2, 36000, 72000, 26000, 0, 20000, 'pcs'),
  ('TRX-A01305', 'PRD-A-AKS-0173', 'Kartu Perdana Telkomsel', 1, 31000, 31000, 21000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01101', '2026-11-26 16:09:07+07:00', 'Umum', 'Admin', 2665000, 0, 2665000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101100', '', '', '', 157000, NULL, '2026-11-26 16:09:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01101', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 3, 18000, 54000, 13000, 0, 15000, 'pcs'),
  ('TRX-A01101', 'PRD-A-AKS-0029', 'Kabel Charger 2m', 2, 42000, 84000, 27000, 0, 30000, 'pcs'),
  ('TRX-A01101', 'PRD-A-AKS-0233', 'Tempered Glass Vivo', 3, 9000, 27000, 5000, 0, 12000, 'pcs'),
  ('TRX-A01101', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 1, 2500000, 2500000, 2400000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01571', '2026-11-26 15:52:09+07:00', 'Umum', 'Admin', 6156500, 0, 6156500, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101570', '', '', '', 508100, NULL, '2026-11-26 15:52:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01571', 'PRD-A-AKS-0117', 'Kabel Data Type-C', 3, 27000, 81000, 18000, 0, 27000, 'pcs'),
  ('TRX-A01571', 'PRD-A-KEL-0083', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A01571', 'PRD-A-AKS-0230', 'Handsfree Oppo', 3, 52000, 156000, 38000, 0, 42000, 'pcs'),
  ('TRX-A01571', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 3, 25000, 75000, 13000, 0, 36000, 'pcs'),
  ('TRX-A01571', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 3, 15000, 45000, 8000, 0, 21000, 'pcs'),
  ('TRX-A01571', 'PRD-A-KEL-0087', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A01571', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00603', '2026-11-26 15:29:20+07:00', 'Umum', 'Admin', 27000, 0, 0, 27000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100602', '', '', '', 11000, NULL, '2026-11-26 15:29:20+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00603', 'PRD-A-AKS-0099', 'Tempered Glass Xiaomi', 1, 27000, 27000, 16000, 0, 11000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01646', '2026-11-26 15:20:43+07:00', 'Siti Aisyah 3', 'Admin', 4180000, 0, 4180000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101645', '', '', '', 280000, NULL, '2026-11-26 15:20:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01646', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs'),
  ('TRX-A01646', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 1, 1280000, 1280000, 1200000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00581', '2026-11-26 15:16:48+07:00', 'Umum', 'Admin', 7455000, 0, 7455000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100580', '', '', '', 873000, NULL, '2026-11-26 15:16:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00581', 'PRD-A-KEL-0021', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00581', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 2, 890000, 1780000, 800000, 0, 180000, 'pcs'),
  ('TRX-A00581', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 1, 1800000, 1800000, 1600000, 0, 200000, 'pcs'),
  ('TRX-A00581', 'PRD-A-KEL-0184', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00581', 'PRD-A-AKS-0217', 'Batre Samsung J1', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A00581', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 3, 1260000, 3780000, 1100000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00454', '2026-11-26 15:09:37+07:00', 'Umum', 'Admin', 4432000, 0, 4432000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100453', '', '', '', 818000, NULL, '2026-11-26 15:09:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00454', 'PRD-A-HP-0292', 'HP VIVO C3 4/64 55632', 2, 850000, 1700000, 600000, 0, 500000, 'pcs'),
  ('TRX-A00454', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 2, 38000, 76000, 23000, 0, 30000, 'pcs'),
  ('TRX-A00454', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 2, 27000, 54000, 23000, 0, 8000, 'pcs'),
  ('TRX-A00454', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 1, 2330000, 2330000, 2100000, 0, 230000, 'pcs'),
  ('TRX-A00454', 'PRD-A-AKS-0223', 'Memory Card 32GB', 1, 51000, 51000, 48000, 0, 3000, 'pcs'),
  ('TRX-A00454', 'PRD-A-AKS-0071', 'Case Oppo A57', 2, 31000, 62000, 19000, 0, 24000, 'pcs'),
  ('TRX-A00454', 'PRD-A-AKS-0246', 'Voucher Tri 8GB', 2, 54000, 108000, 47000, 0, 14000, 'pcs'),
  ('TRX-A00454', 'PRD-A-KEL-0192', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01836', '2026-11-26 15:01:42+07:00', 'Intan Permata 2', 'Admin', 4761000, 0, 4761000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101835', '', '', '', 466000, NULL, '2026-11-26 15:01:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01836', 'PRD-A-HP-0098', 'HP INFINIX 9A 3/64 25641', 3, 1550000, 4650000, 1400000, 0, 450000, 'pcs'),
  ('TRX-A01836', 'PRD-A-KEL-0021', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01836', 'PRD-A-AKS-0102', 'Case Vivo Y20', 1, 36000, 36000, 30000, 0, 6000, 'pcs'),
  ('TRX-A01836', 'PRD-A-AKS-0073', 'Memory Card 64GB', 1, 35000, 35000, 31000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00668', '2026-11-26 14:41:17+07:00', 'Yusuf Maulana 2', 'Admin', 1549000, 0, 1549000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100667', '', '', '', 131400, NULL, '2026-11-26 14:41:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00668', 'PRD-A-HP-0150', 'HP OPPO Y55S 8/256 41252', 1, 1300000, 1300000, 1200000, 0, 100000, 'pcs'),
  ('TRX-A00668', 'PRD-A-KEL-0038', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00668', 'PRD-A-AKS-0213', 'Memory Card 16GB', 3, 72000, 216000, 65000, 0, 21000, 'pcs'),
  ('TRX-A00668', 'PRD-A-KEL-0060', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01482', '2026-11-26 14:36:15+07:00', 'Fajar Nugroho', 'Admin', 5980000, 0, 5980000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101481', '', '', '', 580000, NULL, '2026-11-26 14:36:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01482', 'PRD-A-HP-0471', 'HP SAMSUNG A57 3/32 33572', 3, 1730000, 5190000, 1600000, 0, 390000, 'pcs'),
  ('TRX-A01482', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 1, 790000, 790000, 600000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01321', '2026-11-26 14:26:13+07:00', 'Eko Saputra 5', 'Admin', 3395000, 0, 3395000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101320', '', '', '', 360500, NULL, '2026-11-26 14:26:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01321', 'PRD-A-HP-0142', 'HP VIVO A57 3/32 10794', 1, 740000, 740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A01321', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 3, 72000, 216000, 59000, 0, 39000, 'pcs'),
  ('TRX-A01321', 'PRD-A-HP-0222', 'HP REDMI A03 3/64 61623', 1, 2370000, 2370000, 2300000, 0, 70000, 'pcs'),
  ('TRX-A01321', 'PRD-A-KEL-0102', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01321', 'PRD-A-KEL-0009', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00076', '2026-11-26 14:22:23+07:00', 'Umum', 'Admin', 7881000, 0, 7881000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100075', '', '', '', 528000, NULL, '2026-11-26 14:22:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00076', 'PRD-A-AKS-0156', 'Handsfree Oppo', 1, 39000, 39000, 33000, 0, 6000, 'pcs'),
  ('TRX-A00076', 'PRD-A-HP-0099', 'HP REALME A17 3/32 66506', 3, 2560000, 7680000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00076', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00076', 'PRD-A-AKS-0178', 'Case Vivo Y20', 3, 36000, 108000, 24000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00544', '2026-11-26 14:17:09+07:00', 'Rudi Hartono', 'Admin', 5688000, 0, 2844000, 2844000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100543', '', '', '', 510000, NULL, '2026-11-26 14:17:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00544', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 3, 1860000, 5580000, 1700000, 0, 480000, 'pcs'),
  ('TRX-A00544', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 2, 18000, 36000, 13000, 0, 10000, 'pcs'),
  ('TRX-A00544', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 2, 36000, 72000, 26000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00746', '2026-11-26 14:04:07+07:00', 'Umum', 'Admin', 2020000, 0, 0, 2020000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100745', '', '', '', 120000, NULL, '2026-11-26 14:04:07+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00746', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 1, 2020000, 2020000, 1900000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01585', '2026-11-26 14:01:08+07:00', 'Umum', 'Admin', 6615000, 0, 6615000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101584', '', '', '', 763000, NULL, '2026-11-26 14:01:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01585', 'PRD-A-KEL-0089', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A01585', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs'),
  ('TRX-A01585', 'PRD-A-AKS-0134', 'Case Oppo A57', 2, 35000, 70000, 28000, 0, 14000, 'pcs'),
  ('TRX-A01585', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 3, 39000, 117000, 30000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01909', '2026-11-26 13:48:46+07:00', 'Umum', 'Admin', 290500, 0, 290500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101908', '', '', '', 61600, NULL, '2026-11-26 13:48:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01909', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 3, 72000, 216000, 59000, 0, 39000, 'pcs'),
  ('TRX-A01909', 'PRD-A-KEL-0006', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A01909', 'PRD-A-KEL-0137', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01909', 'PRD-A-KEL-0109', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01909', 'PRD-A-KEL-0198', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A01909', 'PRD-A-KEL-0175', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A01909', 'PRD-A-KEL-0102', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00829', '2026-11-26 13:45:49+07:00', 'Agus Wijaya 3', 'Admin', 2910000, 0, 2910000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100828', '', '', '', 210000, NULL, '2026-11-26 13:45:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00829', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 3, 970000, 2910000, 900000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00167', '2026-11-26 13:41:15+07:00', 'Lilis Suryani 5', 'Admin', 8836000, 0, 4418000, 4418000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100166', '', '', '', 652000, NULL, '2026-11-26 13:41:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00167', 'PRD-A-AKS-0174', 'Case Redmi 9A', 2, 41000, 82000, 26000, 0, 30000, 'pcs'),
  ('TRX-A00167', 'PRD-A-AKS-0099', 'Tempered Glass Xiaomi', 2, 27000, 54000, 16000, 0, 22000, 'pcs'),
  ('TRX-A00167', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00477', '2026-11-26 13:40:54+07:00', 'Rina Marlina 5', 'Admin', 6753500, 0, 3376750, 3376750, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100476', '', '', '', 708000, NULL, '2026-11-26 13:40:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00477', 'PRD-A-KEL-0023', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00477', 'PRD-A-KEL-0048', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00477', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 3, 2230000, 6690000, 2000000, 0, 690000, 'pcs'),
  ('TRX-A00477', 'PRD-A-KEL-0141', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00477', 'PRD-A-KEL-0029', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01049', '2026-11-26 13:39:43+07:00', 'Siti Aisyah', 'Admin', 11993000, 0, 11993000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101048', '', '', '', 862000, NULL, '2026-11-26 13:39:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01049', 'PRD-A-AKS-0232', 'Voucher Tri 8GB', 1, 65000, 65000, 53000, 0, 12000, 'pcs'),
  ('TRX-A01049', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 1, 2270000, 2270000, 2100000, 0, 170000, 'pcs'),
  ('TRX-A01049', 'PRD-A-AKS-0242', 'Handsfree Samsung', 3, 28000, 84000, 16000, 0, 36000, 'pcs'),
  ('TRX-A01049', 'PRD-A-KEL-0118', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01049', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 3, 2810000, 8430000, 2700000, 0, 330000, 'pcs'),
  ('TRX-A01049', 'PRD-A-KEL-0151', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01049', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 2, 550000, 1100000, 400000, 0, 300000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01579', '2026-11-26 13:35:55+07:00', 'Fajar Nugroho 4', 'Admin', 2228000, 0, 2228000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101578', '', '', '', 452000, NULL, '2026-11-26 13:35:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01579', 'PRD-A-AKS-0007', 'Case Redmi 9A', 2, 26000, 52000, 20000, 0, 12000, 'pcs'),
  ('TRX-A01579', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 2, 26000, 52000, 16000, 0, 20000, 'pcs'),
  ('TRX-A01579', 'PRD-A-AKS-0071', 'Case Oppo A57', 2, 31000, 62000, 19000, 0, 24000, 'pcs'),
  ('TRX-A01579', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 2, 46000, 92000, 33000, 0, 26000, 'pcs'),
  ('TRX-A01579', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 2, 520000, 1040000, 400000, 0, 240000, 'pcs'),
  ('TRX-A01579', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 1, 930000, 930000, 800000, 0, 130000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01464', '2026-11-26 13:04:17+07:00', 'Umum', 'Admin', 54000, 0, 27000, 27000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101463', '', '', '', 15000, NULL, '2026-11-26 13:04:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01464', 'PRD-A-AKS-0191', 'Batre Samsung J1', 1, 54000, 54000, 39000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00279', '2026-11-26 13:04:00+07:00', 'Siti Aisyah 4', 'Admin', 7893000, 0, 7893000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100278', '', '', '', 748000, NULL, '2026-11-26 13:04:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00279', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 2, 480000, 960000, 400000, 0, 160000, 'pcs'),
  ('TRX-A00279', 'PRD-A-EDGE-Q2', 'Sabun "Mandi" Herbal', 3, 9000, 27000, 6000, 0, 9000, 'pcs'),
  ('TRX-A00279', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A00279', 'PRD-A-KEL-0037', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00409', '2026-11-26 12:59:29+07:00', 'Umum', 'Admin', 5086500, 0, 5086500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100408', '', '', '', 475500, NULL, '2026-11-26 12:59:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00409', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A00409', 'PRD-A-KEL-0137', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00409', 'PRD-A-KEL-0165', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00409', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 3, 1050000, 3150000, 1000000, 0, 150000, 'pcs'),
  ('TRX-A00409', 'PRD-A-KEL-0050', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00131', '2026-11-26 12:55:33+07:00', 'Umum', 'Admin', 7114000, 0, 7114000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100130', '', '', '', 683000, NULL, '2026-11-26 12:55:33+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00131', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00131', 'PRD-A-AKS-0155', 'Handsfree Samsung', 1, 40000, 40000, 31000, 0, 9000, 'pcs'),
  ('TRX-A00131', 'PRD-A-KEL-0026', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00131', 'PRD-A-HP-0400', 'HP SAMSUNG 5A 2/32 51721', 3, 2320000, 6960000, 2100000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01290', '2026-11-26 12:35:52+07:00', 'Umum', 'Admin', 9898500, 0, 4949250, 4949250, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101289', '', '', '', 1121000, NULL, '2026-11-26 12:35:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01290', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 3, 1640000, 4920000, 1500000, 0, 420000, 'pcs'),
  ('TRX-A01290', 'PRD-A-HP-0082', 'HP OPPO A17 3/64 25575', 2, 1110000, 2220000, 900000, 0, 420000, 'pcs'),
  ('TRX-A01290', 'PRD-A-KEL-0023', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A01290', 'PRD-A-AKS-0012', 'Kartu Perdana XL', 3, 27000, 81000, 23000, 0, 12000, 'pcs'),
  ('TRX-A01290', 'PRD-A-AKS-0243', 'Batre Nokia BL-5C', 2, 25000, 50000, 17000, 0, 16000, 'pcs'),
  ('TRX-A01290', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 1, 2540000, 2540000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A01290', 'PRD-A-KEL-0058', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs'),
  ('TRX-A01290', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01567', '2026-11-26 12:31:37+07:00', 'Umum', 'Admin', 9120000, 0, 9120000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101566', '', '', '', 720000, NULL, '2026-11-26 12:31:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01567', 'PRD-A-HP-0516', 'HP OPPO Y91C 2/16 44748', 3, 3040000, 9120000, 2800000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00758', '2026-11-26 12:25:35+07:00', 'Umum', 'Admin', 7660000, 0, 7660000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100757', '', '', '', 1098000, NULL, '2026-11-26 12:25:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00758', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 1, 1320000, 1320000, 1200000, 0, 120000, 'pcs'),
  ('TRX-A00758', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 1, 2720000, 2720000, 2600000, 0, 120000, 'pcs'),
  ('TRX-A00758', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 2, 74000, 148000, 59000, 0, 30000, 'pcs'),
  ('TRX-A00758', 'PRD-A-HP-0496', 'HP REDMI Y16 4/64 47045', 1, 1520000, 1520000, 1300000, 0, 220000, 'pcs'),
  ('TRX-A00758', 'PRD-A-HP-0231', 'HP REALME A03 4/128 26346', 3, 580000, 1740000, 400000, 0, 540000, 'pcs'),
  ('TRX-A00758', 'PRD-A-AKS-0139', 'Case Samsung A03', 2, 34000, 68000, 21000, 0, 26000, 'pcs'),
  ('TRX-A00758', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 3, 42000, 126000, 30000, 0, 36000, 'pcs'),
  ('TRX-A00758', 'PRD-A-KEL-0013', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01070', '2026-11-26 12:23:44+07:00', 'Umum', 'Admin', 9317000, 0, 4658500, 4658500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101069', '', '', '', 610000, NULL, '2026-11-26 12:23:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01070', 'PRD-A-KEL-0165', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01070', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 2, 32000, 64000, 24000, 0, 16000, 'pcs'),
  ('TRX-A01070', 'PRD-A-KEL-0114', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01070', 'PRD-A-HP-0331', 'HP SAMSUNG A15 4/64 46561', 3, 2970000, 8910000, 2800000, 0, 510000, 'pcs'),
  ('TRX-A01070', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 3, 61000, 183000, 46000, 0, 45000, 'pcs'),
  ('TRX-A01070', 'PRD-A-AKS-0155', 'Handsfree Samsung', 3, 40000, 120000, 31000, 0, 27000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01256', '2026-11-26 12:04:35+07:00', 'Umum', 'Admin', 4782000, 0, 4782000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101255', '', '', '', 658000, NULL, '2026-11-26 12:04:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01256', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 3, 41000, 123000, 34000, 0, 21000, 'pcs'),
  ('TRX-A01256', 'PRD-A-KEL-0192', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01256', 'PRD-A-HP-0330', 'HP REDMI C15 4/64 69727', 1, 810000, 810000, 600000, 0, 210000, 'pcs'),
  ('TRX-A01256', 'PRD-A-HP-0343', 'HP SAMSUNG 5A 2/32 97358', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A01256', 'PRD-A-KEL-0130', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01256', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 2, 950000, 1900000, 900000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01383', '2026-11-26 11:46:15+07:00', 'Ayu Lestari', 'Admin', 11587500, 0, 11587500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101382', '', '', '', 767000, NULL, '2026-11-26 11:46:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01383', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 1, 2070000, 2070000, 2000000, 0, 70000, 'pcs'),
  ('TRX-A01383', 'PRD-A-HP-0536', 'HP ITEL HOT30i 8/256 76951', 1, 1080000, 1080000, 1000000, 0, 80000, 'pcs'),
  ('TRX-A01383', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 2, 1860000, 3720000, 1700000, 0, 320000, 'pcs'),
  ('TRX-A01383', 'PRD-A-KEL-0144', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01383', 'PRD-A-KEL-0079', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A01383', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 1, 2730000, 2730000, 2500000, 0, 230000, 'pcs'),
  ('TRX-A01383', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 1, 1960000, 1960000, 1900000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01149', '2026-11-26 11:40:23+07:00', 'Fajar Nugroho 5', 'Admin', 8184000, 0, 8184000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101148', '', '', '', 863000, NULL, '2026-11-26 11:40:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01149', 'PRD-A-HP-0072', 'HP OPPO A57 2/16 10136', 3, 2100000, 6300000, 1900000, 0, 600000, 'pcs'),
  ('TRX-A01149', 'PRD-A-AKS-0139', 'Case Samsung A03', 1, 34000, 34000, 21000, 0, 13000, 'pcs'),
  ('TRX-A01149', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 1, 1850000, 1850000, 1600000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01805', '2026-11-26 11:33:34+07:00', 'Toko O''Brien', 'Admin', 13812000, 0, 13812000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101804', '', '', '', 1735000, NULL, '2026-11-26 11:33:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01805', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 2, 1150000, 2300000, 900000, 0, 500000, 'pcs'),
  ('TRX-A01805', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 1, 14000, 14000, 9000, 0, 5000, 'pcs'),
  ('TRX-A01805', 'PRD-A-AKS-0155', 'Handsfree Samsung', 2, 40000, 80000, 31000, 0, 18000, 'pcs'),
  ('TRX-A01805', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A01805', 'PRD-A-AKS-0178', 'Case Vivo Y20', 2, 36000, 72000, 24000, 0, 24000, 'pcs'),
  ('TRX-A01805', 'PRD-A-AKS-0153', 'Memory Card 32GB', 3, 92000, 276000, 86000, 0, 18000, 'pcs'),
  ('TRX-A01805', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 2, 2290000, 4580000, 2200000, 0, 180000, 'pcs'),
  ('TRX-A01805', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 3, 1650000, 4950000, 1400000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00483', '2026-11-26 10:29:24+07:00', 'Yusuf Maulana 4', 'Admin', 14090000, 0, 14090000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100482', '', '', '', 1490000, NULL, '2026-11-26 10:29:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00483', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 2, 790000, 1580000, 600000, 0, 380000, 'pcs'),
  ('TRX-A00483', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00483', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 1, 430000, 430000, 300000, 0, 130000, 'pcs'),
  ('TRX-A00483', 'PRD-A-HP-0374', 'HP VIVO 9C 3/64 70429', 1, 2850000, 2850000, 2800000, 0, 50000, 'pcs'),
  ('TRX-A00483', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs'),
  ('TRX-A00483', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00461', '2026-11-26 10:20:40+07:00', 'Siti Aisyah 2', 'Admin', 60000, 0, 30000, 30000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100460', '', '', '', 16000, NULL, '2026-11-26 10:20:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00461', 'PRD-A-KEL-0142', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs'),
  ('TRX-A00461', 'PRD-A-AKS-0129', 'Tempered Glass Oppo', 2, 25000, 50000, 19000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01008', '2026-11-26 10:07:41+07:00', 'Siti Aisyah 2', 'Admin', 8999000, 0, 8999000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101007', '', '', '', 601000, NULL, '2026-11-26 10:07:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01008', 'PRD-A-KEL-0124', 'Sabun mandi', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A01008', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 1, 1280000, 1280000, 1200000, 0, 80000, 'pcs'),
  ('TRX-A01008', 'PRD-A-AKS-0188', 'Batre Oppo A57', 1, 52000, 52000, 40000, 0, 12000, 'pcs'),
  ('TRX-A01008', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A01008', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 1, 46000, 46000, 35000, 0, 11000, 'pcs'),
  ('TRX-A01008', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 1, 29000, 29000, 25000, 0, 4000, 'pcs'),
  ('TRX-A01008', 'PRD-A-AKS-0245', 'Batre Samsung J1', 2, 57000, 114000, 43000, 0, 28000, 'pcs'),
  ('TRX-A01008', 'PRD-A-HP-0193', 'HP REDMI A16 2/32 87583', 2, 2770000, 5540000, 2700000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01515', '2026-11-26 10:06:21+07:00', 'Fitri Rahmawati 2', 'Admin', 5800000, 0, 5800000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101514', '', '', '', 400000, NULL, '2026-11-26 10:06:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01515', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 2, 2900000, 5800000, 2700000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01473', '2026-11-26 09:55:00+07:00', 'Yusuf Maulana 3', 'Admin', 15207000, 0, 7603500, 7603500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101472', '', '', '', 1190500, NULL, '2026-11-26 09:55:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01473', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 3, 28000, 84000, 21000, 0, 21000, 'pcs'),
  ('TRX-A01473', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 1, 61000, 61000, 46000, 0, 15000, 'pcs'),
  ('TRX-A01473', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 2, 2050000, 4100000, 2000000, 0, 100000, 'pcs'),
  ('TRX-A01473', 'PRD-A-HP-0191', 'HP OPPO Y55S 4/128 83852', 3, 1540000, 4620000, 1300000, 0, 720000, 'pcs'),
  ('TRX-A01473', 'PRD-A-KEL-0099', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01473', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 3, 2110000, 6330000, 2000000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01443', '2026-11-26 09:37:48+07:00', 'Budi Santoso 4', 'Admin', 3896000, 0, 3896000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101442', '', '', '', 523000, NULL, '2026-11-26 09:37:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01443', 'PRD-A-KEL-0008', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01443', 'PRD-A-AKS-0177', 'Case Samsung A03', 2, 39000, 78000, 34000, 0, 10000, 'pcs'),
  ('TRX-A01443', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 3, 1270000, 3810000, 1100000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01812', '2026-11-26 08:59:40+07:00', 'Umum', 'Admin', 5187000, 0, 5187000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101811', '', '', '', 624000, NULL, '2026-11-26 08:59:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01812', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 3, 1700000, 5100000, 1500000, 0, 600000, 'pcs'),
  ('TRX-A01812', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01812', 'PRD-A-AKS-0027', 'Batre Samsung J1', 1, 51000, 51000, 39000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00862', '2026-11-26 08:36:05+07:00', 'Rudi Hartono 2', 'Admin', 129000, 0, 129000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100861', '', '', '', 33000, NULL, '2026-11-26 08:36:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00862', 'PRD-A-AKS-0161', 'Kabel Charger 2m', 3, 43000, 129000, 32000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01252', '2026-11-26 08:25:35+07:00', 'Agus Wijaya', 'Admin', 303000, 0, 303000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101251', '', '', '', 90000, NULL, '2026-11-26 08:25:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01252', 'PRD-A-AKS-0245', 'Batre Samsung J1', 3, 57000, 171000, 43000, 0, 42000, 'pcs'),
  ('TRX-A01252', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 2, 30000, 60000, 18000, 0, 24000, 'pcs'),
  ('TRX-A01252', 'PRD-A-AKS-0178', 'Case Vivo Y20', 2, 36000, 72000, 24000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01128', '2026-11-26 08:23:57+07:00', 'Maya Putri 2', 'Admin', 588000, 0, 588000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101127', '', '', '', 253000, NULL, '2026-11-26 08:23:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01128', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 1, 48000, 48000, 35000, 0, 13000, 'pcs'),
  ('TRX-A01128', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 1, 540000, 540000, 300000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00201', '2026-11-26 08:14:41+07:00', 'Eko Saputra 4', 'Admin', 9708000, 0, 0, 9708000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100200', '', '', '', 1328000, NULL, '2026-11-26 08:14:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00201', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 1, 1290000, 1290000, 1200000, 0, 90000, 'pcs'),
  ('TRX-A00201', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 1, 2230000, 2230000, 2000000, 0, 230000, 'pcs'),
  ('TRX-A00201', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 3, 32000, 96000, 24000, 0, 24000, 'pcs'),
  ('TRX-A00201', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A00201', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 2, 28000, 56000, 14000, 0, 28000, 'pcs'),
  ('TRX-A00201', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 3, 1050000, 3150000, 800000, 0, 750000, 'pcs'),
  ('TRX-A00201', 'PRD-A-AKS-0109', 'Tempered Glass Oppo', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A00201', 'PRD-A-HP-0406', 'HP REDMI Y55S 4/128 92726', 1, 2760000, 2760000, 2600000, 0, 160000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00353', '2026-11-26 08:13:55+07:00', 'Umum', 'Admin', 5408000, 0, 5408000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100352', '', '', '', 512000, NULL, '2026-11-26 08:13:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00353', 'PRD-A-AKS-0046', 'Case Samsung A03', 1, 38000, 38000, 35000, 0, 3000, 'pcs'),
  ('TRX-A00353', 'PRD-A-HP-0051', 'HP REALME A15 4/64 40974', 2, 2640000, 5280000, 2400000, 0, 480000, 'pcs'),
  ('TRX-A00353', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 3, 28000, 84000, 19000, 0, 27000, 'pcs'),
  ('TRX-A00353', 'PRD-A-KEL-0074', 'Sabun mandi', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00963', '2026-11-26 08:04:11+07:00', 'Umum', 'Admin', 5820000, 0, 5820000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100962', '', '', '', 720000, NULL, '2026-11-26 08:04:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00963', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 3, 1940000, 5820000, 1700000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01400', '2026-11-25 20:58:16+07:00', 'Umum', 'Admin', 5320000, 0, 5320000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101399', '', '', '', 582000, NULL, '2026-11-25 20:58:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01400', 'PRD-A-HP-0246', 'HP SAMSUNG 5A 4/128 75969', 2, 2550000, 5100000, 2300000, 0, 500000, 'pcs'),
  ('TRX-A01400', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 1, 41000, 41000, 30000, 0, 11000, 'pcs'),
  ('TRX-A01400', 'PRD-A-AKS-0174', 'Case Redmi 9A', 3, 41000, 123000, 26000, 0, 45000, 'pcs'),
  ('TRX-A01400', 'PRD-A-AKS-0005', 'Kartu Perdana Indosat', 1, 28000, 28000, 14000, 0, 14000, 'pcs'),
  ('TRX-A01400', 'PRD-A-AKS-0242', 'Handsfree Samsung', 1, 28000, 28000, 16000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00011', '2026-11-25 20:31:31+07:00', 'Rudi Hartono 3', 'Admin', 6800000, 0, 0, 6800000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100010', '', '', '', 765000, NULL, '2026-11-25 20:31:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00011', 'PRD-A-KEL-0165', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00011', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 1, 25000, 25000, 13000, 0, 12000, 'pcs'),
  ('TRX-A00011', 'PRD-A-HP-0351', 'HP REDMI V5S 3/32 54249', 1, 2700000, 2700000, 2500000, 0, 200000, 'pcs'),
  ('TRX-A00011', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 2, 1370000, 2740000, 1200000, 0, 340000, 'pcs'),
  ('TRX-A00011', 'PRD-A-KEL-0097', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A00011', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 1, 1290000, 1290000, 1100000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00718', '2026-11-25 20:16:38+07:00', 'Umum', 'Admin', 10735000, 0, 10735000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100717', '', '', '', 458000, NULL, '2026-11-25 20:16:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00718', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 1, 2690000, 2690000, 2600000, 0, 90000, 'pcs'),
  ('TRX-A00718', 'PRD-A-AKS-0001', 'Case Oppo A57', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A00718', 'PRD-A-AKS-0184', 'Kabel Charger 2m', 1, 45000, 45000, 32000, 0, 13000, 'pcs'),
  ('TRX-A00718', 'PRD-A-EDGE-Q1', 'Kopi O''Brien Special', 1, 15000, 15000, 10000, 0, 5000, 'pcs'),
  ('TRX-A00718', 'PRD-A-KEL-0051', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00718', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 3, 2600000, 7800000, 2500000, 0, 300000, 'pcs'),
  ('TRX-A00718', 'PRD-A-AKS-0156', 'Handsfree Oppo', 3, 39000, 117000, 33000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01467', '2026-11-25 20:10:44+07:00', 'Fitri Rahmawati 4', 'Admin', 8218000, 0, 8218000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101466', '', '', '', 702000, NULL, '2026-11-25 20:10:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01467', 'PRD-A-AKS-0242', 'Handsfree Samsung', 1, 28000, 28000, 16000, 0, 12000, 'pcs'),
  ('TRX-A01467', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 3, 2730000, 8190000, 2500000, 0, 690000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00843', '2026-11-25 19:50:09+07:00', 'Agus Wijaya 3', 'Admin', 1721000, 0, 860500, 860500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100842', '', '', '', 421000, NULL, '2026-11-25 19:50:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00843', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00843', 'PRD-A-AKS-0184', 'Kabel Charger 2m', 3, 45000, 135000, 32000, 0, 39000, 'pcs'),
  ('TRX-A00843', 'PRD-A-HP-0134', 'HP INFINIX A57 2/16 38466', 2, 670000, 1340000, 500000, 0, 340000, 'pcs'),
  ('TRX-A00843', 'PRD-A-KEL-0068', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00843', 'PRD-A-KEL-0047', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00843', 'PRD-A-KEL-0095', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00843', 'PRD-A-AKS-0141', 'Batre Oppo A57', 2, 62000, 124000, 50000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01154', '2026-11-25 19:24:27+07:00', 'Rudi Hartono 5', 'Admin', 157500, 0, 157500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101153', '', '', '', 30700, NULL, '2026-11-25 19:24:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01154', 'PRD-A-KEL-0038', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A01154', 'PRD-A-KEL-0125', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A01154', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 2, 41000, 82000, 34000, 0, 14000, 'pcs'),
  ('TRX-A01154', 'PRD-A-AKS-0148', 'Case Vivo Y20', 1, 34000, 34000, 26000, 0, 8000, 'pcs'),
  ('TRX-A01154', 'PRD-A-KEL-0182', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00749', '2026-11-25 19:14:40+07:00', 'Sri Wahyuni 5', 'Admin', 11127000, 0, 5563500, 5563500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100748', '', '', '', 1547000, NULL, '2026-11-25 19:14:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00749', 'PRD-A-HP-0145', 'HP ITEL C3 3/64 46957', 2, 660000, 1320000, 500000, 0, 320000, 'pcs'),
  ('TRX-A00749', 'PRD-A-KEL-0173', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00749', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 2, 940000, 1880000, 700000, 0, 480000, 'pcs'),
  ('TRX-A00749', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 3, 73000, 219000, 58000, 0, 45000, 'pcs'),
  ('TRX-A00749', 'PRD-A-HP-0107', 'HP NOKIA V7 8/256 22189', 1, 2690000, 2690000, 2600000, 0, 90000, 'pcs'),
  ('TRX-A00749', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 2, 1710000, 3420000, 1500000, 0, 420000, 'pcs'),
  ('TRX-A00749', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00802', '2026-11-25 19:14:24+07:00', 'Ayu Lestari 3', 'Admin', 27226000, 0, 27226000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100801', '', '', '', 2506000, NULL, '2026-11-25 19:14:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00802', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs'),
  ('TRX-A00802', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00802', 'PRD-A-KEL-0166', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A00802', 'PRD-A-HP-0078', 'HP NOKIA 9C 2/16 24174', 3, 2330000, 6990000, 2100000, 0, 690000, 'pcs'),
  ('TRX-A00802', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 2, 1210000, 2420000, 1000000, 0, 420000, 'pcs'),
  ('TRX-A00802', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 1, 520000, 520000, 400000, 0, 120000, 'pcs'),
  ('TRX-A00802', 'PRD-A-HP-0485', 'HP ITEL Y91C 3/64 10965', 3, 2820000, 8460000, 2600000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00469', '2026-11-25 19:03:18+07:00', 'Lilis Suryani 5', 'Admin', 17649000, 0, 17649000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100468', '', '', '', 1427000, NULL, '2026-11-25 19:03:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00469', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 2, 2870000, 5740000, 2700000, 0, 340000, 'pcs'),
  ('TRX-A00469', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 3, 1650000, 4950000, 1400000, 0, 750000, 'pcs'),
  ('TRX-A00469', 'PRD-A-HP-0063', 'HP OPPO 9A 3/64 96242', 1, 2090000, 2090000, 2000000, 0, 90000, 'pcs'),
  ('TRX-A00469', 'PRD-A-KEL-0180', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A00469', 'PRD-A-HP-0180', 'HP VIVO HOT30i 4/128 62347', 2, 2420000, 4840000, 2300000, 0, 240000, 'pcs'),
  ('TRX-A00469', 'PRD-A-KEL-0183', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00037', '2026-11-25 18:51:48+07:00', 'Sri Wahyuni 2', 'Admin', 19510000, 0, 9755000, 9755000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100036', '', '', '', 2238000, NULL, '2026-11-25 18:51:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00037', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 1, 1290000, 1290000, 1100000, 0, 190000, 'pcs'),
  ('TRX-A00037', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 3, 960000, 2880000, 800000, 0, 480000, 'pcs'),
  ('TRX-A00037', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 3, 580000, 1740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A00037', 'PRD-A-HP-0349', 'HP NOKIA Y53 4/64 35614', 2, 2090000, 4180000, 1900000, 0, 380000, 'pcs'),
  ('TRX-A00037', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00037', 'PRD-A-HP-0459', 'HP NOKIA A57 2/32 65044', 1, 2920000, 2920000, 2700000, 0, 220000, 'pcs'),
  ('TRX-A00037', 'PRD-A-HP-0249', 'HP INFINIX S23 2/32 54485', 3, 2140000, 6420000, 1900000, 0, 720000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01200', '2026-11-25 18:34:55+07:00', 'Umum', 'Admin', 1140000, 0, 1140000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101199', '', '', '', 140000, NULL, '2026-11-25 18:34:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01200', 'PRD-A-HP-0423', 'HP INFINIX Y16 2/16 64863', 1, 1140000, 1140000, 1000000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01127', '2026-11-25 18:31:06+07:00', 'Umum', 'Admin', 8123000, 0, 8123000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101126', '', '', '', 860500, NULL, '2026-11-25 18:31:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01127', 'PRD-A-KEL-0043', 'Air mineral 600ml', 1, 4000, 4000, 2500, 0, 1500, 'pcs'),
  ('TRX-A01127', 'PRD-A-HP-0092', 'HP SAMSUNG C11 2/16 76999', 2, 1210000, 2420000, 1100000, 0, 220000, 'pcs'),
  ('TRX-A01127', 'PRD-A-AKS-0088', 'Case Redmi 9A', 1, 43000, 43000, 34000, 0, 9000, 'pcs'),
  ('TRX-A01127', 'PRD-A-HP-0508', 'HP REDMI 9C 4/128 88002', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A01127', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 2, 740000, 1480000, 500000, 0, 480000, 'pcs'),
  ('TRX-A01127', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 2, 18000, 36000, 13000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01100', '2026-11-25 18:30:17+07:00', 'Umum', 'Admin', 17051000, 0, 17051000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101099', '', '', '', 1164000, NULL, '2026-11-25 18:30:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01100', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 3, 2700000, 8100000, 2500000, 0, 600000, 'pcs'),
  ('TRX-A01100', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 2, 1550000, 3100000, 1400000, 0, 300000, 'pcs'),
  ('TRX-A01100', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 1, 21000, 21000, 9000, 0, 12000, 'pcs'),
  ('TRX-A01100', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 3, 1880000, 5640000, 1800000, 0, 240000, 'pcs'),
  ('TRX-A01100', 'PRD-A-AKS-0052', 'Memory Card 32GB', 2, 95000, 190000, 89000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00071', '2026-11-25 18:22:22+07:00', 'Umum', 'Admin', 2204000, 0, 2204000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100070', '', '', '', 158000, NULL, '2026-11-25 18:22:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00071', 'PRD-A-HP-0522', 'HP REDMI 9A 2/32 43590', 1, 2110000, 2110000, 2000000, 0, 110000, 'pcs'),
  ('TRX-A00071', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00071', 'PRD-A-AKS-0047', 'Tempered Glass Xiaomi', 1, 24000, 24000, 16000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01901', '2026-11-25 17:39:28+07:00', 'Fitri Rahmawati 5', 'Admin', 6937000, 0, 6937000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101900', '', '', '', 944000, NULL, '2026-11-25 17:39:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01901', 'PRD-A-AKS-0020', 'Kartu Perdana Telkomsel', 3, 31000, 93000, 18000, 0, 39000, 'pcs'),
  ('TRX-A01901', 'PRD-A-HP-0231', 'HP REALME A03 4/128 26346', 1, 580000, 580000, 400000, 0, 180000, 'pcs'),
  ('TRX-A01901', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 1, 22000, 22000, 10000, 0, 12000, 'pcs'),
  ('TRX-A01901', 'PRD-A-HP-0169', 'HP SAMSUNG V5S 3/32 20670', 3, 2020000, 6060000, 1800000, 0, 660000, 'pcs'),
  ('TRX-A01901', 'PRD-A-AKS-0231', 'Case Samsung A03', 2, 34000, 68000, 27000, 0, 14000, 'pcs'),
  ('TRX-A01901', 'PRD-A-AKS-0064', 'Case Redmi 9A', 3, 38000, 114000, 25000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01719', '2026-11-25 17:30:08+07:00', 'Maya Putri 4', 'Admin', 3636000, 0, 3636000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101718', '', '', '', 812000, NULL, '2026-11-25 17:30:08+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01719', 'PRD-A-KEL-0147', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A01719', 'PRD-A-HP-0352', 'HP SAMSUNG A16 2/16 92913', 3, 820000, 2460000, 600000, 0, 660000, 'pcs'),
  ('TRX-A01719', 'PRD-A-HP-0449', 'HP REALME HOT30i 2/32 56128', 2, 570000, 1140000, 500000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00450', '2026-11-25 17:06:03+07:00', 'Umum', 'Admin', 16061000, 0, 16061000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100449', '', '', '', 1094400, NULL, '2026-11-25 17:06:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00450', 'PRD-A-AKS-0223', 'Memory Card 32GB', 3, 51000, 153000, 48000, 0, 9000, 'pcs'),
  ('TRX-A00450', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 3, 2600000, 7800000, 2500000, 0, 300000, 'pcs'),
  ('TRX-A00450', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 2, 2160000, 4320000, 2000000, 0, 320000, 'pcs'),
  ('TRX-A00450', 'PRD-A-AKS-0162', 'Kartu Perdana XL', 1, 35000, 35000, 21000, 0, 14000, 'pcs'),
  ('TRX-A00450', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 1, 970000, 970000, 900000, 0, 70000, 'pcs'),
  ('TRX-A00450', 'PRD-A-KEL-0005', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A00450', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 2, 1390000, 2780000, 1200000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00196', '2026-11-25 17:04:42+07:00', 'Dewi Lestari 2', 'Admin', 7446500, 0, 7446500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100195', '', '', '', 815000, NULL, '2026-11-25 17:04:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00196', 'PRD-A-KEL-0148', 'Pasta gigi', 3, 12000, 36000, 8000, 0, 12000, 'pcs'),
  ('TRX-A00196', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 2, 1540000, 3080000, 1300000, 0, 480000, 'pcs'),
  ('TRX-A00196', 'PRD-A-HP-0290', 'HP REDMI A15 4/64 25389', 2, 2160000, 4320000, 2000000, 0, 320000, 'pcs'),
  ('TRX-A00196', 'PRD-A-KEL-0137', 'Mie instan', 3, 3500, 10500, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00637', '2026-11-25 17:01:59+07:00', 'Eko Saputra 3', 'Admin', 3878000, 0, 3878000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100636', '', '', '', 749000, NULL, '2026-11-25 17:01:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00637', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 3, 480000, 1440000, 400000, 0, 240000, 'pcs'),
  ('TRX-A00637', 'PRD-A-KEL-0171', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00637', 'PRD-A-HP-0162', 'HP REDMI 9A 4/128 22641', 2, 580000, 1160000, 500000, 0, 160000, 'pcs'),
  ('TRX-A00637', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 1, 30000, 30000, 17000, 0, 13000, 'pcs'),
  ('TRX-A00637', 'PRD-A-HP-0495', 'HP VIVO 6A 2/16 68700', 3, 410000, 1230000, 300000, 0, 330000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01936', '2026-11-25 16:58:58+07:00', 'Umum', 'Admin', 168000, 0, 168000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101935', '', '', '', 33000, NULL, '2026-11-25 16:58:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01936', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 3, 56000, 168000, 45000, 0, 33000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01752', '2026-11-25 16:49:59+07:00', 'Budi Santoso 4', 'Admin', 17805000, 0, 8902500, 8902500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101751', '', '', '', 1258000, NULL, '2026-11-25 16:49:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01752', 'PRD-A-HP-0118', 'HP VIVO C11 3/32 59302', 1, 2400000, 2400000, 2300000, 0, 100000, 'pcs'),
  ('TRX-A01752', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 3, 55000, 165000, 49000, 0, 18000, 'pcs'),
  ('TRX-A01752', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 3, 2960000, 8880000, 2800000, 0, 480000, 'pcs'),
  ('TRX-A01752', 'PRD-A-HP-0215', 'HP NOKIA V7 4/64 43723', 3, 2120000, 6360000, 1900000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01512', '2026-11-25 16:49:47+07:00', 'Umum', 'Admin', 8680000, 0, 8680000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101511', '', '', '', 1073000, NULL, '2026-11-25 16:49:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01512', 'PRD-A-KEL-0043', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01512', 'PRD-A-AKS-0191', 'Batre Samsung J1', 1, 54000, 54000, 39000, 0, 15000, 'pcs'),
  ('TRX-A01512', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 3, 30000, 90000, 17000, 0, 39000, 'pcs'),
  ('TRX-A01512', 'PRD-A-KEL-0150', 'Teh celup', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01512', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 2, 2050000, 4100000, 2000000, 0, 100000, 'pcs'),
  ('TRX-A01512', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 1, 1290000, 1290000, 1100000, 0, 190000, 'pcs'),
  ('TRX-A01512', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs'),
  ('TRX-A01512', 'PRD-A-KEL-0007', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01675', '2026-11-25 16:49:19+07:00', 'Sri Wahyuni 2', 'Admin', 12740000, 0, 12740000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101674', '', '', '', 1327000, NULL, '2026-11-25 16:49:19+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01675', 'PRD-A-AKS-0224', 'Case Samsung A03', 3, 48000, 144000, 35000, 0, 39000, 'pcs'),
  ('TRX-A01675', 'PRD-A-AKS-0242', 'Handsfree Samsung', 2, 28000, 56000, 16000, 0, 24000, 'pcs'),
  ('TRX-A01675', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 1, 36000, 36000, 26000, 0, 10000, 'pcs'),
  ('TRX-A01675', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 3, 1040000, 3120000, 900000, 0, 420000, 'pcs'),
  ('TRX-A01675', 'PRD-A-HP-0275', 'HP NOKIA A57 3/64 17315', 3, 2190000, 6570000, 2000000, 0, 570000, 'pcs'),
  ('TRX-A01675', 'PRD-A-AKS-0031', 'Batre Samsung J1', 3, 58000, 174000, 50000, 0, 24000, 'pcs'),
  ('TRX-A01675', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 1, 2640000, 2640000, 2400000, 0, 240000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00764', '2026-11-25 16:43:01+07:00', 'Maya Putri 4', 'Admin', 6794000, 0, 6794000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100763', '', '', '', 1133000, NULL, '2026-11-25 16:43:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00764', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 1, 1560000, 1560000, 1400000, 0, 160000, 'pcs'),
  ('TRX-A00764', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A00764', 'PRD-A-AKS-0114', 'Memory Card 16GB', 2, 44000, 88000, 30000, 0, 28000, 'pcs'),
  ('TRX-A00764', 'PRD-A-HP-0316', 'HP OPPO C11 8/256 40896', 2, 1210000, 2420000, 1000000, 0, 420000, 'pcs'),
  ('TRX-A00764', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00764', 'PRD-A-HP-0030', 'HP NOKIA 9A 4/128 49838', 2, 700000, 1400000, 500000, 0, 400000, 'pcs'),
  ('TRX-A00764', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 2, 33000, 66000, 27000, 0, 12000, 'pcs'),
  ('TRX-A00764', 'PRD-A-AKS-0132', 'Tempered Glass Samsung', 1, 30000, 30000, 17000, 0, 13000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00512', '2026-11-25 16:15:00+07:00', 'Agus Wijaya 5', 'Admin', 12000, 0, 12000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100511', '', '', '', 4500, NULL, '2026-11-25 16:15:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00512', 'PRD-A-KEL-0119', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00187', '2026-11-25 16:06:11+07:00', 'Joko Prasetyo 3', 'Admin', 197000, 0, 197000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100186', '', '', '', 34000, NULL, '2026-11-25 16:06:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00187', 'PRD-A-KEL-0132', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00187', 'PRD-A-AKS-0030', 'Case Samsung A03', 2, 25000, 50000, 20000, 0, 10000, 'pcs'),
  ('TRX-A00187', 'PRD-A-AKS-0177', 'Case Samsung A03', 3, 39000, 117000, 34000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01209', '2026-11-25 15:59:56+07:00', 'Umum', 'Admin', 5382000, 0, 2691000, 2691000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101208', '', '', '', 435000, NULL, '2026-11-25 15:59:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01209', 'PRD-A-AKS-0100', 'Kartu Perdana Indosat', 3, 26000, 78000, 16000, 0, 30000, 'pcs'),
  ('TRX-A01209', 'PRD-A-AKS-0136', 'Kabel Data Type-C', 3, 38000, 114000, 33000, 0, 15000, 'pcs'),
  ('TRX-A01209', 'PRD-A-HP-0227', 'HP ITEL Y20 3/64 30870', 3, 1730000, 5190000, 1600000, 0, 390000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00476', '2026-11-25 15:53:34+07:00', 'Intan Permata 5', 'Admin', 1820000, 0, 0, 1820000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100475', '', '', '', 289000, NULL, '2026-11-25 15:53:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00476', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 2, 42000, 84000, 30000, 0, 24000, 'pcs'),
  ('TRX-A00476', 'PRD-A-EDGE-VAR', 'Gula Pasir (varian lusin)', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00476', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A00476', 'PRD-A-KEL-0123', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A00476', 'PRD-A-HP-0500', 'HP REALME C3 2/16 42341', 1, 1540000, 1540000, 1300000, 0, 240000, 'pcs'),
  ('TRX-A00476', 'PRD-A-KEL-0196', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00042', '2026-11-25 15:48:17+07:00', 'Umum', 'Admin', 4169000, 0, 4169000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100041', '', '', '', 517000, NULL, '2026-11-25 15:48:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00042', 'PRD-A-HP-0009', 'HP ITEL A17 2/32 44512', 2, 1780000, 3560000, 1600000, 0, 360000, 'pcs'),
  ('TRX-A00042', 'PRD-A-AKS-0182', 'Tempered Glass Oppo', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A00042', 'PRD-A-KEL-0045', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00042', 'PRD-A-HP-0175', 'HP REALME S23 4/64 80825', 1, 410000, 410000, 300000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00162', '2026-11-25 15:21:30+07:00', 'Budi Santoso 3', 'Admin', 9197500, 0, 4598750, 4598750, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100161', '', '', '', 1264700, NULL, '2026-11-25 15:21:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00162', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00162', 'PRD-A-HP-0476', 'HP ITEL 5A 4/128 44127', 1, 600000, 600000, 500000, 0, 100000, 'pcs'),
  ('TRX-A00162', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 1, 3030000, 3030000, 2800000, 0, 230000, 'pcs'),
  ('TRX-A00162', 'PRD-A-KEL-0070', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs'),
  ('TRX-A00162', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A00162', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 1, 2200000, 2200000, 2000000, 0, 200000, 'pcs'),
  ('TRX-A00162', 'PRD-A-HP-0231', 'HP REALME A03 4/128 26346', 3, 580000, 1740000, 400000, 0, 540000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01917', '2026-11-25 15:19:56+07:00', 'Dedi Supriadi 2', 'Admin', 2168000, 0, 2168000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101916', '', '', '', 269000, NULL, '2026-11-25 15:19:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01917', 'PRD-A-KEL-0157', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs'),
  ('TRX-A01917', 'PRD-A-AKS-0027', 'Batre Samsung J1', 1, 51000, 51000, 39000, 0, 12000, 'pcs'),
  ('TRX-A01917', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 1, 1990000, 1990000, 1800000, 0, 190000, 'pcs'),
  ('TRX-A01917', 'PRD-A-KEL-0189', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A01917', 'PRD-A-KEL-0196', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00980', '2026-11-25 14:18:28+07:00', 'Nur Halimah 4', 'Admin', 10598000, 0, 5299000, 5299000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100979', '', '', '', 647000, NULL, '2026-11-25 14:18:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00980', 'PRD-A-KEL-0087', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A00980', 'PRD-A-AKS-0178', 'Case Vivo Y20', 2, 36000, 72000, 24000, 0, 24000, 'pcs'),
  ('TRX-A00980', 'PRD-A-AKS-0135', 'Tempered Glass Vivo', 2, 30000, 60000, 18000, 0, 24000, 'pcs'),
  ('TRX-A00980', 'PRD-A-HP-0505', 'HP REALME A57 2/16 38679', 2, 2300000, 4600000, 2200000, 0, 200000, 'pcs'),
  ('TRX-A00980', 'PRD-A-HP-0050', 'HP REALME S23 2/16 76169', 2, 2860000, 5720000, 2700000, 0, 320000, 'pcs'),
  ('TRX-A00980', 'PRD-A-AKS-0043', 'Case Oppo A57', 3, 28000, 84000, 13000, 0, 45000, 'pcs'),
  ('TRX-A00980', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 1, 27000, 27000, 13000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01699', '2026-11-25 14:14:24+07:00', 'Umum', 'Admin', 12775000, 0, 6387500, 6387500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101698', '', '', '', 1094000, NULL, '2026-11-25 14:14:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01699', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 1, 1540000, 1540000, 1400000, 0, 140000, 'pcs'),
  ('TRX-A01699', 'PRD-A-KEL-0136', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01699', 'PRD-A-KEL-0037', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A01699', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 3, 1860000, 5580000, 1700000, 0, 480000, 'pcs'),
  ('TRX-A01699', 'PRD-A-KEL-0184', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01699', 'PRD-A-HP-0177', 'HP REALME 5A 3/64 52847', 3, 1850000, 5550000, 1700000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01689', '2026-11-25 14:10:38+07:00', 'Lilis Suryani 2', 'Admin', 7706000, 0, 3853000, 3853000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101688', '', '', '', 1374000, NULL, '2026-11-25 14:10:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01689', 'PRD-A-AKS-0031', 'Batre Samsung J1', 3, 58000, 174000, 50000, 0, 24000, 'pcs'),
  ('TRX-A01689', 'PRD-A-KEL-0067', 'Minyak goreng 1L', 3, 40000, 120000, 36000, 0, 12000, 'pcs'),
  ('TRX-A01689', 'PRD-A-HP-0101', 'HP NOKIA Y55S 4/128 56039', 2, 2540000, 5080000, 2300000, 0, 480000, 'pcs'),
  ('TRX-A01689', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 3, 520000, 1560000, 300000, 0, 660000, 'pcs'),
  ('TRX-A01689', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 2, 41000, 82000, 37000, 0, 8000, 'pcs'),
  ('TRX-A01689', 'PRD-A-HP-0066', 'HP VIVO 6A 4/64 58914', 1, 690000, 690000, 500000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01790', '2026-11-25 13:47:27+07:00', 'Dedi Supriadi 4', 'Admin', 6810000, 0, 0, 6810000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101789', '', '', '', 510000, NULL, '2026-11-25 13:47:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01790', 'PRD-A-HP-0426', 'HP REALME A17 2/32 24409', 3, 2270000, 6810000, 2100000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00158', '2026-11-25 13:44:11+07:00', 'Umum', 'Admin', 7125000, 0, 3562500, 3562500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100157', '', '', '', 632000, NULL, '2026-11-25 13:44:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00158', 'PRD-A-KEL-0139', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs'),
  ('TRX-A00158', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00158', 'PRD-A-AKS-0119', 'Kartu Perdana Indosat', 2, 36000, 72000, 25000, 0, 22000, 'pcs'),
  ('TRX-A00158', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 1, 2870000, 2870000, 2700000, 0, 170000, 'pcs'),
  ('TRX-A00158', 'PRD-A-AKS-0188', 'Batre Oppo A57', 2, 52000, 104000, 40000, 0, 24000, 'pcs'),
  ('TRX-A00158', 'PRD-A-HP-0020', 'HP OPPO Y53 4/64 46249', 2, 1060000, 2120000, 900000, 0, 320000, 'pcs'),
  ('TRX-A00158', 'PRD-A-KEL-0120', 'Tissue 250s', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00158', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 1, 1880000, 1880000, 1800000, 0, 80000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01368', '2026-11-25 13:43:11+07:00', 'Maya Putri 3', 'Admin', 10238000, 0, 10238000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101367', '', '', '', 1211000, NULL, '2026-11-25 13:43:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01368', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 2, 580000, 1160000, 400000, 0, 360000, 'pcs'),
  ('TRX-A01368', 'PRD-A-AKS-0066', 'Kabel Charger 2m', 1, 18000, 18000, 13000, 0, 5000, 'pcs'),
  ('TRX-A01368', 'PRD-A-HP-0245', 'HP NOKIA C11 4/64 32903', 1, 640000, 640000, 400000, 0, 240000, 'pcs'),
  ('TRX-A01368', 'PRD-A-HP-0077', 'HP VIVO 9A 3/64 78552', 3, 2800000, 8400000, 2600000, 0, 600000, 'pcs'),
  ('TRX-A01368', 'PRD-A-KEL-0194', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00620', '2026-11-25 13:36:25+07:00', 'Umum', 'Admin', 3480000, 0, 3480000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100619', '', '', '', 180000, NULL, '2026-11-25 13:36:25+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00620', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00121', '2026-11-25 13:09:55+07:00', 'Agus Wijaya', 'Admin', 3289500, 0, 1644750, 1644750, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100120', '', '', '', 773000, NULL, '2026-11-25 13:09:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00121', 'PRD-A-KEL-0037', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A00121', 'PRD-A-AKS-0212', 'Kartu Perdana Tri', 3, 28000, 84000, 19000, 0, 27000, 'pcs'),
  ('TRX-A00121', 'PRD-A-AKS-0160', 'Memory Card 32GB', 1, 40000, 40000, 34000, 0, 6000, 'pcs'),
  ('TRX-A00121', 'PRD-A-KEL-0106', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00121', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs'),
  ('TRX-A00121', 'PRD-A-AKS-0113', 'Tempered Glass Samsung', 2, 15000, 30000, 7000, 0, 16000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00658', '2026-11-25 12:56:44+07:00', 'Umum', 'Admin', 15871000, 0, 7935500, 7935500, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100657', '', '', '', 1131000, NULL, '2026-11-25 12:56:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00658', 'PRD-A-KEL-0092', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00658', 'PRD-A-AKS-0071', 'Case Oppo A57', 1, 31000, 31000, 19000, 0, 12000, 'pcs'),
  ('TRX-A00658', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 3, 2000000, 6000000, 1800000, 0, 600000, 'pcs'),
  ('TRX-A00658', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 2, 1680000, 3360000, 1500000, 0, 360000, 'pcs'),
  ('TRX-A00658', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 3, 2150000, 6450000, 2100000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01523', '2026-11-25 12:53:26+07:00', 'Umum', 'Admin', 4273000, 0, 4273000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101522', '', '', '', 861500, NULL, '2026-11-25 12:53:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01523', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 2, 750000, 1500000, 500000, 0, 500000, 'pcs'),
  ('TRX-A01523', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 1, 1040000, 1040000, 900000, 0, 140000, 'pcs'),
  ('TRX-A01523', 'PRD-A-HP-0071', 'HP REDMI 9C 2/32 66896', 1, 1550000, 1550000, 1400000, 0, 150000, 'pcs'),
  ('TRX-A01523', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01523', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 2, 23000, 46000, 14000, 0, 18000, 'pcs'),
  ('TRX-A01523', 'PRD-A-KEL-0041', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01523', 'PRD-A-KEL-0021', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01523', 'PRD-A-KEL-0061', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01444', '2026-11-25 12:28:41+07:00', 'Maya Putri 5', 'Admin', 14609000, 0, 14609000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101443', '', '', '', 1532000, NULL, '2026-11-25 12:28:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01444', 'PRD-A-HP-0122', 'HP OPPO Y53 3/32 51391', 2, 930000, 1860000, 700000, 0, 460000, 'pcs'),
  ('TRX-A01444', 'PRD-A-HP-0233', 'HP NOKIA Y20 8/256 36275', 1, 1900000, 1900000, 1700000, 0, 200000, 'pcs'),
  ('TRX-A01444', 'PRD-A-HP-0329', 'HP OPPO Y53 3/32 64033', 3, 2190000, 6570000, 2100000, 0, 270000, 'pcs'),
  ('TRX-A01444', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 3, 1370000, 4110000, 1200000, 0, 510000, 'pcs'),
  ('TRX-A01444', 'PRD-A-KEL-0106', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A01444', 'PRD-A-AKS-0166', 'Case Redmi 9A', 3, 25000, 75000, 10000, 0, 45000, 'pcs'),
  ('TRX-A01444', 'PRD-A-AKS-0169', 'Handsfree Oppo', 3, 29000, 87000, 14000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00145', '2026-11-25 12:12:06+07:00', 'Umum', 'Admin', 5065000, 0, 5065000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100144', '', '', '', 587000, NULL, '2026-11-25 12:12:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00145', 'PRD-A-AKS-0195', 'Memory Card 16GB', 1, 70000, 70000, 65000, 0, 5000, 'pcs'),
  ('TRX-A00145', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 2, 1800000, 3600000, 1600000, 0, 400000, 'pcs'),
  ('TRX-A00145', 'PRD-A-HP-0337', 'HP VIVO 5A 4/128 86458', 1, 1370000, 1370000, 1200000, 0, 170000, 'pcs'),
  ('TRX-A00145', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 1, 25000, 25000, 13000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00983', '2026-11-25 11:42:37+07:00', 'Intan Permata 3', 'Admin', 6629000, 0, 6629000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100982', '', '', '', 817000, NULL, '2026-11-25 11:42:37+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00983', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 1, 2910000, 2910000, 2700000, 0, 210000, 'pcs'),
  ('TRX-A00983', 'PRD-A-HP-0145', 'HP ITEL C3 3/64 46957', 3, 660000, 1980000, 500000, 0, 480000, 'pcs'),
  ('TRX-A00983', 'PRD-A-AKS-0154', 'Memory Card 16GB', 3, 101000, 303000, 86000, 0, 45000, 'pcs'),
  ('TRX-A00983', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 2, 33000, 66000, 27000, 0, 12000, 'pcs'),
  ('TRX-A00983', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 1, 1370000, 1370000, 1300000, 0, 70000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01966', '2026-11-25 11:06:01+07:00', 'Umum', 'Admin', 12000, 0, 12000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101965', '', '', '', 4000, NULL, '2026-11-25 11:06:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01966', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00134', '2026-11-25 10:59:26+07:00', 'Fitri Rahmawati 4', 'Admin', 7538000, 0, 3769000, 3769000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100133', '', '', '', 433100, NULL, '2026-11-25 10:59:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00134', 'PRD-A-HP-0037', 'HP SAMSUNG Y53 2/16 34133', 1, 2250000, 2250000, 2000000, 0, 250000, 'pcs'),
  ('TRX-A00134', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 3, 1760000, 5280000, 1700000, 0, 180000, 'pcs'),
  ('TRX-A00134', 'PRD-A-KEL-0106', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00134', 'PRD-A-KEL-0076', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01226', '2026-11-25 10:59:21+07:00', 'Umum', 'Admin', 3467000, 0, 3467000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101225', '', '', '', 307000, NULL, '2026-11-25 10:59:21+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01226', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs'),
  ('TRX-A01226', 'PRD-A-AKS-0221', 'Memory Card 32GB', 3, 88000, 264000, 76000, 0, 36000, 'pcs'),
  ('TRX-A01226', 'PRD-A-AKS-0158', 'Kabel Charger 2m', 1, 24000, 24000, 11000, 0, 13000, 'pcs'),
  ('TRX-A01226', 'PRD-A-AKS-0024', 'Tempered Glass Xiaomi', 3, 23000, 69000, 14000, 0, 27000, 'pcs'),
  ('TRX-A01226', 'PRD-A-KEL-0009', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01226', 'PRD-A-AKS-0160', 'Memory Card 32GB', 1, 40000, 40000, 34000, 0, 6000, 'pcs'),
  ('TRX-A01226', 'PRD-A-AKS-0063', 'Case Samsung A03', 1, 40000, 40000, 35000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00693', '2026-11-25 10:43:03+07:00', 'Ayu Lestari 2', 'Admin', 2986000, 0, 2986000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100692', '', '', '', 751000, NULL, '2026-11-25 10:43:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00693', 'PRD-A-HP-0370', 'HP REALME S23 2/16 12820', 3, 940000, 2820000, 700000, 0, 720000, 'pcs'),
  ('TRX-A00693', 'PRD-A-KEL-0045', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A00693', 'PRD-A-AKS-0019', 'Kartu Perdana Telkomsel', 1, 18000, 18000, 13000, 0, 5000, 'pcs'),
  ('TRX-A00693', 'PRD-A-KEL-0109', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00332', '2026-11-25 10:33:41+07:00', 'Umum', 'Admin', 4518000, 0, 2259000, 2259000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100331', '', '', '', 196000, NULL, '2026-11-25 10:33:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00332', 'PRD-A-AKS-0134', 'Case Oppo A57', 2, 35000, 70000, 28000, 0, 14000, 'pcs'),
  ('TRX-A00332', 'PRD-A-KEL-0016', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs'),
  ('TRX-A00332', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 2, 18000, 36000, 11000, 0, 14000, 'pcs'),
  ('TRX-A00332', 'PRD-A-AKS-0106', 'Tempered Glass Vivo', 2, 18000, 36000, 13000, 0, 10000, 'pcs'),
  ('TRX-A00332', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 3, 1450000, 4350000, 1400000, 0, 150000, 'pcs'),
  ('TRX-A00332', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 1, 20000, 20000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00373', '2026-11-25 10:03:57+07:00', 'Sri Wahyuni 4', 'Admin', 4080000, 0, 4080000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100372', '', '', '', 208000, NULL, '2026-11-25 10:03:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00373', 'PRD-A-KEL-0116', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00373', 'PRD-A-HP-0158', 'HP SAMSUNG C15 8/256 69301', 2, 2000000, 4000000, 1900000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01310', '2026-11-25 09:50:00+07:00', 'Dedi Supriadi 3', 'Admin', 2374500, 0, 2374500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101309', '', '', '', 447100, NULL, '2026-11-25 09:50:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01310', 'PRD-A-HP-0254', 'HP VIVO J5 2/16 85377', 2, 1000000, 2000000, 800000, 0, 400000, 'pcs'),
  ('TRX-A01310', 'PRD-A-KEL-0003', 'Saus sambal', 2, 12000, 24000, 9000, 0, 6000, 'pcs'),
  ('TRX-A01310', 'PRD-A-KEL-0005', 'Kopi sachet', 3, 1500, 4500, 800, 0, 2100, 'pcs'),
  ('TRX-A01310', 'PRD-A-KEL-0162', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01310', 'PRD-A-KEL-0035', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01310', 'PRD-A-AKS-0195', 'Memory Card 16GB', 3, 70000, 210000, 65000, 0, 15000, 'pcs'),
  ('TRX-A01310', 'PRD-A-AKS-0178', 'Case Vivo Y20', 1, 36000, 36000, 24000, 0, 12000, 'pcs'),
  ('TRX-A01310', 'PRD-A-KEL-0016', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01115', '2026-11-25 09:32:18+07:00', 'Agus Wijaya', 'Admin', 8526000, 0, 0, 8526000, 'QRIS', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101114', '', '', '', 714000, NULL, '2026-11-25 09:32:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01115', 'PRD-A-HP-0202', 'HP NOKIA A16 3/64 18852', 3, 2700000, 8100000, 2500000, 0, 600000, 'pcs'),
  ('TRX-A01115', 'PRD-A-KEL-0121', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs'),
  ('TRX-A01115', 'PRD-A-HP-0379', 'HP OPPO A03 3/32 89567', 1, 410000, 410000, 300000, 0, 110000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01650', '2026-11-25 09:22:39+07:00', 'Umum', 'Admin', 3632000, 0, 3632000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101649', '', '', '', 408000, NULL, '2026-11-25 09:22:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01650', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 1, 32000, 32000, 24000, 0, 8000, 'pcs'),
  ('TRX-A01650', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 2, 1800000, 3600000, 1600000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00956', '2026-11-25 09:03:06+07:00', 'Siti Aisyah 3', 'Admin', 4960000, 0, 4960000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100955', '', '', '', 760000, NULL, '2026-11-25 09:03:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00956', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 3, 1290000, 3870000, 1100000, 0, 570000, 'pcs'),
  ('TRX-A00956', 'PRD-A-HP-0303', 'HP REALME A03 3/32 87739', 1, 1090000, 1090000, 900000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01197', '2026-11-25 08:58:36+07:00', 'Umum', 'Admin', 20000, 0, 20000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101196', '', '', '', 6000, NULL, '2026-11-25 08:58:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01197', 'PRD-A-KEL-0148', 'Pasta gigi', 1, 12000, 12000, 8000, 0, 4000, 'pcs'),
  ('TRX-A01197', 'PRD-A-KEL-0184', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00541', '2026-11-25 08:58:18+07:00', 'Umum', 'Admin', 12288000, 0, 12288000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100540', '', '', '', 760000, NULL, '2026-11-25 08:58:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00541', 'PRD-A-AKS-0031', 'Batre Samsung J1', 3, 58000, 174000, 50000, 0, 24000, 'pcs'),
  ('TRX-A00541', 'PRD-A-KEL-0094', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A00541', 'PRD-A-HP-0271', 'HP REDMI A15 2/32 43955', 2, 2480000, 4960000, 2300000, 0, 360000, 'pcs'),
  ('TRX-A00541', 'PRD-A-HP-0491', 'HP REDMI V7 2/32 86419', 3, 2300000, 6900000, 2200000, 0, 300000, 'pcs'),
  ('TRX-A00541', 'PRD-A-AKS-0006', 'Kabel Data Type-C', 2, 28000, 56000, 21000, 0, 14000, 'pcs'),
  ('TRX-A00541', 'PRD-A-AKS-0165', 'Case Vivo Y20', 3, 43000, 129000, 31000, 0, 36000, 'pcs'),
  ('TRX-A00541', 'PRD-A-AKS-0149', 'Case Samsung A03', 2, 17000, 34000, 14000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00680', '2026-11-25 08:52:46+07:00', 'Umum', 'Admin', 6870000, 0, 6870000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100679', '', '', '', 556000, NULL, '2026-11-25 08:52:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00680', 'PRD-A-KEL-0194', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A00680', 'PRD-A-HP-0478', 'HP VIVO Y20 2/32 86705', 2, 2500000, 5000000, 2300000, 0, 400000, 'pcs'),
  ('TRX-A00680', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 1, 1850000, 1850000, 1700000, 0, 150000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00281', '2026-11-25 08:32:52+07:00', 'Sri Wahyuni 2', 'Admin', 10203500, 0, 5101750, 5101750, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100280', '', '', '', 501000, NULL, '2026-11-25 08:32:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00281', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 3, 2020000, 6060000, 1900000, 0, 360000, 'pcs'),
  ('TRX-A00281', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 2, 2070000, 4140000, 2000000, 0, 140000, 'pcs'),
  ('TRX-A00281', 'PRD-A-KEL-0023', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00629', '2026-11-25 08:31:10+07:00', 'Lilis Suryani 4', 'Admin', 3360000, 0, 0, 3360000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100628', '', '', '', 346000, NULL, '2026-11-25 08:31:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00629', 'PRD-A-HP-0179', 'HP OPPO Y20 8/256 21430', 2, 1670000, 3340000, 1500000, 0, 340000, 'pcs'),
  ('TRX-A00629', 'PRD-A-KEL-0165', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00260', '2026-11-25 08:30:22+07:00', 'Umum', 'Admin', 10554000, 0, 5277000, 5277000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100259', '', '', '', 634000, NULL, '2026-11-25 08:30:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00260', 'PRD-A-HP-0166', 'HP REALME J5 4/128 94117', 2, 2770000, 5540000, 2600000, 0, 340000, 'pcs'),
  ('TRX-A00260', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 1, 1180000, 1180000, 1100000, 0, 80000, 'pcs'),
  ('TRX-A00260', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A00260', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 1, 1620000, 1620000, 1500000, 0, 120000, 'pcs'),
  ('TRX-A00260', 'PRD-A-AKS-0176', 'Voucher Indosat 5GB', 1, 34000, 34000, 20000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01205', '2026-11-25 08:08:43+07:00', 'Umum', 'Admin', 8720000, 0, 8720000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101204', '', '', '', 1520000, NULL, '2026-11-25 08:08:43+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01205', 'PRD-A-HP-0251', 'HP SAMSUNG 6A 3/64 36007', 3, 480000, 1440000, 400000, 0, 240000, 'pcs'),
  ('TRX-A01205', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 2, 650000, 1300000, 400000, 0, 500000, 'pcs'),
  ('TRX-A01205', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 2, 2290000, 4580000, 2100000, 0, 380000, 'pcs'),
  ('TRX-A01205', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 2, 700000, 1400000, 500000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00950', '2026-11-24 20:44:50+07:00', 'Lilis Suryani 3', 'Admin', 91000, 0, 91000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100949', '', '', '', 33000, NULL, '2026-11-24 20:44:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00950', 'PRD-A-AKS-0078', 'Batre Vivo Y91', 3, 25000, 75000, 16000, 0, 27000, 'pcs'),
  ('TRX-A00950', 'PRD-A-AKS-0187', 'Kartu Perdana XL', 1, 16000, 16000, 10000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01195', '2026-11-24 20:23:38+07:00', 'Umum', 'Admin', 20052000, 0, 10026000, 10026000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101194', '', '', '', 1300000, NULL, '2026-11-24 20:23:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01195', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 3, 1620000, 4860000, 1500000, 0, 360000, 'pcs'),
  ('TRX-A01195', 'PRD-A-HP-0406', 'HP REDMI Y55S 4/128 92726', 2, 2760000, 5520000, 2600000, 0, 320000, 'pcs'),
  ('TRX-A01195', 'PRD-A-AKS-0146', 'Memory Card 32GB', 1, 91000, 91000, 82000, 0, 9000, 'pcs'),
  ('TRX-A01195', 'PRD-A-KEL-0159', 'Roti tawar', 3, 15000, 45000, 12000, 0, 9000, 'pcs'),
  ('TRX-A01195', 'PRD-A-HP-0458', 'HP ITEL Y55S 3/64 32983', 3, 1180000, 3540000, 1100000, 0, 240000, 'pcs'),
  ('TRX-A01195', 'PRD-A-KEL-0101', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A01195', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 2, 2960000, 5920000, 2800000, 0, 320000, 'pcs'),
  ('TRX-A01195', 'PRD-A-KEL-0182', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00438', '2026-11-24 20:23:06+07:00', 'Intan Permata 2', 'Admin', 13530000, 0, 6765000, 6765000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100437', '', '', '', 630000, NULL, '2026-11-24 20:23:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00438', 'PRD-A-HP-0253', 'HP REALME A03 4/64 21613', 3, 2590000, 7770000, 2500000, 0, 270000, 'pcs'),
  ('TRX-A00438', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 2, 2880000, 5760000, 2700000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00248', '2026-11-24 20:21:34+07:00', 'Sri Wahyuni 4', 'Admin', 3779000, 0, 1889500, 1889500, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100247', '', '', '', 271000, NULL, '2026-11-24 20:21:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00248', 'PRD-A-HP-0133', 'HP NOKIA J5 3/32 17965', 1, 930000, 930000, 800000, 0, 130000, 'pcs'),
  ('TRX-A00248', 'PRD-A-AKS-0217', 'Batre Samsung J1', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A00248', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 1, 2600000, 2600000, 2500000, 0, 100000, 'pcs'),
  ('TRX-A00248', 'PRD-A-AKS-0115', 'Tempered Glass Samsung', 1, 20000, 20000, 9000, 0, 11000, 'pcs'),
  ('TRX-A00248', 'PRD-A-AKS-0144', 'Voucher Telkomsel 10GB', 2, 65000, 130000, 60000, 0, 10000, 'pcs'),
  ('TRX-A00248', 'PRD-A-AKS-0125', 'Handsfree Samsung', 1, 52000, 52000, 37000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01611', '2026-11-24 20:19:12+07:00', 'Dedi Supriadi 3', 'Admin', 6661500, 0, 6661500, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101610', '', '', '', 385700, NULL, '2026-11-24 20:19:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01611', 'PRD-A-KEL-0142', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A01611', 'PRD-A-HP-0145', 'HP ITEL C3 3/64 46957', 1, 660000, 660000, 500000, 0, 160000, 'pcs'),
  ('TRX-A01611', 'PRD-A-AKS-0090', 'Kartu Perdana XL', 3, 35000, 105000, 22000, 0, 39000, 'pcs'),
  ('TRX-A01611', 'PRD-A-HP-0021', 'HP REALME 6A 4/64 69116', 3, 1960000, 5880000, 1900000, 0, 180000, 'pcs'),
  ('TRX-A01611', 'PRD-A-KEL-0006', 'Kopi sachet', 1, 1500, 1500, 800, 0, 700, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00818', '2026-11-24 20:11:49+07:00', 'Dedi Supriadi 4', 'Admin', 1900000, 0, 1900000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100817', '', '', '', 100000, NULL, '2026-11-24 20:11:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00818', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 2, 950000, 1900000, 900000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01105', '2026-11-24 20:09:49+07:00', 'Fitri Rahmawati', 'Admin', 40000, 0, 40000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101104', '', '', '', 12000, NULL, '2026-11-24 20:09:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01105', 'PRD-A-AKS-0211', 'Tempered Glass Samsung', 2, 20000, 40000, 14000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01121', '2026-11-24 19:58:09+07:00', 'Siti Aisyah 3', 'Admin', 2995000, 0, 0, 2995000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101120', '', '', '', 240000, NULL, '2026-11-24 19:58:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01121', 'PRD-A-AKS-0154', 'Memory Card 16GB', 1, 101000, 101000, 86000, 0, 15000, 'pcs'),
  ('TRX-A01121', 'PRD-A-AKS-0151', 'Voucher Telkomsel 5GB', 3, 38000, 114000, 23000, 0, 45000, 'pcs'),
  ('TRX-A01121', 'PRD-A-HP-0188', 'HP ITEL A17 3/32 76357', 1, 2780000, 2780000, 2600000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00424', '2026-11-24 19:31:04+07:00', 'Rina Marlina', 'Admin', 8026000, 0, 8026000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100423', '', '', '', 1540000, NULL, '2026-11-24 19:31:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00424', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 2, 57000, 114000, 45000, 0, 24000, 'pcs'),
  ('TRX-A00424', 'PRD-A-AKS-0223', 'Memory Card 32GB', 2, 51000, 102000, 48000, 0, 6000, 'pcs'),
  ('TRX-A00424', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 3, 650000, 1950000, 400000, 0, 750000, 'pcs'),
  ('TRX-A00424', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 1, 380000, 380000, 300000, 0, 80000, 'pcs'),
  ('TRX-A00424', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 2, 1850000, 3700000, 1600000, 0, 500000, 'pcs'),
  ('TRX-A00424', 'PRD-A-HP-0512', 'HP REDMI S23 2/16 54054', 2, 890000, 1780000, 800000, 0, 180000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01213', '2026-11-24 19:30:52+07:00', 'Maya Putri 2', 'Admin', 6489000, 0, 6489000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101212', '', '', '', 654000, NULL, '2026-11-24 19:30:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01213', 'PRD-A-HP-0048', 'HP INFINIX Y20 4/64 71531', 1, 1650000, 1650000, 1500000, 0, 150000, 'pcs'),
  ('TRX-A01213', 'PRD-A-AKS-0023', 'Memory Card 32GB', 3, 53000, 159000, 45000, 0, 24000, 'pcs'),
  ('TRX-A01213', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 3, 1560000, 4680000, 1400000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01535', '2026-11-24 19:25:36+07:00', 'Sri Wahyuni 5', 'Admin', 168000, 0, 168000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101534', '', '', '', 6000, NULL, '2026-11-24 19:25:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01535', 'PRD-A-AKS-0049', 'Memory Card 32GB', 2, 84000, 168000, 81000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01028', '2026-11-24 19:21:18+07:00', 'Siti Aisyah 2', 'Admin', 1086000, 0, 543000, 543000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101027', '', '', '', 324000, NULL, '2026-11-24 19:21:18+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01028', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 3, 18000, 54000, 8000, 0, 30000, 'pcs'),
  ('TRX-A01028', 'PRD-A-AKS-0223', 'Memory Card 32GB', 2, 51000, 102000, 48000, 0, 6000, 'pcs'),
  ('TRX-A01028', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 2, 35000, 70000, 21000, 0, 28000, 'pcs'),
  ('TRX-A01028', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 2, 430000, 860000, 300000, 0, 260000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01783', '2026-11-24 18:59:16+07:00', 'Umum', 'Admin', 8000, 0, 4000, 4000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101782', '', '', '', 2500, NULL, '2026-11-24 18:59:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01783', 'PRD-A-KEL-0091', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01783', 'PRD-A-KEL-0079', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01765', '2026-11-24 18:17:54+07:00', 'Fitri Rahmawati 3', 'Admin', 6507000, 0, 6507000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101764', '', '', '', 1449000, NULL, '2026-11-24 18:17:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01765', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 3, 750000, 2250000, 500000, 0, 750000, 'pcs'),
  ('TRX-A01765', 'PRD-A-HP-0187', 'HP INFINIX 5A 4/128 17333', 2, 600000, 1200000, 400000, 0, 400000, 'pcs'),
  ('TRX-A01765', 'PRD-A-KEL-0104', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01765', 'PRD-A-AKS-0234', 'Case Samsung A03', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A01765', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01765', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 2, 74000, 148000, 59000, 0, 30000, 'pcs'),
  ('TRX-A01765', 'PRD-A-HP-0267', 'HP SAMSUNG Y91C 2/16 94647', 1, 2600000, 2600000, 2400000, 0, 200000, 'pcs'),
  ('TRX-A01765', 'PRD-A-AKS-0245', 'Batre Samsung J1', 3, 57000, 171000, 43000, 0, 42000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01774', '2026-11-24 18:06:01+07:00', 'Umum', 'Admin', 3030000, 0, 3030000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101773', '', '', '', 230000, NULL, '2026-11-24 18:06:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01774', 'PRD-A-HP-0214', 'HP VIVO C15 4/128 17583', 1, 3030000, 3030000, 2800000, 0, 230000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00667', '2026-11-24 17:39:38+07:00', 'Umum', 'Admin', 6172000, 0, 6172000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100666', '', '', '', 711500, NULL, '2026-11-24 17:39:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00667', 'PRD-A-KEL-0140', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00667', 'PRD-A-AKS-0041', 'Tempered Glass Vivo', 3, 19000, 57000, 5000, 0, 42000, 'pcs'),
  ('TRX-A00667', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 3, 25000, 75000, 13000, 0, 36000, 'pcs'),
  ('TRX-A00667', 'PRD-A-KEL-0079', 'Mie instan', 2, 3500, 7000, 2500, 0, 2000, 'pcs'),
  ('TRX-A00667', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 3, 2010000, 6030000, 1800000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00914', '2026-11-24 17:33:32+07:00', 'Hendra Gunawan 2', 'Admin', 4000, 0, 4000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100913', '', '', '', 1000, NULL, '2026-11-24 17:33:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00914', 'PRD-A-KEL-0081', 'Pensil', 2, 2000, 4000, 1500, 0, 1000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01218', '2026-11-24 17:23:30+07:00', 'Maya Putri 2', 'Admin', 3180000, 0, 3180000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101217', '', '', '', 380000, NULL, '2026-11-24 17:23:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01218', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01684', '2026-11-24 17:20:45+07:00', 'Intan Permata', 'Admin', 8975000, 0, 8975000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101683', '', '', '', 859500, NULL, '2026-11-24 17:20:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01684', 'PRD-A-KEL-0039', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01684', 'PRD-A-HP-0261', 'HP NOKIA A03 2/32 70057', 2, 2610000, 5220000, 2400000, 0, 420000, 'pcs'),
  ('TRX-A01684', 'PRD-A-KEL-0143', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A01684', 'PRD-A-AKS-0229', 'Kabel Data Lightning', 2, 21000, 42000, 9000, 0, 24000, 'pcs'),
  ('TRX-A01684', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 2, 1800000, 3600000, 1600000, 0, 400000, 'pcs'),
  ('TRX-A01684', 'PRD-A-AKS-0082', 'Case Redmi 9A', 2, 26000, 52000, 23000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00732', '2026-11-24 17:16:28+07:00', 'Andi Kurnia 2', 'Admin', 11943000, 0, 11943000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100731', '', '', '', 870000, NULL, '2026-11-24 17:16:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00732', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 1, 540000, 540000, 300000, 0, 240000, 'pcs'),
  ('TRX-A00732', 'PRD-A-HP-0434', 'HP NOKIA HOT30i 4/128 10573', 3, 1370000, 4110000, 1300000, 0, 210000, 'pcs'),
  ('TRX-A00732', 'PRD-A-AKS-0196', 'Kabel Data Type-C', 1, 26000, 26000, 16000, 0, 10000, 'pcs'),
  ('TRX-A00732', 'PRD-A-HP-0371', 'HP ITEL A16 3/32 36309', 2, 2960000, 5920000, 2800000, 0, 320000, 'pcs'),
  ('TRX-A00732', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 1, 74000, 74000, 59000, 0, 15000, 'pcs'),
  ('TRX-A00732', 'PRD-A-HP-0247', 'HP INFINIX 5A 4/128 24280', 1, 1160000, 1160000, 1100000, 0, 60000, 'pcs'),
  ('TRX-A00732', 'PRD-A-AKS-0093', 'Voucher Tri 8GB', 2, 52000, 104000, 46000, 0, 12000, 'pcs'),
  ('TRX-A00732', 'PRD-A-KEL-0095', 'Pulpen', 3, 3000, 9000, 2000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01557', '2026-11-24 16:49:54+07:00', 'Umum', 'Admin', 16783000, 0, 16783000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101556', '', '', '', 1717000, NULL, '2026-11-24 16:49:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01557', 'PRD-A-HP-0231', 'HP REALME A03 4/128 26346', 2, 580000, 1160000, 400000, 0, 360000, 'pcs'),
  ('TRX-A01557', 'PRD-A-HP-0252', 'HP ITEL V5S 4/64 38793', 3, 1860000, 5580000, 1700000, 0, 480000, 'pcs'),
  ('TRX-A01557', 'PRD-A-AKS-0240', 'Voucher XL 10GB', 3, 55000, 165000, 50000, 0, 15000, 'pcs'),
  ('TRX-A01557', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01557', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs'),
  ('TRX-A01557', 'PRD-A-HP-0400', 'HP SAMSUNG 5A 2/32 51721', 3, 2320000, 6960000, 2100000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01946', '2026-11-24 16:46:31+07:00', 'Rudi Hartono', 'Admin', 5358000, 0, 2679000, 2679000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101945', '', '', '', 691400, NULL, '2026-11-24 16:46:31+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01946', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 1, 1320000, 1320000, 1200000, 0, 120000, 'pcs'),
  ('TRX-A01946', 'PRD-A-AKS-0190', 'Voucher Indosat 5GB', 3, 48000, 144000, 35000, 0, 39000, 'pcs'),
  ('TRX-A01946', 'PRD-A-AKS-0013', 'Case Samsung A03', 1, 41000, 41000, 29000, 0, 12000, 'pcs'),
  ('TRX-A01946', 'PRD-A-KEL-0193', 'Snack wafer', 3, 10000, 30000, 8000, 0, 6000, 'pcs'),
  ('TRX-A01946', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 3, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A01946', 'PRD-A-KEL-0006', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01946', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 3, 1270000, 3810000, 1100000, 0, 510000, 'pcs'),
  ('TRX-A01946', 'PRD-A-KEL-0165', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01185', '2026-11-24 16:37:28+07:00', 'Intan Permata 5', 'Admin', 23000, 0, 23000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101184', '', '', '', 12000, NULL, '2026-11-24 16:37:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01185', 'PRD-A-AKS-0098', 'Tempered Glass Oppo', 1, 23000, 23000, 11000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01415', '2026-11-24 16:30:01+07:00', 'Ayu Lestari 2', 'Admin', 6330000, 0, 6330000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101414', '', '', '', 168000, NULL, '2026-11-24 16:30:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01415', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A01415', 'PRD-A-AKS-0104', 'Memory Card 64GB', 2, 43000, 86000, 40000, 0, 6000, 'pcs'),
  ('TRX-A01415', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 3, 2050000, 6150000, 2000000, 0, 150000, 'pcs'),
  ('TRX-A01415', 'PRD-A-KEL-0024', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00033', '2026-11-24 16:21:23+07:00', 'Ayu Lestari', 'Admin', 3922000, 0, 3922000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100032', '', '', '', 834000, NULL, '2026-11-24 16:21:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00033', 'PRD-A-AKS-0222', 'Case Redmi 9A', 3, 46000, 138000, 35000, 0, 33000, 'pcs'),
  ('TRX-A00033', 'PRD-A-KEL-0173', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A00033', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs'),
  ('TRX-A00033', 'PRD-A-AKS-0195', 'Memory Card 16GB', 1, 70000, 70000, 65000, 0, 5000, 'pcs'),
  ('TRX-A00033', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 3, 700000, 2100000, 500000, 0, 600000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00856', '2026-11-24 16:19:06+07:00', 'Umum', 'Admin', 5468000, 0, 5468000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100855', '', '', '', 531000, NULL, '2026-11-24 16:19:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00856', 'PRD-A-AKS-0062', 'Kabel Data Lightning', 3, 41000, 123000, 30000, 0, 33000, 'pcs'),
  ('TRX-A00856', 'PRD-A-HP-0375', 'HP ITEL C3 8/256 76575', 2, 2510000, 5020000, 2300000, 0, 420000, 'pcs'),
  ('TRX-A00856', 'PRD-A-AKS-0104', 'Memory Card 64GB', 3, 43000, 129000, 40000, 0, 9000, 'pcs'),
  ('TRX-A00856', 'PRD-A-AKS-0166', 'Case Redmi 9A', 3, 25000, 75000, 10000, 0, 45000, 'pcs'),
  ('TRX-A00856', 'PRD-A-KEL-0077', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A00856', 'PRD-A-AKS-0198', 'Batre Oppo A57', 3, 19000, 57000, 14000, 0, 15000, 'pcs'),
  ('TRX-A00856', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00029', '2026-11-24 16:13:36+07:00', 'Dedi Supriadi', 'Admin', 6210000, 0, 6210000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100028', '', '', '', 510000, NULL, '2026-11-24 16:13:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00029', 'PRD-A-HP-0070', 'HP SAMSUNG 9A 4/128 90887', 3, 2070000, 6210000, 1900000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00049', '2026-11-24 16:09:54+07:00', 'Budi Santoso 3', 'Admin', 4128000, 0, 4128000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100048', '', '', '', 584000, NULL, '2026-11-24 16:09:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00049', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs'),
  ('TRX-A00049', 'PRD-A-AKS-0133', 'Voucher Telkomsel 5GB', 2, 57000, 114000, 45000, 0, 24000, 'pcs'),
  ('TRX-A00049', 'PRD-A-KEL-0024', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00049', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00049', 'PRD-A-KEL-0163', 'Saus sambal', 1, 12000, 12000, 9000, 0, 3000, 'pcs'),
  ('TRX-A00049', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 3, 1270000, 3810000, 1100000, 0, 510000, 'pcs'),
  ('TRX-A00049', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 3, 18000, 54000, 10000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01418', '2026-11-24 15:52:04+07:00', 'Umum', 'Admin', 5086000, 0, 5086000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101417', '', '', '', 282000, NULL, '2026-11-24 15:52:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01418', 'PRD-A-KEL-0150', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A01418', 'PRD-A-HP-0490', 'HP ITEL S23 3/64 56082', 2, 2540000, 5080000, 2400000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00018', '2026-11-24 14:10:26+07:00', 'Umum', 'Admin', 9402000, 0, 9402000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100017', '', '', '', 670500, NULL, '2026-11-24 14:10:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00018', 'PRD-A-HP-0340', 'HP REDMI A57 3/32 55610', 2, 2680000, 5360000, 2500000, 0, 360000, 'pcs'),
  ('TRX-A00018', 'PRD-A-KEL-0008', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00018', 'PRD-A-KEL-0146', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00018', 'PRD-A-AKS-0038', 'Case Vivo Y20', 2, 40000, 80000, 26000, 0, 28000, 'pcs'),
  ('TRX-A00018', 'PRD-A-HP-0138', 'HP VIVO A17 3/64 78957', 3, 1290000, 3870000, 1200000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00535', '2026-11-24 14:05:02+07:00', 'Dewi Lestari', 'Admin', 6930000, 0, 6930000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100534', '', '', '', 1030000, NULL, '2026-11-24 14:05:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00535', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 1, 1040000, 1040000, 900000, 0, 140000, 'pcs'),
  ('TRX-A00535', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A00535', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 2, 560000, 1120000, 400000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01315', '2026-11-24 14:04:09+07:00', 'Andi Kurnia', 'Admin', 2587000, 0, 2587000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101314', '', '', '', 283500, NULL, '2026-11-24 14:04:09+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01315', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 2, 29000, 58000, 15000, 0, 28000, 'pcs'),
  ('TRX-A01315', 'PRD-A-KEL-0143', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01315', 'PRD-A-AKS-0001', 'Case Oppo A57', 1, 22000, 22000, 10000, 0, 12000, 'pcs'),
  ('TRX-A01315', 'PRD-A-KEL-0031', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01315', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 1, 2200000, 2200000, 2000000, 0, 200000, 'pcs'),
  ('TRX-A01315', 'PRD-A-AKS-0116', 'Memory Card 16GB', 3, 88000, 264000, 76000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01426', '2026-11-24 13:38:23+07:00', 'Umum', 'Admin', 2520000, 0, 2520000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101425', '', '', '', 320000, NULL, '2026-11-24 13:38:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01426', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 2, 1260000, 2520000, 1100000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00305', '2026-11-24 13:27:42+07:00', 'Nur Halimah', 'Admin', 58000, 0, 58000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100304', '', '', '', 9500, NULL, '2026-11-24 13:27:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00305', 'PRD-A-KEL-0008', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A00305', 'PRD-A-KEL-0091', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A00305', 'PRD-A-AKS-0217', 'Batre Samsung J1', 1, 47000, 47000, 42000, 0, 5000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00093', '2026-11-24 13:25:03+07:00', 'Intan Permata 4', 'Admin', 11433000, 0, 5716500, 5716500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100092', '', '', '', 1082000, NULL, '2026-11-24 13:25:03+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00093', 'PRD-A-AKS-0103', 'Batre Nokia BL-5C', 1, 33000, 33000, 27000, 0, 6000, 'pcs'),
  ('TRX-A00093', 'PRD-A-HP-0056', 'HP OPPO C15 3/64 11140', 3, 2640000, 7920000, 2400000, 0, 720000, 'pcs'),
  ('TRX-A00093', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 1, 2590000, 2590000, 2400000, 0, 190000, 'pcs'),
  ('TRX-A00093', 'PRD-A-HP-0110', 'HP INFINIX V5S 4/128 44107', 1, 740000, 740000, 600000, 0, 140000, 'pcs'),
  ('TRX-A00093', 'PRD-A-AKS-0148', 'Case Vivo Y20', 1, 34000, 34000, 26000, 0, 8000, 'pcs'),
  ('TRX-A00093', 'PRD-A-AKS-0214', 'Memory Card 64GB', 1, 100000, 100000, 86000, 0, 14000, 'pcs'),
  ('TRX-A00093', 'PRD-A-KEL-0089', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00945', '2026-11-24 13:24:02+07:00', 'Umum', 'Admin', 10734000, 0, 10734000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100944', '', '', '', 1056000, NULL, '2026-11-24 13:24:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00945', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 2, 1620000, 3240000, 1400000, 0, 440000, 'pcs'),
  ('TRX-A00945', 'PRD-A-AKS-0150', 'Memory Card 16GB', 2, 55000, 110000, 41000, 0, 28000, 'pcs'),
  ('TRX-A00945', 'PRD-A-AKS-0205', 'Voucher Tri 8GB', 1, 56000, 56000, 45000, 0, 11000, 'pcs'),
  ('TRX-A00945', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 1, 670000, 670000, 600000, 0, 70000, 'pcs'),
  ('TRX-A00945', 'PRD-A-HP-0135', 'HP OPPO A17 2/32 16055', 1, 1410000, 1410000, 1200000, 0, 210000, 'pcs'),
  ('TRX-A00945', 'PRD-A-HP-0315', 'HP INFINIX Y16 4/64 73875', 3, 1680000, 5040000, 1600000, 0, 240000, 'pcs'),
  ('TRX-A00945', 'PRD-A-AKS-0230', 'Handsfree Oppo', 3, 52000, 156000, 38000, 0, 42000, 'pcs'),
  ('TRX-A00945', 'PRD-A-AKS-0125', 'Handsfree Samsung', 1, 52000, 52000, 37000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01789', '2026-11-24 13:09:46+07:00', 'Dewi Lestari 2', 'Admin', 7222000, 0, 7222000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101788', '', '', '', 794000, NULL, '2026-11-24 13:09:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01789', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 3, 1770000, 5310000, 1700000, 0, 210000, 'pcs'),
  ('TRX-A01789', 'PRD-A-HP-0085', 'HP REDMI Y91C 2/32 39237', 2, 750000, 1500000, 500000, 0, 500000, 'pcs'),
  ('TRX-A01789', 'PRD-A-KEL-0108', 'Beras 5kg', 3, 65000, 195000, 55000, 0, 30000, 'pcs'),
  ('TRX-A01789', 'PRD-A-AKS-0224', 'Case Samsung A03', 3, 48000, 144000, 35000, 0, 39000, 'pcs'),
  ('TRX-A01789', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 1, 73000, 73000, 58000, 0, 15000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00557', '2026-11-24 11:54:14+07:00', 'Umum', 'Admin', 1466000, 0, 1466000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100556', '', '', '', 169000, NULL, '2026-11-24 11:54:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00557', 'PRD-A-AKS-0177', 'Case Samsung A03', 2, 39000, 78000, 34000, 0, 10000, 'pcs'),
  ('TRX-A00557', 'PRD-A-HP-0464', 'HP OPPO A03 2/32 99189', 1, 1350000, 1350000, 1200000, 0, 150000, 'pcs'),
  ('TRX-A00557', 'PRD-A-KEL-0072', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00557', 'PRD-A-KEL-0168', 'Teh celup', 3, 6000, 18000, 4000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01068', '2026-11-24 11:51:42+07:00', 'Umum', 'Admin', 11096000, 0, 5548000, 5548000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101067', '', '', '', 1269000, NULL, '2026-11-24 11:51:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01068', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 1, 1220000, 1220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01068', 'PRD-A-KEL-0176', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01068', 'PRD-A-AKS-0099', 'Tempered Glass Xiaomi', 3, 27000, 81000, 16000, 0, 33000, 'pcs'),
  ('TRX-A01068', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 2, 1050000, 2100000, 900000, 0, 300000, 'pcs'),
  ('TRX-A01068', 'PRD-A-HP-0181', 'HP INFINIX Y20 4/128 79013', 3, 1870000, 5610000, 1700000, 0, 510000, 'pcs'),
  ('TRX-A01068', 'PRD-A-HP-0308', 'HP SAMSUNG 9A 8/256 25170', 2, 970000, 1940000, 900000, 0, 140000, 'pcs'),
  ('TRX-A01068', 'PRD-A-KEL-0094', 'Baju anak', 3, 35000, 105000, 15000, 0, 60000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01681', '2026-11-24 11:41:06+07:00', 'Sri Wahyuni', 'Admin', 6583000, 0, 6583000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101680', '', '', '', 848000, NULL, '2026-11-24 11:41:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01681', 'PRD-A-AKS-0070', 'Voucher Telkomsel 5GB', 2, 64000, 128000, 51000, 0, 26000, 'pcs'),
  ('TRX-A01681', 'PRD-A-AKS-0122', 'Voucher Telkomsel 10GB', 2, 55000, 110000, 49000, 0, 12000, 'pcs'),
  ('TRX-A01681', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 1, 2720000, 2720000, 2600000, 0, 120000, 'pcs'),
  ('TRX-A01681', 'PRD-A-HP-0108', 'HP VIVO A57 2/16 41363', 2, 540000, 1080000, 300000, 0, 480000, 'pcs'),
  ('TRX-A01681', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 3, 31000, 93000, 17000, 0, 42000, 'pcs'),
  ('TRX-A01681', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 2, 1170000, 2340000, 1100000, 0, 140000, 'pcs'),
  ('TRX-A01681', 'PRD-A-KEL-0196', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01681', 'PRD-A-AKS-0002', 'Kabel Data Type-C', 2, 46000, 92000, 35000, 0, 22000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01637', '2026-11-24 11:32:29+07:00', 'Agus Wijaya 4', 'Admin', 327000, 0, 327000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101636', '', '', '', 68500, NULL, '2026-11-24 11:32:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01637', 'PRD-A-KEL-0140', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A01637', 'PRD-A-AKS-0094', 'Kabel Charger 2m', 1, 27000, 27000, 13000, 0, 14000, 'pcs'),
  ('TRX-A01637', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 1, 41000, 41000, 37000, 0, 4000, 'pcs'),
  ('TRX-A01637', 'PRD-A-EDGE-TIER', 'Kabel Data Tier (harga jumlah)', 2, 15000, 30000, 8000, 0, 14000, 'pcs'),
  ('TRX-A01637', 'PRD-A-AKS-0084', 'Memory Card 64GB', 2, 95000, 190000, 82000, 0, 26000, 'pcs'),
  ('TRX-A01637', 'PRD-A-AKS-0198', 'Batre Oppo A57', 2, 19000, 38000, 14000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00735', '2026-11-24 11:24:13+07:00', 'Rudi Hartono 2', 'Admin', 8558000, 0, 8558000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100734', '', '', '', 488000, NULL, '2026-11-24 11:24:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00735', 'PRD-A-HP-0504', 'HP REALME 9A 2/32 79612', 3, 1160000, 3480000, 1100000, 0, 180000, 'pcs'),
  ('TRX-A00735', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 2, 30000, 60000, 17000, 0, 26000, 'pcs'),
  ('TRX-A00735', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 1, 2290000, 2290000, 2200000, 0, 90000, 'pcs'),
  ('TRX-A00735', 'PRD-A-KEL-0046', 'Sabun cuci', 1, 8000, 8000, 6000, 0, 2000, 'pcs'),
  ('TRX-A00735', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00735', 'PRD-A-HP-0295', 'HP ITEL J5 3/64 38466', 1, 1450000, 1450000, 1400000, 0, 50000, 'pcs'),
  ('TRX-A00735', 'PRD-A-HP-0208', 'HP VIVO Y91C 2/32 89547', 1, 1200000, 1200000, 1100000, 0, 100000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00417', '2026-11-24 11:23:41+07:00', 'Umum', 'Admin', 80000, 0, 80000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100416', '', '', '', 20000, NULL, '2026-11-24 11:23:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00417', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 2, 32000, 64000, 24000, 0, 16000, 'pcs'),
  ('TRX-A00417', 'PRD-A-KEL-0041', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01322', '2026-11-24 11:23:00+07:00', 'Siti Aisyah', 'Admin', 5938000, 0, 5938000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101321', '', '', '', 407000, NULL, '2026-11-24 11:23:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01322', 'PRD-A-AKS-0082', 'Case Redmi 9A', 1, 26000, 26000, 23000, 0, 3000, 'pcs'),
  ('TRX-A01322', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 1, 590000, 590000, 400000, 0, 190000, 'pcs'),
  ('TRX-A01322', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 3, 1770000, 5310000, 1700000, 0, 210000, 'pcs'),
  ('TRX-A01322', 'PRD-A-KEL-0109', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01817', '2026-11-24 11:10:57+07:00', 'Nur Halimah', 'Admin', 251000, 0, 251000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101816', '', '', '', 75000, NULL, '2026-11-24 11:10:57+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01817', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A01817', 'PRD-A-AKS-0017', 'Kartu Perdana Indosat', 3, 29000, 87000, 15000, 0, 42000, 'pcs'),
  ('TRX-A01817', 'PRD-A-AKS-0046', 'Case Samsung A03', 3, 38000, 114000, 35000, 0, 9000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00261', '2026-11-24 11:02:14+07:00', 'Ayu Lestari 2', 'Admin', 4980000, 0, 2490000, 2490000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100260', '', '', '', 480000, NULL, '2026-11-24 11:02:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00261', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00114', '2026-11-24 10:41:12+07:00', 'Umum', 'Admin', 83000, 0, 83000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100113', '', '', '', 11400, NULL, '2026-11-24 10:41:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00114', 'PRD-A-AKS-0063', 'Case Samsung A03', 2, 40000, 80000, 35000, 0, 10000, 'pcs'),
  ('TRX-A00114', 'PRD-A-KEL-0076', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00696', '2026-11-24 10:37:23+07:00', 'Rudi Hartono 4', 'Admin', 13918000, 0, 6959000, 6959000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100695', '', '', '', 1930000, NULL, '2026-11-24 10:37:23+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00696', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 2, 1800000, 3600000, 1600000, 0, 400000, 'pcs'),
  ('TRX-A00696', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 3, 2350000, 7050000, 2100000, 0, 750000, 'pcs'),
  ('TRX-A00696', 'PRD-A-HP-0519', 'HP ITEL A16 4/64 82227', 3, 1050000, 3150000, 800000, 0, 750000, 'pcs'),
  ('TRX-A00696', 'PRD-A-AKS-0115', 'Tempered Glass Samsung', 2, 20000, 40000, 9000, 0, 22000, 'pcs'),
  ('TRX-A00696', 'PRD-A-AKS-0028', 'Kabel Charger 2m', 2, 39000, 78000, 35000, 0, 8000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01091', '2026-11-24 10:09:59+07:00', 'Sri Wahyuni 5', 'Admin', 10718000, 0, 10718000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101090', '', '', '', 1595000, NULL, '2026-11-24 10:09:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01091', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 3, 590000, 1770000, 400000, 0, 570000, 'pcs'),
  ('TRX-A01091', 'PRD-A-AKS-0230', 'Handsfree Oppo', 2, 52000, 104000, 38000, 0, 28000, 'pcs'),
  ('TRX-A01091', 'PRD-A-KEL-0084', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A01091', 'PRD-A-AKS-0064', 'Case Redmi 9A', 3, 38000, 114000, 25000, 0, 39000, 'pcs'),
  ('TRX-A01091', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 2, 1220000, 2440000, 1000000, 0, 440000, 'pcs'),
  ('TRX-A01091', 'PRD-A-HP-0070', 'HP SAMSUNG 9A 4/128 90887', 3, 2070000, 6210000, 1900000, 0, 510000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00871', '2026-11-24 09:48:35+07:00', 'Umum', 'Admin', 1141000, 0, 1141000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100870', '', '', '', 262000, NULL, '2026-11-24 09:48:35+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00871', 'PRD-A-AKS-0044', 'Kabel Data Lightning', 1, 46000, 46000, 33000, 0, 13000, 'pcs'),
  ('TRX-A00871', 'PRD-A-KEL-0085', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00871', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A00871', 'PRD-A-KEL-0159', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01895', '2026-11-24 09:32:32+07:00', 'Umum', 'Admin', 2085000, 0, 2085000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101894', '', '', '', 225000, NULL, '2026-11-24 09:32:32+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01895', 'PRD-A-HP-0006', 'HP OPPO HOT30i 8/256 63751', 1, 1990000, 1990000, 1800000, 0, 190000, 'pcs'),
  ('TRX-A01895', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 1, 41000, 41000, 34000, 0, 7000, 'pcs'),
  ('TRX-A01895', 'PRD-A-AKS-0051', 'Kartu Perdana Indosat', 2, 27000, 54000, 13000, 0, 28000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00842', '2026-11-24 09:31:05+07:00', 'Dewi Lestari 4', 'Admin', 2231000, 0, 2231000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100841', '', '', '', 230500, NULL, '2026-11-24 09:31:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00842', 'PRD-A-KEL-0031', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00842', 'PRD-A-HP-0033', 'HP REDMI V5S 4/64 81807', 1, 2230000, 2230000, 2000000, 0, 230000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00776', '2026-11-24 09:20:50+07:00', 'Maya Putri 5', 'Admin', 15136000, 0, 15136000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100775', '', '', '', 1864000, NULL, '2026-11-24 09:20:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00776', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 2, 560000, 1120000, 400000, 0, 320000, 'pcs'),
  ('TRX-A00776', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 2, 2730000, 5460000, 2500000, 0, 460000, 'pcs'),
  ('TRX-A00776', 'PRD-A-HP-0364', 'HP INFINIX HOT30i 3/32 21827', 2, 2800000, 5600000, 2600000, 0, 400000, 'pcs'),
  ('TRX-A00776', 'PRD-A-AKS-0011', 'Voucher Telkomsel 10GB', 1, 35000, 35000, 21000, 0, 14000, 'pcs'),
  ('TRX-A00776', 'PRD-A-AKS-0231', 'Case Samsung A03', 2, 34000, 68000, 27000, 0, 14000, 'pcs'),
  ('TRX-A00776', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 3, 910000, 2730000, 700000, 0, 630000, 'pcs'),
  ('TRX-A00776', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A00776', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 27000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00738', '2026-11-24 09:09:26+07:00', 'Umum', 'Admin', 12145500, 0, 12145500, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100737', '', '', '', 935000, NULL, '2026-11-24 09:09:26+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00738', 'PRD-A-KEL-0186', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A00738', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A00738', 'PRD-A-HP-0161', 'HP REDMI C15 2/32 75739', 3, 1670000, 5010000, 1600000, 0, 210000, 'pcs'),
  ('TRX-A00738', 'PRD-A-HP-0516', 'HP OPPO Y91C 2/16 44748', 2, 3040000, 6080000, 2800000, 0, 480000, 'pcs'),
  ('TRX-A00738', 'PRD-A-KEL-0127', 'Bakwan beku 250gr', 1, 12000, 12000, 8000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00069', '2026-11-24 08:48:54+07:00', 'Ayu Lestari', 'Admin', 98000, 0, 98000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100068', '', '', '', 18000, NULL, '2026-11-24 08:48:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00069', 'PRD-A-AKS-0192', 'Handsfree Oppo', 2, 49000, 98000, 40000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01573', '2026-11-24 08:34:06+07:00', 'Intan Permata', 'Admin', 5764000, 0, 2882000, 2882000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101572', '', '', '', 655000, NULL, '2026-11-24 08:34:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01573', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 1, 1050000, 1050000, 900000, 0, 150000, 'pcs'),
  ('TRX-A01573', 'PRD-A-KEL-0119', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs'),
  ('TRX-A01573', 'PRD-A-HP-0381', 'HP VIVO Y55S 3/32 26239', 2, 2350000, 4700000, 2100000, 0, 500000, 'pcs'),
  ('TRX-A01573', 'PRD-A-KEL-0022', 'Buku gambar', 1, 6000, 6000, 4000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01022', '2026-11-24 08:20:52+07:00', 'Umum', 'Admin', 4335000, 0, 0, 4335000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101021', '', '', '', 120000, NULL, '2026-11-24 08:20:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01022', 'PRD-A-HP-0440', 'HP REDMI C11 4/128 25814', 2, 2150000, 4300000, 2100000, 0, 100000, 'pcs'),
  ('TRX-A01022', 'PRD-A-KEL-0087', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00785', '2026-11-23 20:59:58+07:00', 'Intan Permata 4', 'Admin', 4770000, 0, 4770000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100784', '', '', '', 570000, NULL, '2026-11-23 20:59:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00785', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01629', '2026-11-23 20:59:47+07:00', 'Umum', 'Admin', 6642000, 0, 0, 6642000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101628', '', '', '', 1050000, NULL, '2026-11-23 20:59:47+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01629', 'PRD-A-AKS-0023', 'Memory Card 32GB', 2, 53000, 106000, 45000, 0, 16000, 'pcs'),
  ('TRX-A01629', 'PRD-A-AKS-0036', 'Tempered Glass Oppo', 2, 22000, 44000, 10000, 0, 24000, 'pcs'),
  ('TRX-A01629', 'PRD-A-HP-0436', 'HP SAMSUNG Y55S 2/32 70146', 2, 1560000, 3120000, 1400000, 0, 320000, 'pcs'),
  ('TRX-A01629', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 2, 18000, 36000, 16000, 0, 4000, 'pcs'),
  ('TRX-A01629', 'PRD-A-HP-0323', 'HP OPPO 6A 2/32 74650', 1, 1620000, 1620000, 1400000, 0, 220000, 'pcs'),
  ('TRX-A01629', 'PRD-A-AKS-0033', 'Handsfree Xiaomi', 2, 33000, 66000, 25000, 0, 16000, 'pcs'),
  ('TRX-A01629', 'PRD-A-HP-0413', 'HP ITEL V7 3/64 69232', 3, 550000, 1650000, 400000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01405', '2026-11-23 20:46:24+07:00', 'Umum', 'Admin', 6749000, 0, 6749000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101404', '', '', '', 678000, NULL, '2026-11-23 20:46:24+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01405', 'PRD-A-KEL-0045', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs'),
  ('TRX-A01405', 'PRD-A-KEL-0187', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A01405', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 3, 2220000, 6660000, 2000000, 0, 660000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01166', '2026-11-23 20:41:55+07:00', 'Umum', 'Admin', 1674000, 0, 1674000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101165', '', '', '', 258000, NULL, '2026-11-23 20:41:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01166', 'PRD-A-AKS-0234', 'Case Samsung A03', 1, 24000, 24000, 16000, 0, 8000, 'pcs'),
  ('TRX-A01166', 'PRD-A-HP-0151', 'HP INFINIX V7 3/32 82158', 1, 1650000, 1650000, 1400000, 0, 250000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00712', '2026-11-23 20:16:15+07:00', 'Nur Halimah', 'Admin', 1347000, 0, 1347000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100711', '', '', '', 276000, NULL, '2026-11-23 20:16:15+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00712', 'PRD-A-KEL-0013', 'Sabun mandi', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00712', 'PRD-A-AKS-0171', 'Tempered Glass Xiaomi', 2, 24000, 48000, 16000, 0, 16000, 'pcs'),
  ('TRX-A00712', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 1, 20000, 20000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00712', 'PRD-A-KEL-0020', 'Buku gambar', 2, 6000, 12000, 4000, 0, 4000, 'pcs'),
  ('TRX-A00712', 'PRD-A-HP-0542', 'HP VIVO V7 4/64 19667', 2, 620000, 1240000, 500000, 0, 240000, 'pcs'),
  ('TRX-A00712', 'PRD-A-KEL-0034', 'Buku tulis', 3, 5000, 15000, 3000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00262', '2026-11-23 20:15:58+07:00', 'Lilis Suryani 3', 'Admin', 12377000, 0, 12377000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100261', '', '', '', 1037500, NULL, '2026-11-23 20:15:58+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00262', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 1, 1040000, 1040000, 800000, 0, 240000, 'pcs'),
  ('TRX-A00262', 'PRD-A-HP-0168', 'HP OPPO 5A 2/16 65192', 3, 2050000, 6150000, 2000000, 0, 150000, 'pcs'),
  ('TRX-A00262', 'PRD-A-KEL-0085', 'Susu UHT 1L', 1, 20000, 20000, 17000, 0, 3000, 'pcs'),
  ('TRX-A00262', 'PRD-A-KEL-0050', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs'),
  ('TRX-A00262', 'PRD-A-HP-0029', 'HP VIVO J5 2/16 68250', 3, 1710000, 5130000, 1500000, 0, 630000, 'pcs'),
  ('TRX-A00262', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 2, 18000, 36000, 11000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01957', '2026-11-23 20:08:55+07:00', 'Joko Prasetyo 4', 'Admin', 15443000, 0, 15443000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101956', '', '', '', 632500, NULL, '2026-11-23 20:08:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01957', 'PRD-A-KEL-0029', 'Saus sambal', 3, 12000, 36000, 9000, 0, 9000, 'pcs'),
  ('TRX-A01957', 'PRD-A-HP-0269', 'HP SAMSUNG Y55S 8/256 22924', 3, 2500000, 7500000, 2400000, 0, 300000, 'pcs'),
  ('TRX-A01957', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 3, 2600000, 7800000, 2500000, 0, 300000, 'pcs'),
  ('TRX-A01957', 'PRD-A-KEL-0043', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01957', 'PRD-A-KEL-0048', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A01957', 'PRD-A-KEL-0045', 'Beras 5kg', 1, 65000, 65000, 55000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01071', '2026-11-23 20:07:34+07:00', 'Fajar Nugroho 3', 'Admin', 10000, 0, 10000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101070', '', '', '', 2000, NULL, '2026-11-23 20:07:34+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01071', 'PRD-A-KEL-0175', 'Snack wafer', 1, 10000, 10000, 8000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00067', '2026-11-23 19:55:27+07:00', 'Budi Santoso 5', 'Admin', 8334000, 0, 8334000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100066', '', '', '', 605000, NULL, '2026-11-23 19:55:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00067', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 1, 21000, 21000, 17000, 0, 4000, 'pcs'),
  ('TRX-A00067', 'PRD-A-AKS-0082', 'Case Redmi 9A', 2, 26000, 52000, 23000, 0, 6000, 'pcs'),
  ('TRX-A00067', 'PRD-A-EDGE-SKU', 'Voucher Telkomsel 10GB (ada barcode)', 3, 55000, 165000, 48000, 0, 21000, 'pcs'),
  ('TRX-A00067', 'PRD-A-HP-0265', 'HP SAMSUNG C11 4/128 76478', 1, 2600000, 2600000, 2500000, 0, 100000, 'pcs'),
  ('TRX-A00067', 'PRD-A-HP-0320', 'HP REDMI A17 2/16 25435', 2, 2730000, 5460000, 2500000, 0, 460000, 'pcs'),
  ('TRX-A00067', 'PRD-A-AKS-0194', 'Kartu Perdana Telkomsel', 2, 18000, 36000, 11000, 0, 14000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00040', '2026-11-23 19:32:40+07:00', 'Nur Halimah 2', 'Admin', 6419000, 0, 6419000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100039', '', '', '', 1122000, NULL, '2026-11-23 19:32:40+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00040', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 2, 1940000, 3880000, 1700000, 0, 480000, 'pcs'),
  ('TRX-A00040', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 1, 29000, 29000, 25000, 0, 4000, 'pcs'),
  ('TRX-A00040', 'PRD-A-KEL-0082', 'Minyak goreng 1L', 2, 40000, 80000, 36000, 0, 8000, 'pcs'),
  ('TRX-A00040', 'PRD-A-HP-0330', 'HP REDMI C15 4/64 69727', 3, 810000, 2430000, 600000, 0, 630000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01457', '2026-11-23 18:45:45+07:00', 'Dedi Supriadi 3', 'Admin', 6000, 0, 6000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101456', '', '', '', 2000, NULL, '2026-11-23 18:45:45+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01457', 'PRD-A-KEL-0095', 'Pulpen', 2, 3000, 6000, 2000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01786', '2026-11-23 18:33:02+07:00', 'Rudi Hartono 2', 'Admin', 812000, 0, 406000, 406000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101785', '', '', '', 302000, NULL, '2026-11-23 18:33:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01786', 'PRD-A-HP-0432', 'HP ITEL S23 3/32 64313', 1, 520000, 520000, 300000, 0, 220000, 'pcs'),
  ('TRX-A01786', 'PRD-A-AKS-0074', 'Handsfree Oppo', 3, 49000, 147000, 39000, 0, 30000, 'pcs'),
  ('TRX-A01786', 'PRD-A-AKS-0198', 'Batre Oppo A57', 3, 19000, 57000, 14000, 0, 15000, 'pcs'),
  ('TRX-A01786', 'PRD-A-AKS-0218', 'Tempered Glass Oppo', 2, 25000, 50000, 13000, 0, 24000, 'pcs'),
  ('TRX-A01786', 'PRD-A-KEL-0092', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01786', 'PRD-A-AKS-0016', 'Kartu Perdana XL', 2, 14000, 28000, 9000, 0, 10000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01076', '2026-11-23 18:13:38+07:00', 'Fajar Nugroho 3', 'Admin', 13344000, 0, 13344000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101075', '', '', '', 1661000, NULL, '2026-11-23 18:13:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01076', 'PRD-A-HP-0113', 'HP REDMI J5 2/32 14310', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A01076', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 1, 72000, 72000, 59000, 0, 13000, 'pcs'),
  ('TRX-A01076', 'PRD-A-HP-0243', 'HP SAMSUNG C11 3/64 94574', 2, 1880000, 3760000, 1800000, 0, 160000, 'pcs'),
  ('TRX-A01076', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs'),
  ('TRX-A01076', 'PRD-A-AKS-0065', 'Kabel Data Type-C', 1, 32000, 32000, 24000, 0, 8000, 'pcs'),
  ('TRX-A01076', 'PRD-A-HP-0444', 'HP REALME A15 8/256 82771', 1, 1590000, 1590000, 1400000, 0, 190000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00035', '2026-11-23 18:11:02+07:00', 'Budi Santoso', 'Admin', 13028000, 0, 13028000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100034', '', '', '', 2143000, NULL, '2026-11-23 18:11:02+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00035', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 2, 740000, 1480000, 500000, 0, 480000, 'pcs'),
  ('TRX-A00035', 'PRD-A-HP-0539', 'HP INFINIX Y91C 4/128 19282', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs'),
  ('TRX-A00035', 'PRD-A-HP-0452', 'HP VIVO HOT30i 4/128 35393', 1, 650000, 650000, 400000, 0, 250000, 'pcs'),
  ('TRX-A00035', 'PRD-A-HP-0456', 'HP REDMI 6A 3/64 88464', 3, 1940000, 5820000, 1700000, 0, 720000, 'pcs'),
  ('TRX-A00035', 'PRD-A-AKS-0088', 'Case Redmi 9A', 2, 43000, 86000, 34000, 0, 18000, 'pcs'),
  ('TRX-A00035', 'PRD-A-AKS-0032', 'Batre Nokia BL-5C', 3, 54000, 162000, 39000, 0, 45000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00287', '2026-11-23 18:08:41+07:00', 'Umum', 'Admin', 1580000, 0, 790000, 790000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100286', '', '', '', 380000, NULL, '2026-11-23 18:08:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00287', 'PRD-A-HP-0120', 'HP REALME V5S 3/32 94515', 2, 790000, 1580000, 600000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00806', '2026-11-23 17:42:59+07:00', 'Dedi Supriadi 5', 'Admin', 2001000, 0, 1000500, 1000500, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100805', '', '', '', 655000, NULL, '2026-11-23 17:42:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00806', 'PRD-A-KEL-0053', 'Kecap 600ml', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A00806', 'PRD-A-KEL-0165', 'Deterjen', 3, 10000, 30000, 7000, 0, 9000, 'pcs'),
  ('TRX-A00806', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 2, 590000, 1180000, 400000, 0, 380000, 'pcs'),
  ('TRX-A00806', 'PRD-A-HP-0245', 'HP NOKIA C11 4/64 32903', 1, 640000, 640000, 400000, 0, 240000, 'pcs'),
  ('TRX-A00806', 'PRD-A-AKS-0222', 'Case Redmi 9A', 1, 46000, 46000, 35000, 0, 11000, 'pcs'),
  ('TRX-A00806', 'PRD-A-KEL-0191', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00930', '2026-11-23 17:32:22+07:00', 'Umum', 'Admin', 8947000, 0, 8947000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100929', '', '', '', 774000, NULL, '2026-11-23 17:32:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00930', 'PRD-A-KEL-0075', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs'),
  ('TRX-A00930', 'PRD-A-AKS-0185', 'Tempered Glass Oppo', 1, 18000, 18000, 10000, 0, 8000, 'pcs'),
  ('TRX-A00930', 'PRD-A-HP-0328', 'HP REALME A16 3/64 55992', 3, 2930000, 8790000, 2700000, 0, 690000, 'pcs'),
  ('TRX-A00930', 'PRD-A-AKS-0098', 'Tempered Glass Oppo', 3, 23000, 69000, 11000, 0, 36000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00886', '2026-11-23 17:32:06+07:00', 'Agus Wijaya 5', 'Admin', 3387000, 0, 3387000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100885', '', '', '', 406000, NULL, '2026-11-23 17:32:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00886', 'PRD-A-HP-0255', 'HP REDMI Y55S 3/32 70984', 1, 670000, 670000, 500000, 0, 170000, 'pcs'),
  ('TRX-A00886', 'PRD-A-AKS-0169', 'Handsfree Oppo', 2, 29000, 58000, 14000, 0, 30000, 'pcs'),
  ('TRX-A00886', 'PRD-A-AKS-0219', 'Kartu Perdana Telkomsel', 1, 29000, 29000, 25000, 0, 4000, 'pcs'),
  ('TRX-A00886', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs'),
  ('TRX-A00886', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A00886', 'PRD-A-KEL-0032', 'Deterjen', 1, 10000, 10000, 7000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01615', '2026-11-23 17:20:46+07:00', 'Eko Saputra 4', 'Admin', 5876000, 0, 2938000, 2938000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101614', '', '', '', 820000, NULL, '2026-11-23 17:20:46+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01615', 'PRD-A-HP-0312', 'HP VIVO 6A 2/32 29156', 3, 1700000, 5100000, 1500000, 0, 600000, 'pcs'),
  ('TRX-A01615', 'PRD-A-HP-0391', 'HP INFINIX A03 3/32 13495', 1, 670000, 670000, 500000, 0, 170000, 'pcs'),
  ('TRX-A01615', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 1, 36000, 36000, 26000, 0, 10000, 'pcs'),
  ('TRX-A01615', 'PRD-A-KEL-0087', 'Baju anak', 2, 35000, 70000, 15000, 0, 40000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00338', '2026-11-23 17:16:38+07:00', 'Umum', 'Admin', 2080000, 0, 1040000, 1040000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100337', '', '', '', 280000, NULL, '2026-11-23 17:16:38+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00338', 'PRD-A-HP-0087', 'HP INFINIX 5A 2/32 30843', 2, 1040000, 2080000, 900000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01264', '2026-11-23 17:04:39+07:00', 'Rudi Hartono', 'Admin', 8946000, 0, 8946000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101263', '', '', '', 1134000, NULL, '2026-11-23 17:04:39+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01264', 'PRD-A-HP-0164', 'HP ITEL V7 4/64 47534', 3, 1810000, 5430000, 1600000, 0, 630000, 'pcs'),
  ('TRX-A01264', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 2, 1750000, 3500000, 1500000, 0, 500000, 'pcs'),
  ('TRX-A01264', 'PRD-A-KEL-0190', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01742', '2026-11-23 16:43:14+07:00', 'Umum', 'Admin', 1075000, 0, 0, 1075000, 'Debit', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101741', '', '', '', 414900, NULL, '2026-11-23 16:43:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01742', 'PRD-A-KEL-0027', 'Pensil', 1, 2000, 2000, 1500, 0, 500, 'pcs'),
  ('TRX-A01742', 'PRD-A-KEL-0010', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01742', 'PRD-A-AKS-0039', 'Tempered Glass Vivo', 3, 17000, 51000, 14000, 0, 9000, 'pcs'),
  ('TRX-A01742', 'PRD-A-KEL-0006', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01742', 'PRD-A-KEL-0125', 'Kecap 600ml', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01742', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 2, 500000, 1000000, 300000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00463', '2026-11-23 16:41:11+07:00', 'Ayu Lestari 3', 'Admin', 8280000, 0, 8280000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100462', '', '', '', 780000, NULL, '2026-11-23 16:41:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00463', 'PRD-A-HP-0332', 'HP INFINIX Y53 8/256 80903', 3, 2290000, 6870000, 2100000, 0, 570000, 'pcs'),
  ('TRX-A00463', 'PRD-A-HP-0230', 'HP SAMSUNG HOT30i 4/128 66957', 1, 1410000, 1410000, 1200000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01838', '2026-11-23 16:34:00+07:00', 'Sri Wahyuni 5', 'Admin', 20000, 0, 20000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101837', '', '', '', 6000, NULL, '2026-11-23 16:34:00+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01838', 'PRD-A-KEL-0048', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00896', '2026-11-23 16:33:56+07:00', 'Umum', 'Admin', 60000, 0, 30000, 30000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100895', '', '', '', 39000, NULL, '2026-11-23 16:33:56+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00896', 'PRD-A-AKS-0026', 'Tempered Glass Oppo', 3, 20000, 60000, 7000, 0, 39000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00229', '2026-11-23 16:19:44+07:00', 'Umum', 'Admin', 10312000, 0, 5156000, 5156000, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100228', '', '', '', 1348000, NULL, '2026-11-23 16:19:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00229', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 1, 740000, 740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A00229', 'PRD-A-EDGE-H0', 'Barang Gratis (harga 0)', 3, 0, 0, 0, 0, 0, 'pcs'),
  ('TRX-A00229', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 1, 960000, 960000, 800000, 0, 160000, 'pcs'),
  ('TRX-A00229', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 3, 1770000, 5310000, 1700000, 0, 210000, 'pcs'),
  ('TRX-A00229', 'PRD-A-HP-0178', 'HP NOKIA A03 4/128 36828', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs'),
  ('TRX-A00229', 'PRD-A-AKS-0146', 'Memory Card 32GB', 2, 91000, 182000, 82000, 0, 18000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01970', '2026-11-23 16:18:17+07:00', 'Andi Kurnia 5', 'Admin', 2206500, 0, 1103250, 1103250, 'Tunai', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101969', '', '', '', 96400, NULL, '2026-11-23 16:18:17+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01970', 'PRD-A-KEL-0023', 'Mie instan', 1, 3500, 3500, 2500, 0, 1000, 'pcs'),
  ('TRX-A01970', 'PRD-A-AKS-0102', 'Case Vivo Y20', 2, 36000, 72000, 30000, 0, 12000, 'pcs'),
  ('TRX-A01970', 'PRD-A-KEL-0076', 'Kopi sachet', 2, 1500, 3000, 800, 0, 1400, 'pcs'),
  ('TRX-A01970', 'PRD-A-HP-0508', 'HP REDMI 9C 4/128 88002', 1, 2070000, 2070000, 2000000, 0, 70000, 'pcs'),
  ('TRX-A01970', 'PRD-A-KEL-0096', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A01970', 'PRD-A-KEL-0144', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs'),
  ('TRX-A01970', 'PRD-A-KEL-0172', 'Sabun cuci', 2, 8000, 16000, 6000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00569', '2026-11-23 16:17:52+07:00', 'Hendra Gunawan 3', 'Admin', 6762000, 0, 6762000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100568', '', '', '', 627000, NULL, '2026-11-23 16:17:52+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00569', 'PRD-A-KEL-0093', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A00569', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A00569', 'PRD-A-AKS-0064', 'Case Redmi 9A', 3, 38000, 114000, 25000, 0, 39000, 'pcs'),
  ('TRX-A00569', 'PRD-A-HP-0285', 'HP VIVO 9C 2/32 34276', 1, 2880000, 2880000, 2700000, 0, 180000, 'pcs'),
  ('TRX-A00569', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 2, 780000, 1560000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00569', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 1, 36000, 36000, 26000, 0, 10000, 'pcs'),
  ('TRX-A00569', 'PRD-A-AKS-0050', 'Case Redmi 9A', 2, 34000, 68000, 26000, 0, 16000, 'pcs'),
  ('TRX-A00569', 'PRD-A-KEL-0055', 'Gula pasir 1kg', 3, 18000, 54000, 16000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00841', '2026-11-23 16:15:22+07:00', 'Ayu Lestari', 'Admin', 4524000, 0, 4524000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100840', '', '', '', 767000, NULL, '2026-11-23 16:15:22+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00841', 'PRD-A-AKS-0206', 'Tempered Glass Vivo', 1, 15000, 15000, 7000, 0, 8000, 'pcs'),
  ('TRX-A00841', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 1, 1050000, 1050000, 900000, 0, 150000, 'pcs'),
  ('TRX-A00841', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 2, 430000, 860000, 300000, 0, 260000, 'pcs'),
  ('TRX-A00841', 'PRD-A-AKS-0112', 'Batre Nokia BL-4C', 1, 41000, 41000, 34000, 0, 7000, 'pcs'),
  ('TRX-A00841', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 2, 1270000, 2540000, 1100000, 0, 340000, 'pcs'),
  ('TRX-A00841', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00942', '2026-11-23 16:07:55+07:00', 'Umum', 'Admin', 9803000, 0, 4901500, 4901500, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100941', '', '', '', 1512000, NULL, '2026-11-23 16:07:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00942', 'PRD-A-AKS-0076', 'Handsfree Samsung', 1, 58000, 58000, 45000, 0, 13000, 'pcs'),
  ('TRX-A00942', 'PRD-A-AKS-0084', 'Memory Card 64GB', 3, 95000, 285000, 82000, 0, 39000, 'pcs'),
  ('TRX-A00942', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 3, 1800000, 5400000, 1600000, 0, 600000, 'pcs'),
  ('TRX-A00942', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 2, 1290000, 2580000, 1100000, 0, 380000, 'pcs'),
  ('TRX-A00942', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 2, 740000, 1480000, 500000, 0, 480000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00210', '2026-11-23 15:39:05+07:00', 'Umum', 'Admin', 2586000, 0, 2586000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100209', '', '', '', 165000, NULL, '2026-11-23 15:39:05+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00210', 'PRD-A-KEL-0069', 'Gula pasir 1kg', 1, 18000, 18000, 16000, 0, 2000, 'pcs'),
  ('TRX-A00210', 'PRD-A-HP-0149', 'HP OPPO Y16 3/32 48402', 2, 1280000, 2560000, 1200000, 0, 160000, 'pcs'),
  ('TRX-A00210', 'PRD-A-KEL-0128', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00388', '2026-11-23 15:38:06+07:00', 'Lilis Suryani 4', 'Admin', 180000, 0, 180000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100387', '', '', '', 36000, NULL, '2026-11-23 15:38:06+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00388', 'PRD-A-KEL-0192', 'Kecap 600ml', 2, 17000, 34000, 14000, 0, 6000, 'pcs'),
  ('TRX-A00388', 'PRD-A-AKS-0200', 'Voucher XL 10GB', 2, 73000, 146000, 58000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00769', '2026-11-23 15:34:41+07:00', 'Maya Putri 4', 'Admin', 2370000, 0, 2370000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100768', '', '', '', 246000, NULL, '2026-11-23 15:34:41+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00769', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 3, 780000, 2340000, 700000, 0, 240000, 'pcs'),
  ('TRX-A00769', 'PRD-A-KEL-0015', 'Roti tawar', 2, 15000, 30000, 12000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01815', '2026-11-23 15:31:42+07:00', 'Andi Kurnia 2', 'Admin', 14047000, 0, 14047000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101814', '', '', '', 1365000, NULL, '2026-11-23 15:31:42+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01815', 'PRD-A-HP-0044', 'HP OPPO HOT30i 3/64 35099', 1, 1220000, 1220000, 1000000, 0, 220000, 'pcs'),
  ('TRX-A01815', 'PRD-A-KEL-0104', 'Tissue 250s', 1, 10000, 10000, 7000, 0, 3000, 'pcs'),
  ('TRX-A01815', 'PRD-A-AKS-0115', 'Tempered Glass Samsung', 3, 20000, 60000, 9000, 0, 33000, 'pcs'),
  ('TRX-A01815', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 3, 1770000, 5310000, 1700000, 0, 210000, 'pcs'),
  ('TRX-A01815', 'PRD-A-HP-0111', 'HP OPPO A57 4/128 32620', 2, 2120000, 4240000, 1900000, 0, 440000, 'pcs'),
  ('TRX-A01815', 'PRD-A-KEL-0047', 'Susu UHT 1L', 2, 20000, 40000, 17000, 0, 6000, 'pcs'),
  ('TRX-A01815', 'PRD-A-AKS-0149', 'Case Samsung A03', 1, 17000, 17000, 14000, 0, 3000, 'pcs'),
  ('TRX-A01815', 'PRD-A-HP-0240', 'HP NOKIA S23 3/64 56004', 3, 1050000, 3150000, 900000, 0, 450000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00174', '2026-11-23 15:25:14+07:00', 'Intan Permata', 'Admin', 10449000, 0, 10449000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100173', '', '', '', 961000, NULL, '2026-11-23 15:25:14+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00174', 'PRD-A-HP-0367', 'HP REALME C3 2/16 49987', 1, 1660000, 1660000, 1500000, 0, 160000, 'pcs'),
  ('TRX-A00174', 'PRD-A-AKS-0009', 'Batre Nokia BL-5C', 1, 61000, 61000, 46000, 0, 15000, 'pcs'),
  ('TRX-A00174', 'PRD-A-KEL-0011', 'Buku gambar', 3, 6000, 18000, 4000, 0, 6000, 'pcs'),
  ('TRX-A00174', 'PRD-A-HP-0094', 'HP INFINIX Y20 8/256 25072', 3, 2390000, 7170000, 2300000, 0, 270000, 'pcs'),
  ('TRX-A00174', 'PRD-A-HP-0142', 'HP VIVO A57 3/32 10794', 2, 740000, 1480000, 500000, 0, 480000, 'pcs'),
  ('TRX-A00174', 'PRD-A-EDGE-KAT', 'Barang Tanpa Kategori', 3, 5000, 15000, 3000, 0, 6000, 'pcs'),
  ('TRX-A00174', 'PRD-A-AKS-0113', 'Tempered Glass Samsung', 3, 15000, 45000, 7000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00428', '2026-11-23 15:21:54+07:00', 'Joko Prasetyo 2', 'Admin', 4901000, 0, 4901000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100427', '', '', '', 646000, NULL, '2026-11-23 15:21:54+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00428', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 3, 1610000, 4830000, 1400000, 0, 630000, 'pcs'),
  ('TRX-A00428', 'PRD-A-KEL-0153', 'Minyak goreng 1L', 1, 40000, 40000, 36000, 0, 4000, 'pcs'),
  ('TRX-A00428', 'PRD-A-AKS-0071', 'Case Oppo A57', 1, 31000, 31000, 19000, 0, 12000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00097', '2026-11-23 15:05:16+07:00', 'Lilis Suryani 4', 'Admin', 4148000, 0, 2074000, 2074000, 'QRIS', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100096', '', '', '', 430000, NULL, '2026-11-23 15:05:16+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00097', 'PRD-A-AKS-0096', 'Voucher Telkomsel 10GB', 2, 74000, 148000, 59000, 0, 30000, 'pcs'),
  ('TRX-A00097', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 2, 2000000, 4000000, 1800000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00786', '2026-11-23 15:04:50+07:00', 'Fajar Nugroho 3', 'Admin', 11423000, 0, 11423000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100785', '', '', '', 2141500, NULL, '2026-11-23 15:04:50+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00786', 'PRD-A-HP-0242', 'HP SAMSUNG S23 2/32 14985', 3, 1040000, 3120000, 800000, 0, 720000, 'pcs'),
  ('TRX-A00786', 'PRD-A-HP-0091', 'HP ITEL Y16 3/32 83822', 1, 740000, 740000, 500000, 0, 240000, 'pcs'),
  ('TRX-A00786', 'PRD-A-KEL-0017', 'Roti tawar', 1, 15000, 15000, 12000, 0, 3000, 'pcs'),
  ('TRX-A00786', 'PRD-A-AKS-0165', 'Case Vivo Y20', 2, 43000, 86000, 31000, 0, 24000, 'pcs'),
  ('TRX-A00786', 'PRD-A-KEL-0099', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A00786', 'PRD-A-HP-0140', 'HP NOKIA Y20 2/16 47842', 3, 1750000, 5250000, 1500000, 0, 750000, 'pcs'),
  ('TRX-A00786', 'PRD-A-HP-0412', 'HP ITEL C11 4/64 65466', 2, 1100000, 2200000, 900000, 0, 400000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01757', '2026-11-23 14:59:12+07:00', 'Umum', 'Admin', 12252000, 0, 12252000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101756', '', '', '', 1536000, NULL, '2026-11-23 14:59:12+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01757', 'PRD-A-HP-0259', 'HP OPPO Y91C 8/256 41417', 3, 1390000, 4170000, 1200000, 0, 570000, 'pcs'),
  ('TRX-A01757', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01757', 'PRD-A-AKS-0174', 'Case Redmi 9A', 1, 41000, 41000, 26000, 0, 15000, 'pcs'),
  ('TRX-A01757', 'PRD-A-KEL-0009', 'Beras 5kg', 2, 65000, 130000, 55000, 0, 20000, 'pcs'),
  ('TRX-A01757', 'PRD-A-AKS-0199', 'Handsfree Xiaomi', 1, 38000, 38000, 29000, 0, 9000, 'pcs'),
  ('TRX-A01757', 'PRD-A-AKS-0095', 'Kartu Perdana Telkomsel', 3, 21000, 63000, 17000, 0, 12000, 'pcs'),
  ('TRX-A01757', 'PRD-A-HP-0141', 'HP SAMSUNG A17 4/64 63802', 3, 1150000, 3450000, 900000, 0, 750000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01598', '2026-11-23 14:54:10+07:00', 'Intan Permata', 'Admin', 26042000, 0, 0, 26042000, 'Transfer Bank', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101597', '', '', '', 2041000, NULL, '2026-11-23 14:54:10+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01598', 'PRD-A-KEL-0122', 'Sampo sachet', 2, 1000, 2000, 500, 0, 1000, 'pcs'),
  ('TRX-A01598', 'PRD-A-HP-0532', 'HP INFINIX C11 2/16 62760', 3, 1660000, 4980000, 1500000, 0, 480000, 'pcs'),
  ('TRX-A01598', 'PRD-A-HP-0150', 'HP OPPO Y55S 8/256 41252', 2, 1300000, 2600000, 1200000, 0, 200000, 'pcs'),
  ('TRX-A01598', 'PRD-A-HP-0218', 'HP REDMI 5A 3/64 66618', 2, 1700000, 3400000, 1600000, 0, 200000, 'pcs'),
  ('TRX-A01598', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 3, 2900000, 8700000, 2700000, 0, 600000, 'pcs'),
  ('TRX-A01598', 'PRD-A-HP-0174', 'HP REDMI Y55S 8/256 12670', 3, 1520000, 4560000, 1400000, 0, 360000, 'pcs'),
  ('TRX-A01598', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 1, 1800000, 1800000, 1600000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01279', '2026-11-23 14:53:53+07:00', 'D''Angelo Cell', 'Admin', 1180000, 0, 1180000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101278', '', '', '', 380000, NULL, '2026-11-23 14:53:53+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01279', 'PRD-A-HP-0399', 'HP REDMI 6A 3/32 31647', 2, 590000, 1180000, 400000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01250', '2026-11-23 14:48:28+07:00', 'Umum', 'Admin', 14935000, 0, 14935000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101249', '', '', '', 1499500, NULL, '2026-11-23 14:48:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01250', 'PRD-A-AKS-0208', 'Kartu Perdana Indosat', 2, 31000, 62000, 17000, 0, 28000, 'pcs'),
  ('TRX-A01250', 'PRD-A-HP-0189', 'HP REALME Y91C 4/64 33222', 1, 580000, 580000, 400000, 0, 180000, 'pcs'),
  ('TRX-A01250', 'PRD-A-HP-0298', 'HP NOKIA Y16 3/32 15191', 2, 1270000, 2540000, 1100000, 0, 340000, 'pcs'),
  ('TRX-A01250', 'PRD-A-HP-0355', 'HP REALME Y91C 2/32 52446', 1, 1850000, 1850000, 1600000, 0, 250000, 'pcs'),
  ('TRX-A01250', 'PRD-A-HP-0448', 'HP NOKIA Y55S 4/64 16281', 1, 2200000, 2200000, 2000000, 0, 200000, 'pcs'),
  ('TRX-A01250', 'PRD-A-KEL-0140', 'Sampo sachet', 3, 1000, 3000, 500, 0, 1500, 'pcs'),
  ('TRX-A01250', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 1, 830000, 830000, 600000, 0, 230000, 'pcs'),
  ('TRX-A01250', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 3, 2290000, 6870000, 2200000, 0, 270000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01608', '2026-11-23 14:38:28+07:00', 'Fajar Nugroho', 'Admin', 8138000, 0, 0, 8138000, 'Tunai', 'Belum Dibayar', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101607', '', '', '', 1105000, NULL, '2026-11-23 14:38:28+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01608', 'PRD-A-KEL-0032', 'Deterjen', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01608', 'PRD-A-KEL-0114', 'Tissue 250s', 2, 10000, 20000, 7000, 0, 6000, 'pcs'),
  ('TRX-A01608', 'PRD-A-HP-0039', 'HP REDMI 9C 2/32 75679', 1, 910000, 910000, 700000, 0, 210000, 'pcs'),
  ('TRX-A01608', 'PRD-A-HP-0363', 'HP OPPO C11 2/32 37019', 1, 660000, 660000, 500000, 0, 160000, 'pcs'),
  ('TRX-A01608', 'PRD-A-HP-0406', 'HP REDMI Y55S 4/128 92726', 2, 2760000, 5520000, 2600000, 0, 320000, 'pcs'),
  ('TRX-A01608', 'PRD-A-HP-0027', 'HP VIVO A57 3/32 47117', 2, 500000, 1000000, 300000, 0, 400000, 'pcs'),
  ('TRX-A01608', 'PRD-A-KEL-0088', 'Air mineral 600ml', 2, 4000, 8000, 2500, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01914', '2026-11-23 14:37:11+07:00', 'Umum', 'Admin', 9150000, 0, 9150000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101913', '', '', '', 950000, NULL, '2026-11-23 14:37:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01914', 'PRD-A-HP-0130', 'HP REDMI 5A 2/16 17035', 3, 1320000, 3960000, 1200000, 0, 360000, 'pcs'),
  ('TRX-A01914', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 3, 670000, 2010000, 600000, 0, 210000, 'pcs'),
  ('TRX-A01914', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 2, 1590000, 3180000, 1400000, 0, 380000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01272', '2026-11-23 14:12:36+07:00', 'Dewi Lestari 3', 'Admin', 10027000, 0, 10027000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101271', '', '', '', 385000, NULL, '2026-11-23 14:12:36+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01272', 'PRD-A-AKS-0126', 'Voucher XL 10GB', 1, 47000, 47000, 42000, 0, 5000, 'pcs'),
  ('TRX-A01272', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 2, 2180000, 4360000, 2100000, 0, 160000, 'pcs'),
  ('TRX-A01272', 'PRD-A-HP-0394', 'HP INFINIX Y55S 3/64 67095', 2, 2810000, 5620000, 2700000, 0, 220000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00767', '2026-11-23 13:49:04+07:00', 'Umum', 'Admin', 3684000, 0, 3684000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100766', '', '', '', 191500, NULL, '2026-11-23 13:49:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00767', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 3, 25000, 75000, 13000, 0, 36000, 'pcs'),
  ('TRX-A00767', 'PRD-A-HP-0362', 'HP OPPO A16 3/64 88727', 2, 1760000, 3520000, 1700000, 0, 120000, 'pcs'),
  ('TRX-A00767', 'PRD-A-KEL-0057', 'Pasta gigi', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00767', 'PRD-A-KEL-0156', 'Pensil', 3, 2000, 6000, 1500, 0, 1500, 'pcs'),
  ('TRX-A00767', 'PRD-A-KEL-0075', 'Baju anak', 1, 35000, 35000, 15000, 0, 20000, 'pcs'),
  ('TRX-A00767', 'PRD-A-KEL-0041', 'Sabun cuci', 3, 8000, 24000, 6000, 0, 6000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01331', '2026-11-23 13:46:59+07:00', 'Umum', 'Admin', 2340000, 0, 2340000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101330', '', '', '', 140000, NULL, '2026-11-23 13:46:59+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01331', 'PRD-A-HP-0481', 'HP NOKIA Y53 3/32 30860', 2, 1170000, 2340000, 1100000, 0, 140000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00554', '2026-11-23 13:31:04+07:00', 'Budi Santoso 2', 'Admin', 1490000, 0, 745000, 745000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100553', '', '', '', 374000, NULL, '2026-11-23 13:31:04+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00554', 'PRD-A-AKS-0238', 'Voucher XL 10GB', 3, 36000, 108000, 26000, 0, 30000, 'pcs'),
  ('TRX-A00554', 'PRD-A-AKS-0071', 'Case Oppo A57', 2, 31000, 62000, 19000, 0, 24000, 'pcs'),
  ('TRX-A00554', 'PRD-A-HP-0145', 'HP ITEL C3 3/64 46957', 2, 660000, 1320000, 500000, 0, 320000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00096', '2026-11-23 13:27:27+07:00', 'Sri Wahyuni 2', 'Admin', 1974000, 0, 1974000, 0, 'Transfer Bank', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100095', '', '', '', 239000, NULL, '2026-11-23 13:27:27+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00096', 'PRD-A-AKS-0076', 'Handsfree Samsung', 3, 58000, 174000, 45000, 0, 39000, 'pcs'),
  ('TRX-A00096', 'PRD-A-HP-0041', 'HP REALME C11 8/256 12012', 1, 1800000, 1800000, 1600000, 0, 200000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01973', '2026-11-23 13:26:55+07:00', 'Maya Putri 3', 'Admin', 5782000, 0, 2891000, 2891000, 'Transfer Bank', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101972', '', '', '', 974500, NULL, '2026-11-23 13:26:55+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01973', 'PRD-A-HP-0248', 'HP ITEL A03 8/256 57207', 3, 830000, 2490000, 600000, 0, 690000, 'pcs'),
  ('TRX-A01973', 'PRD-A-KEL-0188', 'Air mineral 600ml', 3, 4000, 12000, 2500, 0, 4500, 'pcs'),
  ('TRX-A01973', 'PRD-A-HP-0461', 'HP ITEL 9A 3/32 50466', 2, 1640000, 3280000, 1500000, 0, 280000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00328', '2026-11-23 13:18:01+07:00', 'Andi Kurnia 5', 'Admin', 6060000, 0, 6060000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100327', '', '', '', 360000, NULL, '2026-11-23 13:18:01+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00328', 'PRD-A-HP-0509', 'HP REALME A03 2/32 64328', 3, 2020000, 6060000, 1900000, 0, 360000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00755', '2026-11-23 13:09:49+07:00', 'Umum', 'Admin', 7761000, 0, 7761000, 0, 'Tunai', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100754', '', '', '', 1060500, NULL, '2026-11-23 13:09:49+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00755', 'PRD-A-HP-0032', 'HP ITEL Y91C 8/256 46695', 1, 700000, 700000, 500000, 0, 200000, 'pcs'),
  ('TRX-A00755', 'PRD-A-HP-0123', 'HP REALME HOT30i 4/128 73074', 3, 1540000, 4620000, 1400000, 0, 420000, 'pcs'),
  ('TRX-A00755', 'PRD-A-HP-0104', 'HP INFINIX HOT30i 8/256 95378', 2, 1220000, 2440000, 1000000, 0, 440000, 'pcs'),
  ('TRX-A00755', 'PRD-A-KEL-0061', 'Sampo sachet', 1, 1000, 1000, 500, 0, 500, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00885', '2026-11-23 12:58:13+07:00', 'Umum', 'Admin', 17740000, 0, 17740000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100884', '', '', '', 1269000, NULL, '2026-11-23 12:58:13+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00885', 'PRD-A-HP-0239', 'HP REDMI 9C 2/16 76726', 3, 2580000, 7740000, 2500000, 0, 240000, 'pcs'),
  ('TRX-A00885', 'PRD-A-KEL-0021', 'Susu UHT 1L', 3, 20000, 60000, 17000, 0, 9000, 'pcs'),
  ('TRX-A00885', 'PRD-A-HP-0026', 'HP INFINIX A03 4/64 62102', 1, 2070000, 2070000, 2000000, 0, 70000, 'pcs'),
  ('TRX-A00885', 'PRD-A-KEL-0171', 'Teh celup', 1, 6000, 6000, 4000, 0, 2000, 'pcs'),
  ('TRX-A00885', 'PRD-A-HP-0428', 'HP REALME Y20 2/32 39321', 2, 960000, 1920000, 800000, 0, 320000, 'pcs'),
  ('TRX-A00885', 'PRD-A-HP-0472', 'HP ITEL Y20 3/32 82088', 3, 1590000, 4770000, 1400000, 0, 570000, 'pcs'),
  ('TRX-A00885', 'PRD-A-KEL-0042', 'Bakwan beku 250gr', 2, 12000, 24000, 8000, 0, 8000, 'pcs'),
  ('TRX-A00885', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 1, 1150000, 1150000, 1100000, 0, 50000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00376', '2026-11-23 12:51:48+07:00', 'Andi Kurnia 5', 'Admin', 8303000, 0, 8303000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100375', '', '', '', 953000, NULL, '2026-11-23 12:51:48+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00376', 'PRD-A-HP-0131', 'HP ITEL C3 2/16 73952', 2, 1150000, 2300000, 1100000, 0, 100000, 'pcs'),
  ('TRX-A00376', 'PRD-A-HP-0197', 'HP ITEL C11 4/128 89181', 1, 2140000, 2140000, 1900000, 0, 240000, 'pcs'),
  ('TRX-A00376', 'PRD-A-HP-0392', 'HP INFINIX V5S 3/64 59966', 3, 520000, 1560000, 400000, 0, 360000, 'pcs'),
  ('TRX-A00376', 'PRD-A-AKS-0175', 'Kartu Perdana Tri', 2, 28000, 56000, 18000, 0, 20000, 'pcs'),
  ('TRX-A00376', 'PRD-A-HP-0300', 'HP VIVO A57 4/64 84912', 1, 670000, 670000, 600000, 0, 70000, 'pcs'),
  ('TRX-A00376', 'PRD-A-HP-0356', 'HP REALME 6A 4/128 31555', 2, 780000, 1560000, 700000, 0, 160000, 'pcs'),
  ('TRX-A00376', 'PRD-A-AKS-0149', 'Case Samsung A03', 1, 17000, 17000, 14000, 0, 3000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01583', '2026-11-23 12:50:44+07:00', 'Agus Wijaya 3', 'Admin', 9994000, 0, 9994000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101582', '', '', '', 625000, NULL, '2026-11-23 12:50:44+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01583', 'PRD-A-KEL-0095', 'Pulpen', 1, 3000, 3000, 2000, 0, 1000, 'pcs'),
  ('TRX-A01583', 'PRD-A-AKS-0207', 'Voucher Telkomsel 10GB', 1, 41000, 41000, 37000, 0, 4000, 'pcs'),
  ('TRX-A01583', 'PRD-A-AKS-0195', 'Memory Card 16GB', 2, 70000, 140000, 65000, 0, 10000, 'pcs'),
  ('TRX-A01583', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 1, 2900000, 2900000, 2700000, 0, 200000, 'pcs'),
  ('TRX-A01583', 'PRD-A-HP-0003', 'HP NOKIA C15 3/32 12486', 1, 700000, 700000, 500000, 0, 200000, 'pcs'),
  ('TRX-A01583', 'PRD-A-HP-0508', 'HP REDMI 9C 4/128 88002', 3, 2070000, 6210000, 2000000, 0, 210000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01508', '2026-11-23 12:42:11+07:00', 'Umum', 'Admin', 105000, 0, 105000, 0, 'Debit', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101507', '', '', '', 24000, NULL, '2026-11-23 12:42:11+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01508', 'PRD-A-AKS-0145', 'Voucher Telkomsel 10GB', 3, 35000, 105000, 27000, 0, 24000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A01075', '2026-11-23 12:13:51+07:00', 'Umum', 'Admin', 2586000, 0, 1293000, 1293000, 'Debit', 'Kurang', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '101074', '', '', '', 236000, NULL, '2026-11-23 12:13:51+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A01075', 'PRD-A-HP-0061', 'HP REDMI A57 2/32 24085', 1, 780000, 780000, 700000, 0, 80000, 'pcs'),
  ('TRX-A01075', 'PRD-A-AKS-0141', 'Batre Oppo A57', 3, 62000, 186000, 50000, 0, 36000, 'pcs'),
  ('TRX-A01075', 'PRD-A-HP-0262', 'HP VIVO Y20 8/256 60021', 1, 1620000, 1620000, 1500000, 0, 120000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00220', '2026-11-23 11:51:30+07:00', 'Umum', 'Admin', 2804000, 0, 2804000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100219', '', '', '', 254000, NULL, '2026-11-23 11:51:30+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00220', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 1, 630000, 630000, 500000, 0, 130000, 'pcs'),
  ('TRX-A00220', 'PRD-A-AKS-0235', 'Handsfree Xiaomi', 2, 32000, 64000, 22000, 0, 20000, 'pcs'),
  ('TRX-A00220', 'PRD-A-HP-0023', 'HP INFINIX Y91C 8/256 86951', 2, 1050000, 2100000, 1000000, 0, 100000, 'pcs'),
  ('TRX-A00220', 'PRD-A-KEL-0198', 'Buku tulis', 2, 5000, 10000, 3000, 0, 4000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;

insert into transaksi (id, tanggal, pelanggan, kasir, total, diskon, bayar, sisa, metode, status_bayar, status_pesanan, catatan, cabang_id, ongkir, diskon_persen, poin_dipakai, poin_didapat, kode_alternatif, meja, catatan_struk, catatan_internal, laba, promo_id, created_at) values
  ('TRX-A00140', '2026-11-23 11:50:29+07:00', 'Umum', 'Admin', 3534000, 0, 3534000, 0, 'QRIS', 'Lunas', 'Selesai', '', 'CBG-UTAMA', 0, 0, 0, 0, '100139', '', '', '', 279000, NULL, '2026-11-23 11:50:29+07:00')
  on conflict (id) do nothing;

insert into transaksi_detail (transaksi_id, produk_id, nama_produk, qty, harga, subtotal, modal, diskon_item, laba, satuan_dipakai) values
  ('TRX-A00140', 'PRD-A-AKS-0155', 'Handsfree Samsung', 1, 40000, 40000, 31000, 0, 9000, 'pcs'),
  ('TRX-A00140', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 1, 2180000, 2180000, 2100000, 0, 80000, 'pcs'),
  ('TRX-A00140', 'PRD-A-HP-0019', 'HP REALME 9C 2/16 46459', 1, 1260000, 1260000, 1100000, 0, 160000, 'pcs'),
  ('TRX-A00140', 'PRD-A-AKS-0080', 'Kabel Charger 2m', 3, 18000, 54000, 8000, 0, 30000, 'pcs')
  on conflict (transaksi_id, produk_id) do nothing;
