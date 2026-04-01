-- Create database
CREATE
DATABASE IF NOT EXISTS user_management;

-- Use database
USE
user_management;

-- Drop table if exists (để chạy lại không bị lỗi)
DROP TABLE IF EXISTS users;

-- Create table
CREATE TABLE users
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(120),
    email   VARCHAR(220),
    country VARCHAR(120)
);

-- Insert sample data
INSERT INTO users (id, name, email, country)
VALUES (1, 'Minh', 'minh@gmail.vn', 'Viet Nam'),
       (2, 'Kante', 'kante@che.uk', 'Kenia'),
       (3, 'khangvo1', 'khangvo1@gmail.com', 'VN'),
       (4, 'KhangDepZai', 'khang.vo1@gmail.com', 'Vietnam');
