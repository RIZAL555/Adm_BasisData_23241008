CREATE DATABASE IF NOT EXISTS apotek;
USE apotek;

-- Tabel kategori obat
CREATE TABLE kategori (
    id_kategori INT PRIMARY KEY,
    manfaat VARCHAR(255)
);

-- Tabel email pelanggan
CREATE TABLE email (
    id_email INT PRIMARY KEY,
    email_1 VARCHAR(100),
    email_2 VARCHAR(100)
);

-- Tabel nomor telepon pelanggan
CREATE TABLE nmr_tlp_plgn (
    id_nomor_tlp INT PRIMARY KEY,
    nomor_1 VARCHAR(15),
    nomor_2 VARCHAR(15)
);

-- Tabel pelanggan
CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama VARCHAR(100),
    alamat VARCHAR(255),
    id_nomor_tlp INT,
    id_email INT,
    FOREIGN KEY (id_nomor_tlp) REFERENCES nmr_tlp_plgn(id_nomor_tlp),
    FOREIGN KEY (id_email) REFERENCES email(id_email)
);

-- Tabel nomor telepon supplier
CREATE TABLE nmr_tlp_supp (
    id_nomor_tlp INT PRIMARY KEY,
    nomor_1 VARCHAR(15),
    nomor_2 VARCHAR(15)
);
-- Insert data ke tabel nmr_tlp_plgn
INSERT INTO nmr_tlp_plgn (id_nomor_tlp, nomor_1, nomor_2) VALUES
(1, '081234567890', '081298765432'),
(2, '082112345678', '082176543210'),
(3, '083812345678', '083876543210'),
(4, '085612345678', '085676543210'),
(5, '087712345678', '087776543210');

-- Insert data ke tabel email
INSERT INTO email (id_email, email_1, email_2) VALUES
(1, 'pelanggan1@gmail.com', 'pelanggan1_alt@gmail.com'),
(2, 'pelanggan2@gmail.com', 'pelanggan2_alt@gmail.com'),
(3, 'pelanggan3@gmail.com', 'pelanggan3_alt@gmail.com'),
(4, 'pelanggan4@gmail.com', 'pelanggan4_alt@gmail.com'),
(5, 'pelanggan5@gmail.com', 'pelanggan5_alt@gmail.com');

-- Insert data ke tabel pelanggan
INSERT INTO pelanggan (id_pelanggan, nama, alamat, id_nomor_tlp, id_email) VALUES
(1, 'Andi Wijaya', 'Jl. Melati No. 10', 1, 1),
(2, 'Budi Santoso', 'Jl. Mawar No. 5', 2, 2),
(3, 'Citra Lestari', 'Jl. Kenanga No. 8', 3, 3),
(4, 'Dewi Putri', 'Jl. Flamboyan No. 12', 4, 4),
(5, 'Eko Prasetyo', 'Jl. Anggrek No. 3', 5, 5);

-- Insert data ke tabel nmr_tlp_supp
INSERT INTO nmr_tlp_supp (id_nomor_tlp, nomor_1, nomor_2) VALUES
(1, '081234560001', '081234560002'),
(2, '082212340001', '082212340002'),
(3, '083812340001', '083812340002'),
(4, '084412340001', '084412340002'),
(5, '085512340001', '085512340002');

-- Insert data ke tabel supplier
INSERT INTO supplier (id_supplier, nama, alamat, id_nomor_tlp) VALUES
(1, 'PT Sehat Selalu', 'Jl. Industri No. 100', 1),
(2, 'CV Sumber Sehat', 'Jl. Raya No. 200', 2),
(3, 'PT Farma Medika', 'Jl. Pabrik No. 300', 3),
(4, 'UD Obat Sehat', 'Jl. Pasar No. 400', 4),
(5, 'PT Apotek Jaya', 'Jl. Apotek No. 500', 5);

-- Insert data ke tabel kategori
INSERT INTO kategori (id_kategori, manfaat) VALUES
(1, 'Penurun Panas'),
(2, 'Antibiotik'),
(3, 'Vitamin'),
(4, 'Anti Nyeri'),
(5, 'Obat Kulit');

-- Insert data ke tabel obat
INSERT INTO obat (id_obat, nama, id_kategori, jumlah_stok, tgl_kadaluwarsa, id_supplier) VALUES
(1, 'Paracetamol', 1, 100, '2026-12-31', 1),
(2, 'Amoxicillin', 2, 150, '2025-06-30', 2),
(3, 'Vitamin C', 3, 200, '2027-03-15', 3),
(4, 'Ibuprofen', 4, 120, '2026-09-10', 4),
(5, 'Salep Kulit', 5, 80, '2025-11-20', 5);

-- Insert data ke tabel spr_id_obat (relasi antar obat)
INSERT INTO spr_id_obat (id_obat_a, id_obat_b) VALUES
(1, 3),  -- Paracetamol + Vitamin C
(2, 4),  -- Amoxicillin + Ibuprofen
(3, 5),  -- Vitamin C + Salep Kulit
(1, 2),  -- Paracetamol + Amoxicillin
(4, 5);  -- Ibuprofen + Salep Kulit

