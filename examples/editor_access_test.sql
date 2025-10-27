-- Editor Access Test
-- User: editor_user

USE company_db;

-- ✅ Should succeed: can read data
SELECT * FROM products;
SELECT * FROM sales;

-- ✅ Should succeed: can insert new data
INSERT INTO products (product_name, price, stock) VALUES ('Laptop', 1500.00, 5);

-- ✅ Should succeed: can update existing data
UPDATE products SET stock = 12 WHERE product_id = 2;

-- ⚠️ Should fail: editors cannot delete data
DELETE FROM products WHERE product_id = 2;

-- ⚠️ Should fail: editors cannot alter schema
ALTER TABLE products ADD COLUMN warranty_period INT;

-- ⚠️ Should fail: editors cannot manage privileges
GRANT SELECT ON company_db.products TO viewer;
