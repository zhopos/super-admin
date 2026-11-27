-- ============================================================================
-- TEST BERAT TOKORAFI — Dataset A (1.000 produk + 2.000 transaksi)
-- File: A-02-master.sql  (bagian 1 dari 1 langkah ini — jalankan berurutan)
-- Isi: bahan_baku: 2, cabang: 1, grup_produk: 8, item_pengeluaran: 4, jenis_pembayaran: 10, katalog: 1, pegawai: 3, pelanggan: 104, pemasok: 3, promo: 6, satuan: 5, terjemahan: 12, tier_member: 2, transaksi_cepat: 3, transaksi_tertunda: 5
-- Pelanggan + pemasok + promo + master kecil + UPDATE PLG-UMUM.
-- Semua INSERT memakai ON CONFLICT DO NOTHING — aman dijalankan 2x dan
-- tidak bentrok dengan seed bawaan tokorafi (TES Kopi, TRX-8250237222,
-- CBG-UTAMA, PLG-UMUM). Dibuat oleh gen-tokorafi.js (deterministik).
-- ============================================================================

insert into cabang (id, nama, alamat, telepon, aktif) values
  ('CBG-UTAMA', 'Cabang Utama', '', '', true)
  on conflict (id) do nothing;

insert into pelanggan (id, nama, telepon, alamat, total_beli, piutang, poin, tier, tanggal_lahir, terakhir_beli, cabang_id) values
  ('PLG-UMUM', 'Umum', '', '', 5380950500, 1183620250, 0, '', NULL, '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0001', 'Siti Aisyah', '081282873554', 'Jl. Contoh No. 1', 114325500, 11033000, 156, '', '1998-03-19', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0002', 'Budi Santoso', '081242181093', 'Jl. Contoh No. 2', 39980500, 2308500, 290, '', '1980-07-28', '2026-11-23', 'CBG-UTAMA'),
  ('PLG-A-0003', 'Agus Wijaya', '081248940912', 'Jl. Contoh No. 3', 97494500, 41928750, 197, '', '1973-06-05', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0004', 'Dewi Lestari', '081235097567', 'Jl. Contoh No. 4', 85262000, 26745500, 170, '', '1997-05-09', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0005', 'Rina Marlina', '081254349072', 'Jl. Contoh No. 5', 19521000, 113500, 227, '', '1988-02-28', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0006', 'Joko Prasetyo', '081292301469', 'Jl. Contoh No. 6', 42959500, 20883000, 155, '', '1972-08-07', '2026-11-20', 'CBG-UTAMA'),
  ('PLG-A-0007', 'Maya Putri', '081238584451', 'Jl. Contoh No. 7', 39967000, 21415000, 369, '', '1991-10-18', '2026-11-20', 'CBG-UTAMA'),
  ('PLG-A-0008', 'Andi Kurnia', '081288405538', 'Jl. Contoh No. 8', 25910500, 11861000, 212, '', '1988-03-13', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0009', 'Sri Wahyuni', '081282803265', 'Jl. Contoh No. 9', 92576000, 8077500, 154, '', '1972-07-09', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0010', 'Hendra Gunawan', '081290152952', 'Jl. Contoh No. 10', 37561000, 8489500, 213, '', '1971-02-26', '2026-11-18', 'CBG-UTAMA'),
  ('PLG-A-0011', 'Lilis Suryani', '081217475061', 'Jl. Contoh No. 11', 64694500, 9414500, 307, '', '1983-04-22', '2026-11-22', 'CBG-UTAMA'),
  ('PLG-A-0012', 'Rudi Hartono', '081251265485', 'Jl. Contoh No. 12', 58556000, 10184000, 166, '', '1984-12-05', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0013', 'Nur Halimah', '081277597141', 'Jl. Contoh No. 13', 72643500, 12524000, 232, '', '1980-12-11', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0014', 'Eko Saputra', '081257424951', 'Jl. Contoh No. 14', 89452000, 27387500, 92, '', '1982-12-19', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0015', 'Fitri Rahmawati', '081295462445', 'Jl. Contoh No. 15', 26248500, 3957250, 388, '', '1984-11-22', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0016', 'Dedi Supriadi', '081249828691', 'Jl. Contoh No. 16', 50230000, 20000, 406, '', '1996-02-24', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0017', 'Ayu Lestari', '081216057605', 'Jl. Contoh No. 17', 86226500, 18466500, 177, '', '1971-01-01', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0018', 'Fajar Nugroho', '081274959298', 'Jl. Contoh No. 18', 37226000, 12759000, 457, '', '1991-10-03', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0019', 'Intan Permata', '081295222600', 'Jl. Contoh No. 19', 129961500, 56564000, 489, '', '1983-07-12', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0020', 'Yusuf Maulana', '081262148400', 'Jl. Contoh No. 20', 54177000, 4893500, 254, '', '1982-06-11', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0021', 'Siti Aisyah 2', '081259303444', 'Jl. Contoh No. 21', 96454000, 8453500, 349, '', '1985-09-05', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0022', 'Budi Santoso 2', '081219404617', 'Jl. Contoh No. 22', 87949000, 7914000, 77, '', '1985-06-03', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0023', 'Agus Wijaya 2', '081210339652', 'Jl. Contoh No. 23', 85821000, 0, 137, '', '1987-12-25', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0024', 'Dewi Lestari 2', '081259722894', 'Jl. Contoh No. 24', 79536500, 0, 428, '', '1986-05-09', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0025', 'Rina Marlina 2', '081213360218', 'Jl. Contoh No. 25', 80305500, 5789000, 433, '', '1990-04-09', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0026', 'Joko Prasetyo 2', '081269578212', 'Jl. Contoh No. 26', 40666000, 7508500, 145, '', '1996-10-22', '2026-11-23', 'CBG-UTAMA'),
  ('PLG-A-0027', 'Maya Putri 2', '081288892946', 'Jl. Contoh No. 27', 106373500, 15293500, 111, '', '1998-01-06', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0028', 'Andi Kurnia 2', '081218290688', 'Jl. Contoh No. 28', 43855000, 0, 211, '', '1982-01-13', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0029', 'Sri Wahyuni 2', '081292891724', 'Jl. Contoh No. 29', 141699500, 39595750, 54, '', '1991-08-22', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0030', 'Hendra Gunawan 2', '081267662862', 'Jl. Contoh No. 30', 26357000, 2213000, 216, '', '1979-04-07', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0031', 'Lilis Suryani 2', '081275301711', 'Jl. Contoh No. 31', 70654000, 15708000, 356, '', '1973-08-15', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0032', 'Rudi Hartono 2', '081279282155', 'Jl. Contoh No. 32', 74221000, 24312000, 343, '', '1986-01-27', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0033', 'Nur Halimah 2', '081283700648', 'Jl. Contoh No. 33', 37240500, 10868000, 23, '', '1990-10-11', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0034', 'Eko Saputra 2', '081237427268', 'Jl. Contoh No. 34', 68879000, 20441000, 134, '', '1972-02-06', '2026-11-22', 'CBG-UTAMA'),
  ('PLG-A-0035', 'Fitri Rahmawati 2', '081255032510', 'Jl. Contoh No. 35', 65173000, 7865750, 394, '', '1983-10-08', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0036', 'Dedi Supriadi 2', '081291013770', 'Jl. Contoh No. 36', 108950000, 10677500, 184, '', '1984-02-28', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0037', 'Ayu Lestari 2', '081225176038', 'Jl. Contoh No. 37', 107384000, 15413000, 209, '', '1986-08-21', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0038', 'Fajar Nugroho 2', '081298386329', 'Jl. Contoh No. 38', 68213000, 6803500, 467, '', '1976-07-12', '2026-11-17', 'CBG-UTAMA'),
  ('PLG-A-0039', 'Intan Permata 2', '081218616035', 'Jl. Contoh No. 39', 86290000, 15583500, 385, '', '1992-10-02', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0040', 'Yusuf Maulana 2', '081224121345', 'Jl. Contoh No. 40', 41514000, 5000000, 247, '', '1998-11-25', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0041', 'Siti Aisyah 3', '081212765912', 'Jl. Contoh No. 41', 76214000, 14246500, 186, '', '1986-10-26', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0042', 'Budi Santoso 3', '081268529385', 'Jl. Contoh No. 42', 93432000, 32033000, 113, '', '1971-03-25', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0043', 'Agus Wijaya 3', '081229275545', 'Jl. Contoh No. 43', 65215000, 7281500, 283, '', '1987-01-18', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0044', 'Dewi Lestari 3', '081216221407', 'Jl. Contoh No. 44', 92201000, 25265500, 366, '', '1984-11-03', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0045', 'Rina Marlina 3', '081256596049', 'Jl. Contoh No. 45', 67068500, 14783750, 12, '', '1975-06-28', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0046', 'Joko Prasetyo 3', '081265779575', 'Jl. Contoh No. 46', 74554000, 3518000, 348, '', '1978-01-10', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0047', 'Maya Putri 3', '081287059018', 'Jl. Contoh No. 47', 119809000, 29117000, 168, '', '1974-04-04', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0048', 'Andi Kurnia 3', '081215190562', 'Jl. Contoh No. 48', 36770000, 25587500, 460, '', '1977-09-09', '2026-11-21', 'CBG-UTAMA'),
  ('PLG-A-0049', 'Sri Wahyuni 3', '081282251826', 'Jl. Contoh No. 49', 88440500, 6568750, 452, '', '1973-11-18', '2026-11-20', 'CBG-UTAMA'),
  ('PLG-A-0050', 'Hendra Gunawan 3', '081257516028', 'Jl. Contoh No. 50', 75159000, 15846000, 399, '', '1972-11-01', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0051', 'Lilis Suryani 3', '081257085786', 'Jl. Contoh No. 51', 103623500, 16463750, 59, '', '1990-12-25', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0052', 'Rudi Hartono 3', '081263012501', 'Jl. Contoh No. 52', 110637500, 44357250, 450, '', '1986-06-23', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0053', 'Nur Halimah 3', '081225078702', 'Jl. Contoh No. 53', 13221000, 8971000, 389, '', '1983-12-27', '2026-11-19', 'CBG-UTAMA'),
  ('PLG-A-0054', 'Eko Saputra 3', '081294658296', 'Jl. Contoh No. 54', 67785000, 3866000, 458, '', '1971-09-20', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0055', 'Fitri Rahmawati 3', '081276335207', 'Jl. Contoh No. 55', 110418000, 3800000, 136, '', '1979-04-25', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0056', 'Dedi Supriadi 3', '081269981041', 'Jl. Contoh No. 56', 112953000, 33230500, 490, '', '1970-09-02', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0057', 'Ayu Lestari 3', '081212380077', 'Jl. Contoh No. 57', 90953500, 19505000, 165, '', '1996-10-01', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0058', 'Fajar Nugroho 3', '081269598976', 'Jl. Contoh No. 58', 116151000, 38577500, 126, '', '1981-01-08', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0059', 'Intan Permata 3', '081280408671', 'Jl. Contoh No. 59', 37245000, 151500, 78, '', '1989-04-09', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0060', 'Yusuf Maulana 3', '081260272669', 'Jl. Contoh No. 60', 46601000, 8224500, 333, '', '1974-04-07', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0061', 'Siti Aisyah 4', '081275101671', 'Jl. Contoh No. 61', 94678000, 30587500, 54, '', '1974-11-06', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0062', 'Budi Santoso 4', '081267247337', 'Jl. Contoh No. 62', 131341000, 25457000, 351, '', '1975-03-24', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0063', 'Agus Wijaya 4', '081299421799', 'Jl. Contoh No. 63', 53863000, 8623000, 76, '', '1972-09-28', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0064', 'Dewi Lestari 4', '081220409625', 'Jl. Contoh No. 64', 97531000, 18314250, 166, '', '1986-08-12', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0065', 'Rina Marlina 4', '081215289668', 'Jl. Contoh No. 65', 51817500, 56750, 182, '', '1997-03-03', '2026-11-22', 'CBG-UTAMA'),
  ('PLG-A-0066', 'Joko Prasetyo 4', '081235113375', 'Jl. Contoh No. 66', 102343000, 14996000, 54, '', '1983-01-13', '2026-11-23', 'CBG-UTAMA'),
  ('PLG-A-0067', 'Maya Putri 4', '081258712041', 'Jl. Contoh No. 67', 67488000, 3542500, 62, '', '1995-11-22', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0068', 'Andi Kurnia 4', '081236592854', 'Jl. Contoh No. 68', 90218500, 12838500, 424, '', '1986-05-03', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0069', 'Sri Wahyuni 4', '081290004487', 'Jl. Contoh No. 69', 48892500, 14852500, 8, '', '1979-11-24', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0070', 'Hendra Gunawan 4', '081249858702', 'Jl. Contoh No. 70', 83936000, 16712000, 443, '', '1975-08-13', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0071', 'Lilis Suryani 4', '081231644594', 'Jl. Contoh No. 71', 104969000, 27656500, 113, '', '1977-06-15', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0072', 'Rudi Hartono 4', '081257362395', 'Jl. Contoh No. 72', 105725500, 9844250, 460, '', '1994-11-28', '2026-11-24', 'CBG-UTAMA'),
  ('PLG-A-0073', 'Nur Halimah 4', '081233913800', 'Jl. Contoh No. 73', 59341000, 13115500, 323, '', '1997-12-07', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0074', 'Eko Saputra 4', '081295430145', 'Jl. Contoh No. 74', 79630500, 33885000, 244, '', '1994-09-13', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0075', 'Fitri Rahmawati 4', '081245226147', 'Jl. Contoh No. 75', 115224000, 25858000, 93, '', '1975-01-13', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0076', 'Dedi Supriadi 4', '081261118647', 'Jl. Contoh No. 76', 102714000, 25647000, 254, '', '1985-04-05', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0077', 'Ayu Lestari 4', '081255461436', 'Jl. Contoh No. 77', 78318500, 15037500, 500, '', '1988-07-02', '2026-11-20', 'CBG-UTAMA'),
  ('PLG-A-0078', 'Fajar Nugroho 4', '081219891244', 'Jl. Contoh No. 78', 93699000, 19615500, 460, '', '1985-02-03', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0079', 'Intan Permata 4', '081245700880', 'Jl. Contoh No. 79', 112829000, 31850500, 91, '', '1999-06-28', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0080', 'Yusuf Maulana 4', '081222500450', 'Jl. Contoh No. 80', 96851500, 37194500, 440, '', '1982-06-09', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0081', 'Siti Aisyah 5', '081247517413', 'Jl. Contoh No. 81', 55367000, 5978500, 123, '', '1999-08-23', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0082', 'Budi Santoso 5', '081267199636', 'Jl. Contoh No. 82', 42394000, 4680500, 118, '', '1987-03-12', '2026-11-23', 'CBG-UTAMA'),
  ('PLG-A-0083', 'Agus Wijaya 5', '081223863339', 'Jl. Contoh No. 83', 57944000, 19747000, 499, '', '1989-10-18', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0084', 'Dewi Lestari 5', '081270600710', 'Jl. Contoh No. 84', 30943000, 9498500, 277, '', '1980-09-01', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0085', 'Rina Marlina 5', '081238809277', 'Jl. Contoh No. 85', 103180500, 34622250, 459, '', '1997-01-05', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0086', 'Joko Prasetyo 5', '081255190866', 'Jl. Contoh No. 86', 60295000, 7307000, 389, '', '1976-06-10', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0087', 'Maya Putri 5', '081222219942', 'Jl. Contoh No. 87', 115533000, 4337000, 13, '', '1975-08-25', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0088', 'Andi Kurnia 5', '081231373623', 'Jl. Contoh No. 88', 114247000, 24136500, 133, '', '1984-10-22', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0089', 'Sri Wahyuni 5', '081250680886', 'Jl. Contoh No. 89', 119890000, 12830500, 391, '', '1986-03-10', '2026-11-25', 'CBG-UTAMA'),
  ('PLG-A-0090', 'Hendra Gunawan 5', '081234980685', 'Jl. Contoh No. 90', 70540500, 11931250, 487, '', '1971-10-26', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0091', 'Lilis Suryani 5', '081287696166', 'Jl. Contoh No. 91', 99604500, 11107000, 470, '', '1992-08-16', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0092', 'Rudi Hartono 5', '081273277038', 'Jl. Contoh No. 92', 160116500, 17198000, 245, '', '1974-10-27', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0093', 'Nur Halimah 5', '081297595898', 'Jl. Contoh No. 93', 76514500, 11858500, 262, '', '1975-11-24', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0094', 'Eko Saputra 5', '081283206220', 'Jl. Contoh No. 94', 102684000, 12859500, 115, '', '1996-04-28', '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-0095', 'Fitri Rahmawati 5', '081287694264', 'Jl. Contoh No. 95', 31515000, 110000, 91, '', '1981-12-10', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0096', 'Dedi Supriadi 5', '081244333635', 'Jl. Contoh No. 96', 13262500, 1000500, 410, '', '1983-08-15', '2026-11-23', 'CBG-UTAMA'),
  ('PLG-A-0097', 'Ayu Lestari 5', '081283795317', 'Jl. Contoh No. 97', 57946500, 6549000, 155, '', '1998-11-19', '2026-11-21', 'CBG-UTAMA'),
  ('PLG-A-0098', 'Fajar Nugroho 5', '081215970087', 'Jl. Contoh No. 98', 153240000, 18228000, 269, '', '1977-11-06', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-0099', 'Intan Permata 5', '081292004199', 'Jl. Contoh No. 99', 46107000, 26833000, 15, '', '1973-07-27', '2026-11-25', 'CBG-UTAMA')
  on conflict (id) do nothing;

insert into pelanggan (id, nama, telepon, alamat, total_beli, piutang, poin, tier, tanggal_lahir, terakhir_beli, cabang_id) values
  ('PLG-A-0100', 'Yusuf Maulana 5', '081253549096', 'Jl. Contoh No. 100', 103030000, 23185000, 182, '', '1990-02-12', '2026-11-27', 'CBG-UTAMA'),
  ('PLG-A-EDGE-Q1', 'D''Angelo Cell', '081299988877', '', 60736500, 7044500, 0, '', NULL, '2026-11-23', 'CBG-UTAMA'),
  ('PLG-A-EDGE-Q2', 'Toko O''Brien', '081277766655', '', 92015000, 25653500, 0, '', NULL, '2026-11-26', 'CBG-UTAMA'),
  ('PLG-A-EDGE-NONE', 'Pelanggan Belum Beli', '081255544433', '', 0, 0, 0, '', NULL, NULL, 'CBG-UTAMA')
  on conflict (id) do nothing;

insert into pemasok (id, nama, telepon, alamat, hutang, cabang_id) values
  ('PMS-A-1', 'Rane', '', '', 9610200, 'CBG-UTAMA'),
  ('PMS-A-2', 'Distributor Jaya', '', '', 4466140, 'CBG-UTAMA'),
  ('PMS-A-3', 'Toko Grosir Makmur', '', '', 12870600, 'CBG-UTAMA')
  on conflict (id) do nothing;

insert into promo (id, nama, jenis, syarat_json, nilai, mulai, selesai, jam_mulai, jam_selesai, hari, aktif, cabang_id) values
  ('PRM-A-DISKON10', 'Diskon 10% min 100rb', 'DiskonPersen', '{"minTotal":100000}'::jsonb, 10, NULL, NULL, NULL, NULL, '', true, 'CBG-UTAMA'),
  ('PRM-A-NOM5', 'Diskon Rp5.000 min 50rb', 'DiskonNominal', '{"minTotal":50000}'::jsonb, 5000, NULL, NULL, NULL, NULL, '', true, 'CBG-UTAMA'),
  ('PRM-A-B2G1', 'Beli 2 Gratis 1 (PRD-A-KEL-0001)', 'BeliXGratisY', '{"produkId":"PRD-A-KEL-0001","beli":2,"gratis":1}'::jsonb, 0, NULL, NULL, NULL, NULL, '', true, 'CBG-UTAMA'),
  ('PRM-A-OFF', 'Promo Nonaktif', 'DiskonPersen', '{"minTotal":0}'::jsonb, 20, NULL, NULL, NULL, NULL, '', false, 'CBG-UTAMA'),
  ('PRM-A-EXP', 'Promo Kedaluwarsa', 'DiskonPersen', '{"minTotal":0}'::jsonb, 15, NULL, '2026-11-26', NULL, NULL, '', true, 'CBG-UTAMA'),
  ('PRM-A-HH', 'Happy Hour Hari Ini', 'HappyHour', '{"minTotal":20000}'::jsonb, 5000, NULL, NULL, '00:00', '23:59', 'Jumat', true, 'CBG-UTAMA')
  on conflict (id) do nothing;

insert into tier_member (tier, min_total_beli, diskon_persen, manfaat) values
  ('Silver', 500000, 2, 'Diskon 2%'),
  ('Gold', 2000000, 5, 'Diskon 5%')
  on conflict (tier) do nothing;

insert into katalog (id, nama, tampilkan_gambar, tampilkan_harga, tampilkan_stok, sembunyikan_stok_kosong, tampilkan_keterangan, footer, aktif, cabang_id) values
  ('KTG-A-UTAMA', 'Katalog Utama', true, true, false, false, true, 'Terima kasih sudah berbelanja!', true, 'CBG-UTAMA')
  on conflict (id) do nothing;

insert into grup_produk (id, nama) values
  ('GRP-A-1', 'HP'),
  ('GRP-A-2', 'Aksesoris'),
  ('GRP-A-3', 'Kelontong'),
  ('GRP-A-4', 'Minuman'),
  ('GRP-A-5', 'Jasa'),
  ('GRP-A-6', 'Voucher'),
  ('GRP-A-7', 'Pakaian'),
  ('GRP-A-8', 'Perawatan')
  on conflict (id) do nothing;

insert into jenis_pembayaran (id, nama, aktif) values
  ('JBY-1', 'Tunai', true),
  ('JBY-2', 'Debit', true),
  ('JBY-3', 'GoPay', true),
  ('JBY-4', 'OVO', true),
  ('JBY-5', 'QRIS', true),
  ('JBY-6', 'Shopeepay', true),
  ('JBY-7', 'Transfer Bank', true),
  ('JBY-8', 'VISA', true),
  ('JBY-9', 'MasterCard', true),
  ('JBY-10', 'e-Money', true)
  on conflict (id) do nothing;

insert into satuan (id, nama, singkatan, desimal) values
  ('SAT-PCS', 'pcs', 'pcs', false),
  ('SAT-LUSIN', 'lusin', 'lsn', false),
  ('SAT-DUS', 'dus', 'dus', false),
  ('SAT-KG', 'kg', 'kg', true),
  ('SAT-LITER', 'liter', 'L', true)
  on conflict (id) do nothing;

insert into item_pengeluaran (id, nama) values
  ('IPG-AIR', 'Air'),
  ('IPG-GAS', 'Gas'),
  ('IPG-LISTRIK', 'Listrik'),
  ('IPG-LAINNYA', 'Lainnya')
  on conflict (id) do nothing;

insert into terjemahan (istilah, terjemahan) values
  ('Kasir', 'Kasir'),
  ('Pelanggan', 'Pelanggan'),
  ('Lunas', 'Lunas'),
  ('Kurang', 'Kurang'),
  ('Belum Dibayar', 'Belum Dibayar'),
  ('Total', 'Total'),
  ('Subtotal', 'Subtotal'),
  ('Kembali', 'Kembali'),
  ('Proses', 'Proses'),
  ('Selesai', 'Selesai'),
  ('Diambil', 'Diambil'),
  ('Antri', 'Antri')
  on conflict (istilah) do nothing;

insert into bahan_baku (id, nama, satuan, stok, harga_per_satuan, stok_minimum, cabang_id) values
  ('BHN-A-1', 'Kopi bubuk', 'gram', 5000, 200, 500, 'CBG-UTAMA'),
  ('BHN-A-2', 'Gula', 'gram', 8000, 18, 1000, 'CBG-UTAMA')
  on conflict (id) do nothing;

insert into pegawai (id, nama, telepon, jabatan, target, komisi_persen, aktif) values
  ('PGW-A-1', 'Rina Wijaya', '081211111111', 'Kasir', 5000000, 2, true),
  ('PGW-A-2', 'Budi Santoso', '081222222222', 'Kasir', 5000000, 2, true),
  ('PGW-A-3', 'Dewi Lestari', '081233333333', 'Admin', 0, 0, true)
  on conflict (id) do nothing;

insert into transaksi_cepat (id, nama, pelanggan, items_json, cabang_id) values
  ('TCP-A-1', 'Paket Cepat 1', 'Umum', '[{"id":"PRD-A-AKS-0198","nama":"Batre Oppo A57","Harga":19000,"Qty":1},{"id":"PRD-A-HP-0340","nama":"HP REDMI A57 3/32 55610","Harga":2680000,"Qty":2},{"id":"PRD-A-AKS-0144","nama":"Voucher Telkomsel 10GB","Harga":65000,"Qty":2}]'::jsonb, 'CBG-UTAMA'),
  ('TCP-A-2', 'Paket Cepat 2', 'Umum', '[{"id":"PRD-A-AKS-0091","nama":"Case Oppo A57","Harga":22000,"Qty":1},{"id":"PRD-A-AKS-0070","nama":"Voucher Telkomsel 5GB","Harga":64000,"Qty":1}]'::jsonb, 'CBG-UTAMA'),
  ('TCP-A-3', 'Paket Cepat 3', 'Umum', '[{"id":"PRD-A-AKS-0093","nama":"Voucher Tri 8GB","Harga":52000,"Qty":1},{"id":"PRD-A-HP-0181","nama":"HP INFINIX Y20 4/128 79013","Harga":1870000,"Qty":3}]'::jsonb, 'CBG-UTAMA')
  on conflict (id) do nothing;

insert into transaksi_tertunda (id, tanggal, pelanggan, kasir, items_json, total, cabang_id, meja, catatan) values
  ('TTD-A-0001', '2026-11-26 10:30:00+07:00', 'Umum', 'Admin', '[{"id":"PRD-A-HP-0063","nama":"HP OPPO 9A 3/64 96242","Harga":2090000,"Qty":3},{"id":"PRD-A-HP-0201","nama":"HP NOKIA C15 4/64 41094","Harga":1070000,"Qty":1},{"id":"PRD-A-KEL-0143","nama":"Susu UHT 1L","Harga":20000,"Qty":3},{"id":"PRD-A-HP-0477","nama":"HP INFINIX C15 3/32 90452","Harga":650000,"Qty":1}]'::jsonb, 8050000, 'CBG-UTAMA', '', 'Parkir kasir (uji)'),
  ('TTD-A-0002', '2026-11-26 19:51:00+07:00', 'Siti Aisyah', 'Admin', '[{"id":"PRD-A-HP-0370","nama":"HP REALME S23 2/16 12820","Harga":940000,"Qty":1},{"id":"PRD-A-HP-0496","nama":"HP REDMI Y16 4/64 47045","Harga":1520000,"Qty":1},{"id":"PRD-A-AKS-0013","nama":"Case Samsung A03","Harga":41000,"Qty":2},{"id":"PRD-A-HP-0240","nama":"HP NOKIA S23 3/64 56004","Harga":1050000,"Qty":2}]'::jsonb, 4642000, 'CBG-UTAMA', '', 'Parkir kasir (uji)'),
  ('TTD-A-0003', '2026-11-24 15:56:00+07:00', 'Siti Aisyah', 'Admin', '[{"id":"PRD-A-AKS-0240","nama":"Voucher XL 10GB","Harga":55000,"Qty":1},{"id":"PRD-A-HP-0120","nama":"HP REALME V5S 3/32 94515","Harga":790000,"Qty":2}]'::jsonb, 1635000, 'CBG-UTAMA', '', 'Parkir kasir (uji)'),
  ('TTD-A-0004', '2026-11-26 18:00:00+07:00', 'Siti Aisyah', 'Admin', '[{"id":"PRD-A-AKS-0021","nama":"Handsfree Samsung","Harga":18000,"Qty":3},{"id":"PRD-A-HP-0423","nama":"HP INFINIX Y16 2/16 64863","Harga":1140000,"Qty":1},{"id":"PRD-A-HP-0290","nama":"HP REDMI A15 4/64 25389","Harga":2160000,"Qty":2}]'::jsonb, 5514000, 'CBG-UTAMA', '', 'Parkir kasir (uji)'),
  ('TTD-A-0005', '2026-11-27 19:22:00+07:00', 'Budi Santoso', 'Admin', '[{"id":"PRD-A-KEL-0029","nama":"Saus sambal","Harga":12000,"Qty":3},{"id":"PRD-A-AKS-0181","nama":"Batre Nokia BL-4C","Harga":33000,"Qty":1},{"id":"PRD-A-HP-0145","nama":"HP ITEL C3 3/64 46957","Harga":660000,"Qty":3}]'::jsonb, 2049000, 'CBG-UTAMA', '', 'Parkir kasir (uji)')
  on conflict (id) do nothing;

-- PLG-UMUM sudah ada di toko (seed bawaan); sesuaikan totalnya dengan
-- transaksi seed ini + transaksi seed bawaan TRX-8250237222 (Rp10.000, Lunas).
update pelanggan set total_beli = 5380950500, piutang = 1183620250, terakhir_beli = '2026-11-27' where id = 'PLG-UMUM';
