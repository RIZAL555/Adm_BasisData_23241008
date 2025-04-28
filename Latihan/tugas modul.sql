-- Gunakan database
USE apotek;

-- 1. kategori
SELECT kategori.manfaat AS manfaat_kategori FROM kategori;
SELECT kategori.id_kategori AS id_kategori, kategori.manfaat AS manfaat_kategori FROM kategori;

-- 2. email
SELECT email.email_1 AS email_utama FROM email;
SELECT email.email_1 AS email_utama, email.email_2 AS email_cadangan FROM email;

-- 3. nmr_tlp_plgn
SELECT nmr_tlp_plgn.nomor_1 AS nomor_utama_plgn FROM nmr_tlp_plgn;
SELECT nmr_tlp_plgn.nomor_1 AS nomor_utama_plgn, nmr_tlp_plgn.nomor_2 AS nomor_cadangan_plgn FROM nmr_tlp_plgn;

-- 4. pelanggan
SELECT pelanggan.nama AS nama_pelanggan FROM pelanggan;
SELECT pelanggan.nama AS nama_pelanggan, pelanggan.alamat AS alamat_pelanggan FROM pelanggan;

-- 5. nmr_tlp_supp
SELECT nmr_tlp_supp.nomor_1 AS nomor_utama_supp FROM nmr_tlp_supp;
SELECT nmr_tlp_supp.nomor_1 AS nomor_utama_supp, nmr_tlp_supp.nomor_2 AS nomor_cadangan_supp FROM nmr_tlp_supp;

-- 6. supplier
SELECT supplier.nama AS nama_supplier FROM supplier;
SELECT supplier.nama AS nama_supplier, supplier.alamat AS alamat_supplier FROM supplier;

-- 7. obat
SELECT obat.nama AS nama_obat FROM obat;
SELECT obat.nama AS nama_obat, obat.jumlah_stok AS stok_obat FROM obat;

-- 8. spr_id_obat
SELECT spr_id_obat.id_obat_a AS id_obat_satu FROM spr_id_obat;
SELECT spr_id_obat.id_obat_a AS id_obat_satu, spr_id_obat.id_obat_b AS id_obat_dua FROM spr_id_obat;
