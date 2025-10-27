-- Admin Access Test
-- User: admin_user

USE company_db;

-- ✅ Should succeed: Admin can read all tables
SELECT * FROM products;
SELECT * FROM sales;
SELECT * FROM users;

-- ✅ Should succeed: Admin can insert data
INSERT INTO products (product_name, price, stock) VALUES ('Smartphone', 999.99, 10);

-- ✅ Should succeed: Admin can update data
UPDATE products SET stock = 20 WHERE product_id = 1;

-- ✅ Should succeed: Admin can delete data
DELETE FROM products WHERE product_id = 1;

-- ✅ Should succeed: Admin can grant privileges
GRANT SELECT ON company_db.products TO viewer;

-- ✅ Should succeed: Admin can alter table structure
ALTER TABLE products ADD COLUMN category VARCHAR(100);
