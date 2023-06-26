CREATE TABLE products(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(64) NOT NULL,
    description TEXT,
    price INT, 
    stock INT DEFAULT 0,
    categories_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (categories_id) REFERENCES categori_product(id)
);

INSERT INTO products(name, description, price, stock, categories_id)VALUES('Indomie kaldu ayam',	'bla bla', 3000, 50,1), ('Nutri test',	'nuttri sari bla bla',	1500,	30,	2),('Mie gelas bla' ,'bla bla',	1500,	20,	1),('Gelas Catik CD	gelas', 'cantik bla bla',	30000,	10,	3);

SELECT products.id, products.name, products.description, products.price, products.stock, products.categories_id, categori_product.nama AS categori_name, categori_product.description AS categori_description,  categori_product.create_data FROM products JOIN categori_product ON products.categories_id = categori_product.id;

SELECT products.*, categori_product.* FROM products JOIN categori_product ON products.categories_id = categori_product.id;

-- ALTER TABLE


SELECT * FROM product WHERE id IN(1, 4);

-- Seaching
SELECT * FROM products WHERE name ilike '%indo%'


ALTER TABLE users ADD address TEXT;

ALTER TABLE users ADD PRIMARY KEY (id);

ALTER TABLE users ADD COLUMN categori_id2 INT ;

ALTER TABLE users ADD FOREIGN KEY (categori_id) REFERENCES categori_product(id)

ALTER TABLE 
ALTER TABLE users ALTER COLUMN alamat TYPE varchar(64);

ALTER TABLE users RENAME COLUMN address TO alamat;

ALTER TABLE users DROP COLUMN alamat;


