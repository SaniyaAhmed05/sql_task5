-- Step 5: Clean up all users and roles

DROP USER IF EXISTS 'admin_user'@'localhost';
DROP USER IF EXISTS 'editor_user'@'localhost';
DROP USER IF EXISTS 'viewer_user'@'localhost';

DROP ROLE IF EXISTS admin;
DROP ROLE IF EXISTS editor;
DROP ROLE IF EXISTS viewer;

DROP DATABASE IF EXISTS company_db;
