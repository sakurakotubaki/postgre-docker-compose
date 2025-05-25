-- create database --
CREATE DATABASE company_db;

-- Database接続 ターミナルの場合--
\c company_db;

-- create table --
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    position TEXT
);

-- create table cities --
CREATE TABLE cities (
    city_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    zip_code CHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- insert japanese cities --
INSERT INTO cities (name, zip_code) VALUES
('Tokyo', '100-0001'),
('Osaka', '530-0001'),
('Kyoto', '600-0001')


-- select all cities --
SELECT * FROM cities;

-- RETURNING ALL CITIES --
-- INSERTを実行後に値を確認できる --
INSERT INTO cities (name, zip_code) VALUES
('Tokyo', '181-0001'),
('Osaka', '530-0002'),
('Kyoto', '600-0002')
RETURNING city_id, name, zip_code;

-- エイリアス（別名）をつける --
SELECT name as "年の名前", zip_code as "郵便番号" FROM cities;

-- データベース内のテーブルを確認する --
\dt