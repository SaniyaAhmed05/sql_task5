-- Step 2: Create roles and assign privileges

-- Create roles
CREATE ROLE admin;
CREATE ROLE editor;
CREATE ROLE viewer;

-- Grant privileges to roles

-- Admin: full control
GRANT ALL PRIVILEGES ON company_db.* TO admin;

-- Editor: can read, insert, and update
GRANT SELECT, INSERT, UPDATE ON company_db.products TO editor;
GRANT SELECT, INSERT, UPDATE ON company_db.sales TO editor;
GRANT SELECT ON company_db.users TO editor;

-- Viewer: read-only access
GRANT SELECT ON company_db.products TO viewer;
GRANT SELECT ON company_db.sales TO viewer;
GRANT SELECT ON company_db.users TO viewer;
