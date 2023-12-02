DROP DATABASE IF EXISTS OutlandAdventures;
CREATE DATABASE OutlandAdventures;

USE OutlandAdventures;
-- drop database user if exists
DROP USER IF EXISTS 'OutlandAdventures_user'@'localhost';

-- create movies_user and grant them all privileges to the movies database
CREATE USER 'OutlandAdventures_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Explore';

-- grant all privileges to the movies database to user movies_user on localhost
GRANT ALL PRIVILEGES ON OutlandAdventures.* TO 'OutlandAdventures_user'@'localhost';

-- Drop tables if they exist
DROP TABLE IF EXISTS Registration;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Trip;
DROP TABLE IF EXISTS Airfare;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Destination;
DROP TABLE IF EXISTS Marketing;
DROP TABLE IF EXISTS Equipment;
DROP TABLE IF EXISTS Product;

-- Destination table
CREATE TABLE Destination (
    destination_id INT AUTO_INCREMENT NOT NULL,
    destination_name VARCHAR(64) NOT NULL,
    destination_description VARCHAR(64),
    PRIMARY KEY (destination_id)
);

-- Airfare table
CREATE TABLE Airfare (
    airfare_id INT AUTO_INCREMENT NOT NULL,
    trip_id INT UNIQUE NOT NULL,
    PRIMARY KEY (airfare_id)
);

-- Trip table
CREATE TABLE Trip (
    trip_id INT AUTO_INCREMENT NOT NULL,
    trip_name VARCHAR(64) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    trip_category VARCHAR(24) NOT NULL,
    destination_id INT NOT NULL,
    airfare_id INT UNIQUE,
    equipment_id INT,
    product_id INT,
    employee_id INT NOT NULL,
    PRIMARY KEY(trip_id)
);

-- Registration table
CREATE TABLE Registration (
    registration_id INT AUTO_INCREMENT NOT NULL,
    trip_id INT NOT NULL,
    registration_date DATE NOT NULL,
    customer_id INT NOT NULL,
    PRIMARY KEY(registration_id)
);
-- Customer table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT NOT NULL,
    customer_fname VARCHAR(64) NOT NULL,
    customer_lname VARCHAR(64) NOT NULL,
    email VARCHAR(64) NOT NULL,
    PRIMARY KEY(customer_id)
);

-- Employee table
CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT NOT NULL,
    employee_fname VARCHAR(64) NOT NULL,
    employee_lname VARCHAR(64) NOT NULL,
    employee_nickname VARCHAR(64),
    position VARCHAR(64) NOT NULL,
    equipment_id INT UNIQUE,
    product_id INT UNIQUE,
    marketing_id INT UNIQUE,
    PRIMARY KEY(employee_id)

);

-- Marketing table
CREATE TABLE Marketing (
    marketing_id INT AUTO_INCREMENT NOT NULL,
    marketing_strategy VARCHAR(64) NOT NULL,
    marketing_budget DECIMAL(10, 2) NOT NULL,
    marketing_campaign VARCHAR(255) NOT NULL,
    PRIMARY KEY(marketing_id)
);

-- Equipment table
CREATE TABLE Equipment (
    equipment_id INT AUTO_INCREMENT NOT NULL,
    equipment_name VARCHAR(64) NOT NULL,
    equipment_quantity INT NOT NULL,
    PRIMARY KEY(equipment_id)
);

-- Product table
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(64) NOT NULL,
    product_price DECIMAL(10, 2) NOT NULL,
    product_quantity INT NOT NULL,
    PRIMARY KEY(product_id)
);

#Customer Table Data:
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Inez","Zeigler","inez.zeigler@yahoo.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Essie","Swaim","eSwaim@aol.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Joshua","Willis","Willisj203@yahoo.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Katherine","Williams","Kat.williams@icloud.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Patrick","Yund","patrick_yund7@gmail.com");
INSERT INTO Customer(customer_fname, customer_lname, email)
    VALUES("Stanley","Zimmerman","Stan-z-man@outlook.com");


