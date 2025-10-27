-- Viewer Access Test
-- User: viewer_user

USE company_db;

-- ✅ Should succeed: can view all data
SELECT * FROM products;
SELECT * FROM sales;
SELECT * FROM users;

-- ⚠️ Should fail: cannot insert
INSERT INTO products (product_name, price, stock) VALUES ('Tablet', 600.00, 8);

-- ⚠️ Should fail: cannot update
UPDATE products SET stock = 5 WHERE product_id = 1;

-- ⚠️ Should fail: cannot delete
DELETE FROM products WHERE product_id = 1;

-- ⚠️ Should fail: cannot alter schema
ALTER TABLE products ADD COLUMN brand VARCHAR(50);

-- ⚠️ Should fail: cannot grant privileges
GRANT SELECT ON company_db.products TO editor;
