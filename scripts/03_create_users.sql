-- Step 3: Create users and assign roles

-- Create SQL users
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'Admin@123';
CREATE USER 'editor_user'@'localhost' IDENTIFIED BY 'Editor@123';
CREATE USER 'viewer_user'@'localhost' IDENTIFIED BY 'Viewer@123';

-- Assign roles
GRANT admin TO 'admin_user'@'localhost';
GRANT editor TO 'editor_user'@'localhost';
GRANT viewer TO 'viewer_user'@'localhost';

-- (Optional) Set default active role for users
SET DEFAULT ROLE admin TO 'admin_user'@'localhost';
SET DEFAULT ROLE editor TO 'editor_user'@'localhost';
SET DEFAULT ROLE viewer TO 'viewer_user'@'localhost';
