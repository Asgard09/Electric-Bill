CREATE DATABASE IF NOT EXISTS ebs;
USE ebs;

CREATE TABLE login_admin (
    username VARCHAR(30) PRIMARY KEY,
    name VARCHAR(100),
    password VARCHAR(100)
);

CREATE TABLE login_user (
    meter_no VARCHAR(20),
    username VARCHAR(30) UNIQUE,  
    name VARCHAR(100),
    password VARCHAR(100),
    PRIMARY KEY (meter_no)
);

-- INSERT INTO login_user (meter_no, username, name, password) VALUES ('81257', 'user', 'dat', '123');

CREATE TABLE customer (
    name VARCHAR(20),
    meter_no VARCHAR(20),
    address VARCHAR(50),
    city VARCHAR(30),
    state VARCHAR(30),
    email VARCHAR(40),
    phone VARCHAR(20),
    FOREIGN KEY (meter_no) REFERENCES login_user(meter_no) ON DELETE CASCADE ON UPDATE CASCADE  -- Khóa ngoại đến meter_no trong login_user
);

CREATE TABLE meter_info (
    meter_no VARCHAR(20) PRIMARY KEY,
    meter_location VARCHAR(20),
    meter_type VARCHAR(20),
    phase_code VARCHAR(20),
    bill_type VARCHAR(20),
    days VARCHAR(20),
    FOREIGN KEY (meter_no) REFERENCES login_user(meter_no) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tax (
    cost_per_unit float(20),
    service_charge float(20),
    service_tax float(20),
    fixed_tax float(20)
);


CREATE TABLE bill (
    meter_no VARCHAR(20),
    month VARCHAR(30),
    year varchar(10),
    units int (20),
    totalbill int (20),
    status VARCHAR(20),
    date timestamp,
    FOREIGN KEY (meter_no) REFERENCES login_user(meter_no) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE wallet (
    meter_no varchar(20),
    balance float NOT NULL,
    FOREIGN KEY (meter_no) REFERENCES login_user(meter_no)
);