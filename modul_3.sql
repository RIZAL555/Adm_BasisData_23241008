-- Modul    : 3 Nilai Literal, Operator, Fungsi, Date, dan Klausal WHERE
-- Nama     : M.Afrizal
-- NIM      : 23241008
-- Kelas    : PTI_A_4

-- Menggunakan database
USE pti_mart;

--- Praktek 1
SELECT 77; -- Mengambil nilai literal 77
SELECT 77 AS angka; -- Mengambil nilai literal 77 dan memberi alias 'angka'

--- Praktek 2
SELECT 77 AS angka, TRUE AS nilai_logika, 'PTI' AS teks; -- Mengambil beberapa nilai dengan alias

--- Praktek 3
SELECT NULL AS kosong; -- Mengambil nilai NULL dan memberi alias 'kosong'

--- Praktek 4
SELECT 5 % 2 AS sisa_bagi, 5 / 2 AS hasil_bagi_1, 5 DIV 2 AS hasil_bagi_2; 
-- Mengambil sisa bagi, hasil bagi biasa, dan hasil bagi dengan pembagian bulat

--- Latihan Mandiri 1
SELECT 4 * 2 AS hasil_1; -- hasil: 8

SELECT (4 * 8) % 7 AS hasil_2; -- hasil: 32 % 7 = 4

SELECT (4 * 8) MOD 7 AS hasil_3; -- hasil: 4

--- Praktek 5
SELECT qty * harga AS total_beli FROM tr_penjualan; -- Menghitung total beli

--- Praktek 6
SELECT 5 = 5 AS sama, 5 <> 5 AS tidak_sama, 5 <> 4 AS tidak_sama_2, 
       5 != 5 AS tidak_sama_3, 5 != 4 AS tidak_sama_4, 5 > 4 AS lebih_besar; 
-- Mengambil hasil perbandingan

--- Latihan Mandiri 2
SELECT 1 = TRUE AS hasil_1; -- hasil: 1 (true)

SELECT 1 = FALSE AS hasil_2; -- hasil: 0 (false)

SELECT 5 >= 5 AS hasil_3; -- hasil: 1 (true)

SELECT 5.2 = 5.20000 AS hasil_4; -- hasil: 1 (true)

SELECT NULL = 1 AS hasil_5; -- hasil: NULL

SELECT NULL = NULL AS hasil_6; -- hasil: NULL

--- Praktek 7
SELECT nama_produk, qty > 3 AS lebih_dari_tiga FROM tr_penjualan; -- Menampilkan nama produk dan qty lebih dari 3

--- Praktek 8
SELECT POW(3, 2) AS pangkat, ROUND(3.14) AS bulat_1, ROUND(3.54) AS bulat_2, 
       ROUND(3.155, 1) AS bulat_3, ROUND(3.155, 2) AS bulat_4,
       FLOOR(4.28) AS lantai_1, FLOOR(4.78) AS lantai_2, 
       CEILING(4.39) AS langit_1, CEILING(4.55) AS langit_2; 
-- Mengambil hasil dari fungsi matematika

--- Praktek 9
SELECT NOW() AS waktu_sekarang, YEAR('2022-05-03') AS tahun, 
       DATEDIFF('2022-07-22', '2022-05-03') AS selisih_hari, 
       DAY('2022-05-03') AS hari; 
-- Mengambil informasi waktu dan tanggal

--- Latihan Mandiri 3
SELECT DATEDIFF('2022-07-23', NOW()) AS selisih_hari; -- Menghitung selisih hari dari sekarang

SELECT YEAR('2022-07-23') AS tahun; -- Mengambil tahun dari tanggal

SELECT MONTH('2022-07-23') AS bulan; -- Mengambil bulan dari tanggal

SELECT DAY('2022-07-23') AS hari; -- Mengambil hari dari tanggal

SELECT YEAR(NOW()) AS tahun_sekarang; -- Mengambil tahun saat ini

--- Praktek 11
SELECT nama_produk, qty 
FROM tr_penjualan_dqlab WHERE qty > 3; -- Menampilkan produk dengan qty lebih dari 3

--- Praktek 12
SELECT nama_produk, qty, tgl_transaksi
FROM tr_penjualan_dqlab 
WHERE qty > 3 AND MONTH(tgl_transaksi) = 6; -- Menampilkan produk dengan qty lebih dari 3 dan bulan transaksi Juni