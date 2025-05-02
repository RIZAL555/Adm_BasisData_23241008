-- 1. TABEL kategori
SELECT k.manfaat AS nama_kategori FROM kategori k;
SELECT k.id_kategori AS kode_kategori, k.manfaat AS nama_kategori FROM kategori k;

-- 2. TABEL email
SELECT e.email_1 AS email_utama FROM email e;
SELECT e.email_1 AS email_utama, e.email_2 AS email_cadangan FROM email e;

-- 3. TABEL nmr_tlp_plgn
SELECT n.nomor_1 AS telp_utama_plgn FROM nmr_tlp_plgn n;
SELECT n.nomor_1 AS telp_utama_plgn, n.nomor_2 AS telp_cadangan_plgn FROM nmr_tlp_plgn n;

-- 4. TABEL pelanggan
SELECT p.nama AS nama_pelanggan FROM pelanggan p;
SELECT p.nama AS nama_pelanggan, p.alamat AS alamat_pelanggan FROM pelanggan p;

-- 5. TABEL nmr_tlp_supp
SELECT n.nomor_1 AS telp_utama_supp FROM nmr_tlp_supp n;
SELECT n.nomor_1 AS telp_utama_supp, n.nomor_2 AS telp_cadangan_supp FROM nmr_tlp_supp n;

-- 6. TABEL supplier
SELECT s.nama AS nama_supplier FROM supplier s;
SELECT s.nama AS nama_supplier, s.alamat AS alamat_supplier FROM supplier s;

-- 7. TABEL obat
SELECT o.nama AS nama_obat FROM obat o;
SELECT o.nama AS nama_obat, o.jumlah_stok AS stok_obat FROM obat o;

-- 8. TABEL spr_id_obat
SELECT s.id_obat_a AS id_obat_utama FROM spr_id_obat s;
SELECT s.id_obat_a AS id_obat_utama, s.id_obat_b AS id_obat_pendamping FROM spr_id_obat s;

-- 9. TABEL (JOIN) pelanggan + email
SELECT e.email_1 AS email_pelanggan FROM pelanggan p JOIN email e ON p.id_email = e.id_email;
SELECT p.nama AS nama_pelanggan, e.email_1 AS email_pelanggan FROM pelanggan p JOIN email e ON p.id_email = e.id_email;

-- 10. TABEL (JOIN) obat + kategori
SELECT k.manfaat AS kategori_obat FROM obat o JOIN kategori k ON o.id_kategori = k.id_kategori;
SELECT o.nama AS nama_obat, k.manfaat AS kategori_obat FROM obat o JOIN kategori k ON o.id_kategori = k.id_kategori;