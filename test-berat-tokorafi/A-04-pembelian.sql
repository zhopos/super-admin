-- ============================================================================
-- TEST BERAT TOKORAFI — Dataset A (1.000 produk + 2.000 transaksi)
-- File: A-04-pembelian.sql  (bagian 1 dari 1 langkah ini — jalankan berurutan)
-- Isi: cicilan_utang: 8, pembelian: 50, pembelian_detail: 135, utang: 6
-- Pembelian + detail + utang/cicilan turunannya.
-- Semua INSERT memakai ON CONFLICT DO NOTHING — aman dijalankan 2x dan
-- tidak bentrok dengan seed bawaan tokorafi (TES Kopi, TRX-8250237222,
-- CBG-UTAMA, PLG-UMUM). Dibuat oleh gen-tokorafi.js (deterministik).
-- ============================================================================

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0013', '2026-11-27 17:22:00+07:00', 'Rane', 6693700, 6693700, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-27 17:22:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0013', 'PRD-A-HP-0341', 'HP REALME Y20 3/32 65036', 4, 1615000, 1770000, 6460000, '2027-01-04'),
  ('PBL-A-0013', 'PRD-A-AKS-0146', 'Memory Card 32GB', 3, 77900, 91000, 233700, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0047', '2026-11-26 16:00:00+07:00', 'Rane', 18702650, 9351325, 9351325, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-11-26 16:00:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0047', 'PRD-A-HP-0498', 'HP SAMSUNG J5 3/32 53011', 6, 2090000, 2280000, 12540000, '2027-05-31'),
  ('PBL-A-0047', 'PRD-A-AKS-0179', 'Memory Card 32GB', 6, 83600, 102000, 501600, '2027-02-26'),
  ('PBL-A-0047', 'PRD-A-HP-0516', 'HP OPPO Y91C 2/16 44748', 2, 2660000, 3040000, 5320000, NULL),
  ('PBL-A-0047', 'PRD-A-AKS-0056', 'Voucher Telkomsel 10GB', 1, 56050, 72000, 56050, NULL),
  ('PBL-A-0047', 'PRD-A-AKS-0067', 'Case Redmi 9A', 10, 28500, 39000, 285000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0011', '2026-11-24 08:46:00+07:00', 'Rane', 15200, 15200, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-24 08:46:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0011', 'PRD-A-KEL-0013', 'Sabun mandi', 4, 3800, 6000, 15200, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0040', '2026-11-22 09:42:00+07:00', 'Rane', 7712100, 7712100, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-22 09:42:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0040', 'PRD-A-HP-0529', 'HP INFINIX V5S 4/128 76932', 4, 1520000, 1850000, 6080000, NULL),
  ('PBL-A-0040', 'PRD-A-HP-0410', 'HP REDMI A15 2/16 63130', 1, 1615000, 1850000, 1615000, '2027-01-04'),
  ('PBL-A-0040', 'PRD-A-AKS-0035', 'Batre Samsung J1', 1, 17100, 23000, 17100, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0020', '2026-11-21 17:15:00+07:00', 'Rane', 8382800, 4191400, 4191400, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-21 17:15:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0020', 'PRD-A-AKS-0148', 'Case Vivo Y20', 8, 24700, 34000, 197600, NULL),
  ('PBL-A-0020', 'PRD-A-HP-0210', 'HP SAMSUNG A17 4/64 94850', 3, 2660000, 2990000, 7980000, NULL),
  ('PBL-A-0020', 'PRD-A-KEL-0179', 'Minyak goreng 1L', 6, 34200, 40000, 205200, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into utang (id, tanggal, pembelian_id, pemasok, total, dibayar, sisa, status, created_at) values
  ('UTG-A-0001', '2026-11-21 17:15:00+07:00', 'PBL-A-0020', 'Rane', 8382800, 4191400, 4191400, 'Hutang', '2026-11-21 17:15:00+07:00')
  on conflict (id) do nothing;

insert into cicilan_utang (id, utang_id, tanggal, nominal, keterangan) values
  ('CIC-A-0001', 'UTG-A-0001', '2026-11-23 00:00:00+07:00', 2095700, 'Cicilan ke-1'),
  ('CIC-A-0002', 'UTG-A-0001', '2026-11-26 00:00:00+07:00', 2095700, 'Cicilan ke-2')
  on conflict (id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0003', '2026-11-21 10:30:00+07:00', 'Rane', 6868500, 6868500, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-11-21 10:30:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0003', 'PRD-A-HP-0462', 'HP VIVO HOT30i 2/32 84958', 3, 2090000, 2290000, 6270000, NULL),
  ('PBL-A-0003', 'PRD-A-AKS-0034', 'Memory Card 64GB', 9, 66500, 78000, 598500, '2027-09-24')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0050', '2026-11-16 10:11:00+07:00', 'Rane', 3572000, 3572000, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-16 10:11:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0050', 'PRD-A-KEL-0078', 'Sabun cuci', 5, 5700, 8000, 28500, NULL),
  ('PBL-A-0050', 'PRD-A-AKS-0082', 'Case Redmi 9A', 10, 21850, 26000, 218500, NULL),
  ('PBL-A-0050', 'PRD-A-HP-0148', 'HP VIVO A16 2/16 72204', 5, 665000, 800000, 3325000, '2027-09-01')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0030', '2026-11-16 09:45:00+07:00', 'Distributor Jaya', 10326500, 10326500, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-16 09:45:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0030', 'PRD-A-KEL-0035', 'Kecap 600ml', 5, 13300, 17000, 66500, NULL),
  ('PBL-A-0030', 'PRD-A-HP-0420', 'HP VIVO Y20 4/64 45687', 4, 2565000, 2870000, 10260000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0010', '2026-11-15 09:41:00+07:00', 'Distributor Jaya', 2657150, 2657150, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-15 09:41:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0010', 'PRD-A-HP-0008', 'HP INFINIX V7 4/128 81181', 1, 2565000, 2900000, 2565000, NULL),
  ('PBL-A-0010', 'PRD-A-KEL-0068', 'Susu UHT 1L', 2, 16150, 20000, 32300, '2027-07-31'),
  ('PBL-A-0010', 'PRD-A-KEL-0120', 'Tissue 250s', 9, 6650, 10000, 59850, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0049', '2026-11-11 13:10:00+07:00', 'Toko Grosir Makmur', 4751900, 4751900, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-11-11 13:10:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0049', 'PRD-A-KEL-0086', 'Bakwan beku 250gr', 4, 7600, 12000, 30400, NULL),
  ('PBL-A-0049', 'PRD-A-HP-0260', 'HP OPPO 9A 2/16 78485', 2, 2185000, 2380000, 4370000, NULL),
  ('PBL-A-0049', 'PRD-A-AKS-0125', 'Handsfree Samsung', 10, 35150, 52000, 351500, '2027-06-18')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0008', '2026-11-11 08:24:00+07:00', 'Toko Grosir Makmur', 25274000, 25274000, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-11 08:24:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0008', 'PRD-A-KEL-0122', 'Sampo sachet', 8, 500, 1000, 4000, '2027-04-07'),
  ('PBL-A-0008', 'PRD-A-HP-0083', 'HP OPPO Y16 3/64 25393', 4, 285000, 380000, 1140000, NULL),
  ('PBL-A-0008', 'PRD-A-HP-0153', 'HP SAMSUNG S23 8/256 65089', 10, 1425000, 1560000, 14250000, NULL),
  ('PBL-A-0008', 'PRD-A-HP-0203', 'HP SAMSUNG A16 4/64 58775', 4, 2470000, 2720000, 9880000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0034', '2026-11-10 12:29:00+07:00', 'Distributor Jaya', 2299950, 2299950, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-11-10 12:29:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0034', 'PRD-A-AKS-0206', 'Tempered Glass Vivo', 3, 6650, 15000, 19950, NULL),
  ('PBL-A-0034', 'PRD-A-HP-0235', 'HP ITEL Y91C 4/64 94249', 4, 570000, 850000, 2280000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0039', '2026-11-09 12:58:00+07:00', 'Toko Grosir Makmur', 1473450, 1473450, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-09 12:58:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0039', 'PRD-A-HP-0537', 'HP REDMI Y16 2/32 36132', 1, 1425000, 1650000, 1425000, '2027-04-27'),
  ('PBL-A-0039', 'PRD-A-KEL-0047', 'Susu UHT 1L', 3, 16150, 20000, 48450, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0033', '2026-11-08 17:50:00+07:00', 'Toko Grosir Makmur', 5320000, 5320000, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-11-08 17:50:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0033', 'PRD-A-HP-0139', 'HP REDMI A15 3/64 23228', 7, 760000, 1030000, 5320000, '2027-07-24')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0015', '2026-11-08 11:22:00+07:00', 'Distributor Jaya', 128250, 128250, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-08 11:22:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0015', 'PRD-A-AKS-0076', 'Handsfree Samsung', 3, 42750, 58000, 128250, '2027-01-08')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0012', '2026-11-08 10:21:00+07:00', 'Toko Grosir Makmur', 4303500, 4303500, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-08 10:21:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0012', 'PRD-A-HP-0366', 'HP SAMSUNG 6A 4/64 71751', 5, 380000, 560000, 1900000, '2027-07-08'),
  ('PBL-A-0012', 'PRD-A-AKS-0183', 'Kabel Charger 2m', 3, 9500, 14000, 28500, NULL),
  ('PBL-A-0012', 'PRD-A-HP-0506', 'HP ITEL Y55S 2/32 74678', 5, 475000, 640000, 2375000, '2027-07-27')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0043', '2026-11-08 09:47:00+07:00', 'Distributor Jaya', 1520, 760, 760, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-08 09:47:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0043', 'PRD-A-KEL-0005', 'Kopi sachet', 2, 760, 1500, 1520, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into utang (id, tanggal, pembelian_id, pemasok, total, dibayar, sisa, status, created_at) values
  ('UTG-A-0002', '2026-11-08 09:47:00+07:00', 'PBL-A-0043', 'Distributor Jaya', 1520, 760, 760, 'Hutang', '2026-11-08 09:47:00+07:00')
  on conflict (id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0024', '2026-11-07 16:49:00+07:00', 'Toko Grosir Makmur', 4655000, 4655000, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-11-07 16:49:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0024', 'PRD-A-HP-0194', 'HP REALME C15 2/16 38996', 7, 665000, 940000, 4655000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0001', '2026-11-04 10:51:00+07:00', 'Toko Grosir Makmur', 4560000, 4560000, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-11-04 10:51:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0001', 'PRD-A-HP-0157', 'HP REDMI 9C 8/256 55724', 4, 1140000, 1420000, 4560000, '2027-02-11')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0028', '2026-11-04 10:47:00+07:00', 'Rane', 12275900, 12275900, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-11-04 10:47:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0028', 'PRD-A-AKS-0155', 'Handsfree Samsung', 4, 29450, 40000, 117800, NULL),
  ('PBL-A-0028', 'PRD-A-KEL-0012', 'Pasta gigi', 6, 7600, 12000, 45600, NULL),
  ('PBL-A-0028', 'PRD-A-HP-0018', 'HP REDMI S23 3/32 54282', 9, 1330000, 1570000, 11970000, '2027-09-08'),
  ('PBL-A-0028', 'PRD-A-AKS-0157', 'Voucher Tri 8GB', 5, 28500, 39000, 142500, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0029', '2026-11-04 08:57:00+07:00', 'Distributor Jaya', 239400, 119700, 119700, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-11-04 08:57:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0029', 'PRD-A-AKS-0010', 'Memory Card 64GB', 9, 26600, 37000, 239400, '2027-06-17')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0018', '2026-10-28 11:41:00+07:00', 'Rane', 6897000, 6897000, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-28 11:41:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0018', 'PRD-A-HP-0307', 'HP ITEL 6A 8/256 81008', 5, 1235000, 1370000, 6175000, '2027-08-18'),
  ('PBL-A-0018', 'PRD-A-AKS-0221', 'Memory Card 32GB', 10, 72200, 88000, 722000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0021', '2026-10-28 10:00:00+07:00', 'Toko Grosir Makmur', 25741200, 12870600, 12870600, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-28 10:00:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0021', 'PRD-A-HP-0100', 'HP REDMI Y20 3/64 78811', 1, 570000, 670000, 570000, NULL),
  ('PBL-A-0021', 'PRD-A-KEL-0056', 'Roti tawar', 8, 11400, 15000, 91200, NULL),
  ('PBL-A-0021', 'PRD-A-HP-0447', 'HP REDMI S23 2/32 23687', 8, 475000, 630000, 3800000, '2027-06-10'),
  ('PBL-A-0021', 'PRD-A-HP-0430', 'HP ITEL C15 4/128 79048', 8, 2660000, 2950000, 21280000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into utang (id, tanggal, pembelian_id, pemasok, total, dibayar, sisa, status, created_at) values
  ('UTG-A-0003', '2026-10-28 10:00:00+07:00', 'PBL-A-0021', 'Toko Grosir Makmur', 25741200, 12870600, 12870600, 'Hutang', '2026-10-28 10:00:00+07:00')
  on conflict (id) do nothing;

insert into cicilan_utang (id, utang_id, tanggal, nominal, keterangan) values
  ('CIC-A-0003', 'UTG-A-0003', '2026-11-03 00:00:00+07:00', 6435300, 'Cicilan ke-1'),
  ('CIC-A-0004', 'UTG-A-0003', '2026-11-03 00:00:00+07:00', 6435300, 'Cicilan ke-2')
  on conflict (id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0026', '2026-10-25 12:18:00+07:00', 'Rane', 5985000, 5985000, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-25 12:18:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0026', 'PRD-A-HP-0121', 'HP REALME A03 2/16 56376', 3, 1995000, 2200000, 5985000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0022', '2026-10-23 09:33:00+07:00', 'Distributor Jaya', 145350, 72675, 72675, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-23 09:33:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0022', 'PRD-A-KEL-0085', 'Susu UHT 1L', 9, 16150, 20000, 145350, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0037', '2026-10-22 12:30:00+07:00', 'Rane', 16173750, 16173750, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-22 12:30:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0037', 'PRD-A-AKS-0213', 'Memory Card 16GB', 5, 61750, 72000, 308750, NULL),
  ('PBL-A-0037', 'PRD-A-HP-0270', 'HP REDMI Y53 3/64 38258', 6, 1425000, 1590000, 8550000, NULL),
  ('PBL-A-0037', 'PRD-A-HP-0438', 'HP NOKIA A03 3/64 37049', 8, 665000, 920000, 5320000, NULL),
  ('PBL-A-0037', 'PRD-A-HP-0411', 'HP VIVO Y91C 2/16 27889', 3, 665000, 860000, 1995000, '2027-07-31')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0048', '2026-10-21 09:05:00+07:00', 'Toko Grosir Makmur', 25783000, 25783000, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-21 09:05:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0048', 'PRD-A-HP-0186', 'HP OPPO 5A 4/64 28466', 10, 1805000, 2150000, 18050000, NULL),
  ('PBL-A-0048', 'PRD-A-HP-0322', 'HP VIVO 5A 4/64 52007', 4, 1900000, 2110000, 7600000, NULL),
  ('PBL-A-0048', 'PRD-A-KEL-0035', 'Kecap 600ml', 10, 13300, 17000, 133000, '2027-04-10')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0036', '2026-10-20 15:33:00+07:00', 'Toko Grosir Makmur', 8550, 8550, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-20 15:33:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0036', 'PRD-A-KEL-0142', 'Buku tulis', 3, 2850, 5000, 8550, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0019', '2026-10-20 15:06:00+07:00', 'Rane', 46859700, 46859700, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-20 15:06:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0019', 'PRD-A-HP-0474', 'HP VIVO A16 4/64 32941', 10, 2280000, 2540000, 22800000, NULL),
  ('PBL-A-0019', 'PRD-A-AKS-0037', 'Kartu Perdana Indosat', 9, 13300, 20000, 119700, NULL),
  ('PBL-A-0019', 'PRD-A-HP-0210', 'HP SAMSUNG A17 4/64 94850', 9, 2660000, 2990000, 23940000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0005', '2026-10-20 08:26:00+07:00', 'Rane', 22230000, 22230000, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-20 08:26:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0005', 'PRD-A-HP-0074', 'HP SAMSUNG A15 4/128 36712', 9, 1995000, 2180000, 17955000, '2027-05-24'),
  ('PBL-A-0005', 'PRD-A-HP-0273', 'HP INFINIX C11 3/64 69468', 3, 1425000, 1680000, 4275000, '2027-01-10')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0042', '2026-10-19 13:51:00+07:00', 'Rane', 25935000, 25935000, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-19 13:51:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0042', 'PRD-A-HP-0057', 'HP ITEL C11 3/32 22821', 10, 2565000, 2910000, 25650000, NULL),
  ('PBL-A-0042', 'PRD-A-HP-0241', 'HP VIVO V7 3/64 56137', 1, 285000, 430000, 285000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0031', '2026-10-18 14:00:00+07:00', 'Distributor Jaya', 42856400, 42856400, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-18 14:00:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0031', 'PRD-A-HP-0282', 'HP REDMI 5A 4/64 82716', 10, 2565000, 2900000, 25650000, NULL),
  ('PBL-A-0031', 'PRD-A-KEL-0113', 'Gula pasir 1kg', 7, 15200, 18000, 106400, NULL),
  ('PBL-A-0031', 'PRD-A-HP-0386', 'HP SAMSUNG Y16 3/64 69944', 9, 1900000, 2220000, 17100000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0025', '2026-10-17 13:48:00+07:00', 'Distributor Jaya', 6672800, 3336400, 3336400, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-17 13:48:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0025', 'PRD-A-HP-0067', 'HP NOKIA Y55S 4/128 24430', 5, 1045000, 1240000, 5225000, NULL),
  ('PBL-A-0025', 'PRD-A-KEL-0078', 'Sabun cuci', 4, 5700, 8000, 22800, '2027-04-19'),
  ('PBL-A-0025', 'PRD-A-HP-0501', 'HP REALME 9C 4/64 66640', 1, 1425000, 1730000, 1425000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into utang (id, tanggal, pembelian_id, pemasok, total, dibayar, sisa, status, created_at) values
  ('UTG-A-0004', '2026-10-17 13:48:00+07:00', 'PBL-A-0025', 'Distributor Jaya', 6672800, 3336400, 3336400, 'Hutang', '2026-10-17 13:48:00+07:00')
  on conflict (id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0023', '2026-10-16 08:14:00+07:00', 'Distributor Jaya', 9956000, 9956000, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-16 08:14:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0023', 'PRD-A-HP-0209', 'HP REALME C15 3/32 65187', 4, 2470000, 2800000, 9880000, NULL),
  ('PBL-A-0023', 'PRD-A-AKS-0008', 'Kartu Perdana Indosat', 5, 15200, 28000, 76000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0006', '2026-10-15 15:47:00+07:00', 'Rane', 5517600, 5517600, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-15 15:47:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0006', 'PRD-A-HP-0142', 'HP VIVO A57 3/32 10794', 9, 475000, 740000, 4275000, '2027-10-11'),
  ('PBL-A-0006', 'PRD-A-HP-0422', 'HP SAMSUNG Y16 3/32 58592', 1, 1235000, 1510000, 1235000, '2027-06-22'),
  ('PBL-A-0006', 'PRD-A-KEL-0117', 'Bakwan beku 250gr', 1, 7600, 12000, 7600, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0014', '2026-10-14 12:05:00+07:00', 'Toko Grosir Makmur', 17107600, 17107600, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-14 12:05:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0014', 'PRD-A-HP-0185', 'HP REALME V5S 8/256 22624', 10, 1710000, 2040000, 17100000, '2027-04-04'),
  ('PBL-A-0014', 'PRD-A-KEL-0185', 'Pulpen', 4, 1900, 3000, 7600, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0009', '2026-10-14 11:04:00+07:00', 'Rane', 7686450, 7686450, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-14 11:04:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0009', 'PRD-A-AKS-0159', 'Batre Vivo Y91', 7, 12350, 25000, 86450, NULL),
  ('PBL-A-0009', 'PRD-A-HP-0195', 'HP REALME 9A 2/16 33954', 4, 1900000, 2190000, 7600000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0007', '2026-10-13 11:06:00+07:00', 'Distributor Jaya', 42370000, 42370000, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-13 11:06:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0007', 'PRD-A-HP-0506', 'HP ITEL Y55S 2/32 74678', 4, 475000, 640000, 1900000, NULL),
  ('PBL-A-0007', 'PRD-A-HP-0358', 'HP SAMSUNG V5S 3/64 85531', 10, 855000, 950000, 8550000, NULL),
  ('PBL-A-0007', 'PRD-A-HP-0350', 'HP REALME 5A 3/64 33830', 8, 1520000, 1670000, 12160000, NULL),
  ('PBL-A-0007', 'PRD-A-HP-0457', 'HP REDMI Y16 3/64 84751', 4, 2470000, 2770000, 9880000, NULL),
  ('PBL-A-0007', 'PRD-A-HP-0125', 'HP REALME Y55S 4/64 92460', 8, 1235000, 1490000, 9880000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0027', '2026-10-12 15:40:00+07:00', 'Distributor Jaya', 47086275, 47086275, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-12 15:40:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0027', 'PRD-A-KEL-0156', 'Pensil', 3, 1425, 2000, 4275, NULL),
  ('PBL-A-0027', 'PRD-A-HP-0417', 'HP REDMI HOT30i 4/128 27190', 9, 1995000, 2180000, 17955000, '2027-04-08'),
  ('PBL-A-0027', 'PRD-A-HP-0010', 'HP ITEL A17 8/256 50674', 8, 2470000, 2810000, 19760000, '2027-05-17'),
  ('PBL-A-0027', 'PRD-A-HP-0015', 'HP OPPO A57 2/16 21995', 7, 1330000, 1610000, 9310000, '2027-04-24'),
  ('PBL-A-0027', 'PRD-A-KEL-0052', 'Sabun cuci', 10, 5700, 8000, 57000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0038', '2026-10-11 09:15:00+07:00', 'Rane', 20520000, 10260000, 10260000, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-11 09:15:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0038', 'PRD-A-KEL-0149', 'Roti tawar', 5, 11400, 15000, 57000, NULL),
  ('PBL-A-0038', 'PRD-A-HP-0402', 'HP OPPO HOT30i 3/64 35135', 5, 1520000, 1660000, 7600000, NULL),
  ('PBL-A-0038', 'PRD-A-HP-0250', 'HP SAMSUNG V7 8/256 33916', 5, 2565000, 2790000, 12825000, NULL),
  ('PBL-A-0038', 'PRD-A-KEL-0115', 'Bakwan beku 250gr', 5, 7600, 12000, 38000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0035', '2026-10-09 09:21:00+07:00', 'Toko Grosir Makmur', 57776150, 57776150, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-09 09:21:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0035', 'PRD-A-HP-0112', 'HP NOKIA 6A 3/64 55295', 10, 2660000, 2930000, 26600000, NULL),
  ('PBL-A-0035', 'PRD-A-AKS-0068', 'Batre Oppo A57', 3, 37050, 43000, 111150, '2027-07-15'),
  ('PBL-A-0035', 'PRD-A-HP-0068', 'HP VIVO A17 2/16 71820', 2, 1710000, 2010000, 3420000, NULL),
  ('PBL-A-0035', 'PRD-A-HP-0494', 'HP VIVO Y20 3/32 70012', 9, 1805000, 2150000, 16245000, '2027-02-03'),
  ('PBL-A-0035', 'PRD-A-HP-0347', 'HP ITEL Y16 2/32 26208', 5, 2280000, 2590000, 11400000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0045', '2026-10-08 15:03:00+07:00', 'Distributor Jaya', 2257960, 1128980, 1128980, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-08 15:03:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0045', 'PRD-A-KEL-0195', 'Gula pasir 1kg', 6, 15200, 18000, 91200, NULL),
  ('PBL-A-0045', 'PRD-A-KEL-0083', 'Kopi sachet', 1, 760, 1500, 760, NULL),
  ('PBL-A-0045', 'PRD-A-AKS-0072', 'Tempered Glass Vivo', 4, 16150, 30000, 64600, NULL),
  ('PBL-A-0045', 'PRD-A-HP-0321', 'HP NOKIA 9A 8/256 97433', 1, 1995000, 2330000, 1995000, '2027-02-23'),
  ('PBL-A-0045', 'PRD-A-KEL-0025', 'Gula pasir 1kg', 7, 15200, 18000, 106400, '2027-06-28')
  on conflict (pembelian_id, produk_id) do nothing;

insert into utang (id, tanggal, pembelian_id, pemasok, total, dibayar, sisa, status, created_at) values
  ('UTG-A-0005', '2026-10-08 15:03:00+07:00', 'PBL-A-0045', 'Distributor Jaya', 2257960, 1128980, 1128980, 'Hutang', '2026-10-08 15:03:00+07:00')
  on conflict (id) do nothing;

insert into cicilan_utang (id, utang_id, tanggal, nominal, keterangan) values
  ('CIC-A-0005', 'UTG-A-0005', '2026-10-09 00:00:00+07:00', 564490, 'Cicilan ke-1'),
  ('CIC-A-0006', 'UTG-A-0005', '2026-10-11 00:00:00+07:00', 564490, 'Cicilan ke-2')
  on conflict (id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0017', '2026-10-08 09:51:00+07:00', 'Distributor Jaya', 425600, 425600, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-08 09:51:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0017', 'PRD-A-AKS-0083', 'Voucher Telkomsel 5GB', 2, 34200, 51000, 68400, NULL),
  ('PBL-A-0017', 'PRD-A-KEL-0004', 'Minyak goreng 1L', 6, 34200, 40000, 205200, NULL),
  ('PBL-A-0017', 'PRD-A-AKS-0228', 'Case Samsung A03', 8, 19000, 29000, 152000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0041', '2026-10-07 12:05:00+07:00', 'Rane', 36480000, 18240000, 18240000, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-07 12:05:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0041', 'PRD-A-HP-0266', 'HP REDMI 5A 4/64 34226', 6, 2565000, 2900000, 15390000, '2027-09-30'),
  ('PBL-A-0041', 'PRD-A-HP-0226', 'HP REDMI 5A 3/64 21837', 9, 1995000, 2300000, 17955000, '2027-09-26'),
  ('PBL-A-0041', 'PRD-A-HP-0541', 'HP OPPO A57 4/128 25760', 3, 1045000, 1290000, 3135000, '2027-03-08')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0046', '2026-10-06 10:59:00+07:00', 'Rane', 1662500, 1662500, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-06 10:59:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0046', 'PRD-A-HP-0513', 'HP VIVO Y53 8/256 63832', 1, 1615000, 1870000, 1615000, '2027-03-04'),
  ('PBL-A-0046', 'PRD-A-KEL-0066', 'Gula pasir 1kg', 1, 15200, 18000, 15200, '2027-01-09'),
  ('PBL-A-0046', 'PRD-A-KEL-0058', 'Roti tawar', 2, 11400, 15000, 22800, NULL),
  ('PBL-A-0046', 'PRD-A-KEL-0079', 'Mie instan', 4, 2375, 3500, 9500, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0044', '2026-10-06 08:29:00+07:00', 'Rane', 10837600, 5418800, 5418800, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-06 08:29:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0044', 'PRD-A-HP-0493', 'HP OPPO S23 3/64 15068', 10, 380000, 550000, 3800000, NULL),
  ('PBL-A-0044', 'PRD-A-HP-0427', 'HP NOKIA Y91C 3/32 18280', 1, 950000, 1250000, 950000, '2027-01-11'),
  ('PBL-A-0044', 'PRD-A-AKS-0128', 'Batre Vivo Y91', 3, 34200, 41000, 102600, NULL),
  ('PBL-A-0044', 'PRD-A-HP-0540', 'HP REDMI S23 3/32 50164', 3, 1995000, 2210000, 5985000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into utang (id, tanggal, pembelian_id, pemasok, total, dibayar, sisa, status, created_at) values
  ('UTG-A-0006', '2026-10-06 08:29:00+07:00', 'PBL-A-0044', 'Rane', 10837600, 5418800, 5418800, 'Hutang', '2026-10-06 08:29:00+07:00')
  on conflict (id) do nothing;

insert into cicilan_utang (id, utang_id, tanggal, nominal, keterangan) values
  ('CIC-A-0007', 'UTG-A-0006', '2026-10-15 00:00:00+07:00', 2709400, 'Cicilan ke-1'),
  ('CIC-A-0008', 'UTG-A-0006', '2026-10-09 00:00:00+07:00', 2709400, 'Cicilan ke-2')
  on conflict (id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0016', '2026-10-05 08:05:00+07:00', 'Distributor Jaya', 15268400, 15268400, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-05 08:05:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0016', 'PRD-A-KEL-0150', 'Teh celup', 4, 3800, 6000, 15200, NULL),
  ('PBL-A-0016', 'PRD-A-HP-0102', 'HP ITEL Y91C 3/32 63741', 6, 760000, 990000, 4560000, '2027-07-21'),
  ('PBL-A-0016', 'PRD-A-HP-0294', 'HP OPPO A57 3/32 69464', 6, 1710000, 2000000, 10260000, NULL),
  ('PBL-A-0016', 'PRD-A-AKS-0127', 'Memory Card 32GB', 6, 72200, 84000, 433200, '2027-09-15')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0032', '2026-10-02 08:26:00+07:00', 'Distributor Jaya', 25028700, 25028700, 0, 'Draft', '', 'CBG-UTAMA', 0, 0, 0, false, '2026-10-02 08:26:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0032', 'PRD-A-AKS-0199', 'Handsfree Xiaomi', 4, 27550, 38000, 110200, '2027-05-08'),
  ('PBL-A-0032', 'PRD-A-AKS-0042', 'Kabel Data Lightning', 1, 28500, 42000, 28500, '2027-02-13'),
  ('PBL-A-0032', 'PRD-A-HP-0314', 'HP REALME A57 2/32 71468', 10, 2185000, 2390000, 21850000, NULL),
  ('PBL-A-0032', 'PRD-A-HP-0336', 'HP INFINIX Y16 4/128 54151', 4, 760000, 940000, 3040000, '2027-04-08')
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0004', '2026-10-01 11:18:00+07:00', 'Rane', 25650000, 25650000, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-10-01 11:18:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0004', 'PRD-A-HP-0038', 'HP SAMSUNG Y53 2/32 82972', 10, 2565000, 2790000, 25650000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;

insert into pembelian (id, tanggal, pemasok, total, bayar, sisa, status, catatan, cabang_id, diskon, pajak, biaya_lain, diproses, created_at) values
  ('PBL-A-0002', '2026-09-28 13:07:00+07:00', 'Distributor Jaya', 27835000, 27835000, 0, 'Diproses', '', 'CBG-UTAMA', 0, 0, 0, true, '2026-09-28 13:07:00+07:00')
  on conflict (id) do nothing;

insert into pembelian_detail (pembelian_id, produk_id, nama_produk, qty, harga_beli, harga_jual, subtotal, kedaluwarsa) values
  ('PBL-A-0002', 'PRD-A-HP-0498', 'HP SAMSUNG J5 3/32 53011', 6, 2090000, 2280000, 12540000, '2026-12-26'),
  ('PBL-A-0002', 'PRD-A-HP-0163', 'HP ITEL 9A 3/32 65586', 7, 2185000, 2380000, 15295000, NULL)
  on conflict (pembelian_id, produk_id) do nothing;
