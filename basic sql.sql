-- untuk connect ke postgres
psql -U postgres -p 5432 -h localhost
psql -U postgres


-- untuk melihta database
\l

-- untuk membuat DATABASE dengan query sql
-- CREATE DATABASE [nama_database]
CREATE DATABASE fundamental13;

-- untuk masuk /pilih /connect ke database 
-- \c [nama_database]
\c fundamental13

-- untuk menghapus database perintah query
-- DROP DATABASE [nama_database]
DROP DATABASE helo_world

-- untuk memilihat TABLE
\d

-- Cara membuat TABLE
CREATE TABLE users(
    id INT GENERATED ALWAYS AS IDENTITY,
    email VARCHAR(64),
    fullname VARCHAR(64),
    password VARCHAR(64),
    phone VARCHAR(16)
);
INSERT INTO users(email,fullname, password, phone)VALUES('risano@gmail.com', 'risano akbar', 'abcd1234', '081231232');

CREATE TABLE categori_product(
    id INT,
    nama VARCHAR(64),
    description VARCHAR(128) NOT NULL,
    create_data VARCHAR(64) DEFAULT 'admin',
    PRIMARY KEY (id)
);

-- untuk melihat detail TABLE
-- \d [nama_table]
\d users

-- untuk menghapus TABLE di database
-- DROP TABLE [nama_table]
DROP TABLE categori_product;


-- CRUD
-- untuk melihat record /data di table
SELECT [field1], [filed2] FROM categori_product;

-- untuk insert / memasukan record / data ke table
INSERT INTO categori_product(id, name)VALUES(100, 'pakaian');

-- untuk sorting kita menggunakan ORDER BY 'desc' | 'asc'
SELECT * FROM categori_product ORDER BY id asc;

-- untuk memilih / filter bisa menggukan WREHE
DELETE FROM categori_product WHERE id < 3;
SELECT * FROM categori_product WHERE id = 100;



-- untuk menghapus record / data pada TABLE
DELETE FROM [nama_table] WHERE id = 3;


-- untuk mengupdate record / data menggunakan perinta query
UPDATE categori_product SET nama = 'assesories', WHERE id = 3;

2.a 
UPDATE categori_product SET nama = 'perhiasan', description = 'data perhiasan', create_data = 'budi' WHERE id = 3;
DELETE FROM 
