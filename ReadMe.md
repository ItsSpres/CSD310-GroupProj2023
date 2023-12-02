## Side Note
second.sql contains links to the other tables
per the given ERD within our discord server.

The first sql file contains my initial assumptions. 

Hence, the second one is "more up to date" but 
has a lot more going on. 

## What's Needed
- Needs to be reviewed 
- Needs inserts and python code

## What Inserts might look like?
    -- Insert into Destination table
    INSERT INTO Destination (destination_name) VALUES
        ('Paris'),
        ('New York'),
        ('Tokyo');
    
    -- Insert into Customer table
    INSERT INTO Customer (customer_name, email) VALUES
        ('John Doe', 'john.doe@example.com'),
        ('Jane Smith', 'jane.smith@example.com'),
        ('Bob Johnson', 'bob.johnson@example.com');
    
    -- Insert into Trip table
    INSERT INTO Trip (trip_name, start_date, end_date, destination_id, guide_id, equipment_id, product_id) VALUES
        ('Paris Adventure', '2023-01-01', '2023-01-07', 1, 1, 1, 1),
        ('Big Apple Tour', '2023-02-01', '2023-02-10', 2, 2, 2, 2),
        ('Tokyo Exploration', '2023-03-01', '2023-03-15', 3, 3, 3, 3);
    
    -- Insert into Guide table
    INSERT INTO Guide (guide_name, specialization, employee_id) VALUES
        ('Alice Guide', 'History', 1),
        ('Bob Guide', 'City Tours', 2),
        ('Charlie Guide', 'Culture', 3);
    
    -- Insert into Airfare table
    INSERT INTO Airfare (trip_id) VALUES
        (1),
        (2),
        (3);
    
    -- Insert into Employee table
    INSERT INTO Employee (employee_name, position, equipment_id, product_id, website_id) VALUES
        ('Employee One', 'Manager', 1, 1, 1),
        ('Employee Two', 'Coordinator', 2, 2, 2),
        ('Employee Three', 'Coordinator', 3, 3, 3);
    
    -- Insert into Website table
    INSERT INTO Website (website_name, url) VALUES
        ('Adventure Tours', 'http://www.adventuretours.com'),
        ('City Explorers', 'http://www.cityexplorers.com'),
        ('Explore Japan', 'http://www.explorejapan.com');
    
    -- Insert into Marketing table
    INSERT INTO Marketing (strategy, budget) VALUES
        ('Online Campaign', 5000.00),
        ('Print Ads', 3000.00),
        ('Social Media Promotion', 8000.00);
    
    -- Insert into Equipment table
    INSERT INTO Equipment (equipment_name, quantity) VALUES
        ('Camera', 5),
        ('Tents', 10),
        ('Audio Guide Devices', 15);
    
    -- Insert into Product table
    INSERT INTO Product (product_name, price) VALUES
        ('Tour Package', 1000.00),
        ('City Pass', 50.00),
        ('Cultural Workshop', 200.00);