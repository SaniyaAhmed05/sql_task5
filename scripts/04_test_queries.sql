-- Step 4: Test access for each role

-- 1. Admin Tests
-- Should succeed
SELECT * FROM company_db.products;
INSERT INTO company_db.products (product_name, price, stock) VALUES ('Phone', 999.99, 10);
UPDATE company_db.products SET stock = 15 WHERE product_id = 1;
DELETE FROM company_db.products WHERE product_id = 1;

-- 2. Editor Tests
-- Should succeed
SELECT * FROM company_db.products;
INSERT INTO company_db.products (product_name, price, stock) VALUES ('Laptop', 1200.00, 5);
UPDATE company_db.products SET stock = 10 WHERE product_id = 2;
-- Should fail
DELETE FROM company_db.products WHERE product_id = 2;

-- 3. Viewer Tests
-- Should succeed
SELECT * FROM company_db.products;
-- Should fail
INSERT INTO company_db.products (product_name, price, stock) VALUES ('Tablet', 500.00, 20);
