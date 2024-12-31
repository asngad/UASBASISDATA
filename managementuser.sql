-- Create Users
CREATE USER 'super_user'@'localhost' IDENTIFIED BY 'password123';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password456';
CREATE USER 'basic_user'@'localhost' IDENTIFIED BY 'password789';

-- Super User Privileges (Full Access)
GRANT ALL PRIVILEGES ON database_name.* TO 'super_user'@'localhost';

-- Admin Privileges (Insert & Update on specific tables)
GRANT INSERT, UPDATE ON database_name.produk TO 'admin'@'localhost';
GRANT INSERT, UPDATE ON database_name.kasir TO 'admin'@'localhost';
GRANT INSERT, UPDATE ON database_name.pelanggan TO 'admin'@'localhost';

-- Basic User Privileges (Select only)
GRANT SELECT ON database_name.* TO 'basic_user'@'localhost';

FLUSH PRIVILEGES;