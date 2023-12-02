Use OutlandAdventures;
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

SELECT * From Customer;

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


SELECT * FROM Employee;

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

SELECT * FROM Destination;
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

Select * from Equipment;
#Guide Table Data:
INSERT INTO Guide(guide_name, specialization, employee_id)
    VALUES("Onward Climb Guide","Hiking",3);
INSERT INTO Guide(guide_name, specialization, employee_id)
    VALUES("Bucketlist Campers Guide","Camping",3);
INSERT INTO Guide(guide_name, specialization, employee_id)
    VALUES("Tent & Trails Guide","Camping",4);
INSERT INTO Guide(guide_name, specialization, employee_id)
    VALUES("Outdoor Odyssey Guide","Hiking",3);
INSERT INTO Guide(guide_name, specialization, employee_id)
    VALUES("TrekTopia Tour Guide","Hiking",4);
INSERT INTO Guide(guide_name, specialization, employee_id)
    VALUES("Camp The Woods","Camping",4);


SELECT * FROM Guide;
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


SELECT * FROM Marketing;
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

Select * FROM Product;
#Registration Table Data:

#Trip Table Data: