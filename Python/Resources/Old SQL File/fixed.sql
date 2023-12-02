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

-- Create Destination table
CREATE TABLE Destinations (
    destination_id INT AUTO_INCREMENT NOT NULL,
    destination_name VARCHAR(64) NOT NULL,
    PRIMARY KEY(destination_id)
);

-- Create Equipment table
CREATE TABLE Equipment (
    equipment_id INT AUTO_INCREMENT NOT NULL,
    equipment_name VARCHAR(64) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY(equipment_id)
);

-- Create Product table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(64) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(product_id)
);

-- Create Guide table
CREATE TABLE Guides (
    guide_id INT AUTO_INCREMENT NOT NULL,
    guide_name VARCHAR(64) NOT NULL,
    specialization VARCHAR(64) NOT NULL,
    employee_id INT NOT NULL,
    PRIMARY KEY(guide_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Create Airfare table
CREATE TABLE Airfares (
    airfare_id INT AUTO_INCREMENT NOT NULL,
    trip_id INT NOT NULL,
    PRIMARY KEY(airfare_id),
    FOREIGN KEY (trip_id) REFERENCES Trips(trip_id)
);

-- Create Employee table
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT NOT NULL,
    employee_name VARCHAR(64) NOT NULL,
    position VARCHAR(64) NOT NULL,
    equipment_id INT UNIQUE,
    product_id INT UNIQUE,
    website_id INT UNIQUE,
    PRIMARY KEY(employee_id),
    FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (website_id) REFERENCES Website(website_id)
);

-- Create Website table
CREATE TABLE Website (
    website_id INT AUTO_INCREMENT NOT NULL,
    -- Define website columns
    PRIMARY KEY(website_id)
);

-- Create Product table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(64) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(product_id)
);

-- Create Trips table
CREATE TABLE Trips (
    trip_id INT AUTO_INCREMENT NOT NULL,
    trip_name VARCHAR(64) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    destination_id INT NOT NULL,
    guide_id INT NOT NULL,
    airfare_id INT UNIQUE,
    equipment_id INT NOT NULL,
    product_id INT NOT NULL,
    PRIMARY KEY(trip_id),
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id),
    FOREIGN KEY (guide_id) REFERENCES Guides(guide_id),
    FOREIGN KEY (airfare_id) REFERENCES Airfares(airfare_id),
    FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT NOT NULL,
    customer_name VARCHAR(64) NOT NULL,
    email VARCHAR(64) NOT NULL,
    PRIMARY KEY(customer_id)
);

-- Create Registrations table
CREATE TABLE Registrations (
    registration_id INT AUTO_INCREMENT NOT NULL,
    trip_id INT NOT NULL,
    customer_id INT NOT NULL,
    PRIMARY KEY(registration_id),
    FOREIGN KEY (trip_id) REFERENCES Trips(trip_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Marketing table
CREATE TABLE Marketing (
    marketing_id INT AUTO_INCREMENT NOT NULL,
    strategy VARCHAR(64) NOT NULL,
    budget DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(marketing_id)
);
