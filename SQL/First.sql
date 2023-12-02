-- Drop tables if they exist
DROP TABLE IF EXISTS Registration;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Trip;
DROP TABLE IF EXISTS Guide;
DROP TABLE IF EXISTS Airfare;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Destination;
DROP TABLE IF EXISTS Website;
DROP TABLE IF EXISTS Marketing;
DROP TABLE IF EXISTS Equipment;
DROP TABLE IF EXISTS Product;



-- Trip table
CREATE TABLE Trip (
    trip_id INT AUTO_INCREMENT NOT NULL,
    trip_name VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    PRIMARY KEY(trip_id)
);

-- Guide table
CREATE TABLE Guide (
    guide_id INT AUTO_INCREMENT NOT NULL,
    guide_name VARCHAR(255) NOT NULL,
    specialization VARCHAR(255) NOT NULL,
    PRIMARY KEY(guide_id)
);

-- Airfare table
CREATE TABLE Airfare (
    airfare_id INT AUTO_INCREMENT NOT NULL,
    trip_id INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(airfare_id),
    FOREIGN KEY (trip_id) REFERENCES Trip(trip_id)
);

-- Employee table
CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT NOT NULL,
    employee_name VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    PRIMARY KEY(employee_id)
);

-- Destination table
CREATE TABLE Destination (
    destination_id INT AUTO_INCREMENT NOT NULL,
    destination_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(destination_id)
);

-- Customer table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY(customer_id)
);

-- Registration table
CREATE TABLE Registration (
    registration_id INT AUTO_INCREMENT NOT NULL,
    trip_id INT NOT NULL,
    customer_id INT NOT NULL,
    PRIMARY KEY(registration_id),
    FOREIGN KEY (trip_id) REFERENCES Trip(trip_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Website table
CREATE TABLE Website (
    website_id INT AUTO_INCREMENT NOT NULL,
    website_name VARCHAR(255) NOT NULL,
    url VARCHAR(255) NOT NULL,
    PRIMARY KEY(website_id)
);

-- Marketing table
CREATE TABLE Marketing (
    marketing_id INT AUTO_INCREMENT NOT NULL,
    strategy VARCHAR(255) NOT NULL,
    budget DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(marketing_id)
);

-- Equipment table
CREATE TABLE Equipment (
    equipment_id INT AUTO_INCREMENT NOT NULL,
    equipment_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY(equipment_id)
);

-- Product table
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(product_id)
);