#Employee Table Data:
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Blythe", "Timmerson", NULL, "Owner" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Jim", "Ford", NULL, "Owner");
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("John", "MacNell", "Mac", "Guide" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("D.B.", "Marland", "Duke", "Guide" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Anita", "Gallegos", NULL, "Marketing" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Dimitrios", "Stravopolous", NULL, "Administative" );
INSERT INTO Employee(employee_fname, employee_lname, employee_nickname, position)
    VALUES("Mei", "Wong", NULL, "Web Developer" );



#Destination Table Data:
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Spituk Gompa","An Iconic Hilltop Monastery");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Dubai Desert Safari","Exciting Desert Adventures");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Nandi Hills","An ancient hill fortress scattered with monuments and shrines.");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Grand Canyon","The Grand Canyon of the Colorado River ");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Iceland Blue Lagoon","The world''s largest geothermal pool");
INSERT INTO DESTINATION(destination_name, destination_description)
    VALUES("Cinque Terre","Hike along the cliffside trail through 5 coastal villages.");

#Equipment Table Data:
INSERT INTO Equipment(equipment_name, equipment_quantity)
    VALUES("Tent", 03);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("Lantern", 13);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("Camp Stove", 6);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("Flashlight", 35);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("Cooler", 20);
INSERT INTO Equipment(equipment_name,equipment_quantity)
    VALUES("First Aid Kit", 16);

#Marketing Table Data:
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Social Media", 500, "FBPROMOHIKE23");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Email", 3000, "READY2HIKE");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Website", 8000, "Welcome2023");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Paid Advertising", 1000, "ExploreNow23");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Customer Referral Program", 500, "2023Friends");
INSERT INTO Marketing(marketing_strategy, marketing_budget, marketing_campaign)
    VALUES("Partnerships", 1500, "JOINUS2023");


#Product Table Data:
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Outdoor Hiking Backpack", 45.00, 12);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Trekking Poles", 39.99, 10);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Tent", 248.39, 15);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Camping Survival Kit", 45.87, 23);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Cooler", 179.99, 10);
INSERT INTO Product(product_name, product_price, product_quantity)
    VALUES("Hammock", 39.99, 23);



#Registration Table Data:
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(1, ('2022-08-23'), 2);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(3,('2022-03-19'), 1);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(2,('2021-01-10'), 4);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(5,('2023-04-27'), 3);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(4, ('2023-10-10'), 6);
INSERT INTO Registration(trip_id, registration_date, customer_id)
    VALUES(6,('2023-01-14'), 5);




#Trip Table Data:
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Onward Climb Guide", ('2023-01-01'), ('2023-01-16'),"Hiking", 3, 3);

INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Bucketlist Campers Guide", ('2021-03-23'),('2021-04-02'), "Camping", 2 ,3);
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Tent & Trails Guide",('2022-06-12'), ('2022-06-12'),"Camping",1,4);
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Outdoor Odyssey Guide",('2024-04-07'),('2022-04-15'),"Hiking",4,3);
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("TrekTopia Tour Guide",('2023-12-01'),('2023-12-07'),"Hiking",6,4);
INSERT INTO Trip(trip_name, start_date, end_date, trip_category, destination_id, employee_id)
    VALUES("Camp The Woods",('2024-06-17'),('2024-06-29'),"Camping",5 ,4);




Show tables;




ALTER TABLE Employee ADD FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id);
ALTER TABLE Employee ADD FOREIGN KEY (product_id) REFERENCES Product(product_id);
ALTER TABLE Employee ADD FOREIGN KEY (marketing_id) REFERENCES Marketing(marketing_id);
ALTER TABLE Registration ADD FOREIGN KEY (trip_id) REFERENCES Trip(trip_id);
ALTER TABLE Registration ADD FOREIGN KEY (customer_id) REFERENCES Customer(customer_id);
ALTER TABLE Trip ADD FOREIGN KEY (destination_id) REFERENCES Destination(destination_id);
ALTER TABLE Trip ADD FOREIGN KEY (airfare_id) REFERENCES Airfare(airfare_id);
ALTER TABLE Trip ADD FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id);
ALTER TABLE Trip ADD FOREIGN KEY (product_id) REFERENCES Product(product_id);
ALTER TABLE Airfare ADD FOREIGN KEY (trip_id) REFERENCES Trip(trip_id);


SELECT * FROM Employee