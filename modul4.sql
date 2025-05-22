-- Nama: M.Afrizal
-- Nim: 23241008
-- Kelas: A
-- Modul: 4


USE pti_mart;
-- Praktek 1 ORDER BY
SELECT * FROM tr_penjualan_dqlab ORDER BY qty;
SELECT nama_produk, qty FROM tr_penjualan_dqlab;
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty;

-- Praktek 2 ORDER BY 2 KOLOM
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty, nama_produk;

-- Latihan Mandiri
-- nomer 1
SELECT * FROM tr_penjualan_dqlab ORDER BY qty, tgl_transaksi;
-- nomer 2
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan;
-- nomer 3
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat;

-- ASC/Ascending (kecil ke besar) dan DESC/Descending (besar ke kecil)
-- Praktek 3
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC;
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC, nama_produk DESC;

-- Latihan Mandiri 2
-- nomer 1
SELECT * FROM tr_penjualan_dqlab ORDER BY tgl_transaksi DESC, qty ASC;
-- nomer 2
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan DESC;
-- nomer 3
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat DESC;