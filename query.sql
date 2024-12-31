-- Tabel Kasir
CREATE TABLE kasir (
    id_kasir INT PRIMARY KEY,
    nama VARCHAR(100),
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255)
);

-- Tabel Pelanggan
CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama VARCHAR(100),
    telepon VARCHAR(15)
);

-- Tabel Produk
CREATE TABLE produk (
    id_produk INT PRIMARY KEY,
    nama VARCHAR(100),
    harga DECIMAL(10,2),
    stok INT
);

-- Tabel Transaksi (ACID Compliance)
CREATE TABLE transaksi (
    id_transaksi INT PRIMARY KEY,
    id_kasir INT,
    id_pelanggan INT,
    tanggal DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (id_kasir) REFERENCES kasir(id_kasir),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

-- Tabel Detail Transaksi (ACID Compliance)
CREATE TABLE detail_transaksi (
    id_detail INT PRIMARY KEY,
    id_transaksi INT,
    id_produk INT,
    jumlah INT,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);