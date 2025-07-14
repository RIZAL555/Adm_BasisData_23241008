-- Nama        : M.AFRIZAL
-- Nim         : 23241020
-- Kelas       : A - 4
-- Mata kuliah : Basis Data

USE pti_mart;

--- soal 1
/*Munculkan nama produk, tgl transaksi, bulan, tahun, dan selisih hari (tanpa minus) dari transaksi dengan tgl 30-12-2023 atas semua produk ditransaksikan*/

SELECT 
    nama_produk, 
    tgl_transaksi, 
    MONTH(tgl_transaksi) AS bulan, 
    YEAR(tgl_transaksi) AS tahun, 
    ABS(DATEDIFF('2023-12-30', tgl_transaksi)) AS selisih_hari
FROM 
    tr_penjualan_dqlab 
ORDER BY 
    tgl_transaksi;


-- soal 2
/*Tampilkan nama produk, harga, dan nilai transaksinya dengan nilai transaksi terkecil*/
SELECT 
    pr.nama_produk,
    pr.harga,
    ABS(t.qty * pr.harga) AS nilai_transaksi
FROM 
    tr_penjualan_dqlab t
    JOIN ms_produk_dqlab pr ON t.nama_produk = pr.nama_produk
ORDER BY 
    nilai_transaksi ASC 
LIMIT 1;

-- soal 3
/*Tampilkan bulan, nama produk, dan harga dari produk yang tidak pernah terjual pada bulan mei*/
SELECT
    5 AS bulan,
    p.nama_produk,
    p.harga
FROM
    ms_produk_dqlab p
WHERE
    p.nama_produk NOT IN (
        SELECT DISTINCT nama_produk
        FROM tr_penjualan_dqlab
        WHERE MONTH(tgl_transaksi) = 5
    )
ORDER BY
    p.nama_produk;

