# Outland Adventures - Bravo Group Database Project

## Project Overview
Outland Adventures is a business founded by outdoor enthusiasts Blythe Timmerson and Jim Ford. They offer guided hiking and camping trips, along with equipment rentals and sales. As the business expanded, the following questions arose to optimize operations:
1. Do enough customers buy equipment to justify continuing equipment sales?
2. Are there inventory items over five years old?
3. Is there any location with a downward trend in bookings?

## Team Members
- **Andrew Bach**: Database Administrator and Data Analyst
- **Torren Davis**: Presentation Administrator
- **John Garcia III**: Project Leader
- **Taylor Mommer**: Database Administrator
- **Ian Spresney**: Database Administrator

## Technologies and Tools
- **Database**: MySQL
- **Languages**: SQL, Python (for analysis and reporting)
- **Other Tools**: Microsoft PowerPoint (for presentation)

## Entity Relationship Diagram (ERD)
![ERD Diagram](images/slide_3_image.png)

## Table Data
Here are screenshots of the data tables used in this project:
- **Customer Table**  
  ![Customer Table](images/slide_1_image.png)

- **Employee Table**  
  ![Employee Table](images/slide_4_image.png)

- **Equipment Table**  
  ![Equipment Table](images/slide_6_image.png)

- **Trip Table**  
  ![Trip Table](images/slide_8_image.png)

- **Marketing Table**  
  ![Marketing Table](images/slide_10_image.png)

## Reports

### 1. Countries Report
**Question**: Is there any location with a downward trend in bookings?  
**Solution**: This report queries the database and displays trip information such as trip name, location, country, number of registrations, and year of the trip. This helps Outland Adventures monitor the booking trends for each location.
![Countries Report](images/slide_6_image.png)

### 2. Sales Report
**Question**: Do enough customers buy equipment to keep equipment sales?  
**Solution**: This report displays sales information including the product name, price, and total revenue from sales. This information helps the company decide whether to continue selling equipment.
![Sales Report](images/slide_8_image.png)

### 3. Equipment Age Report
**Question**: Are there inventory items over five years old?  
**Solution**: This report lists equipment with details like name, date ordered, date received, and age. It highlights equipment over five years old to help the company manage inventory effectively.
![Equipment Age Report](images/slide_10_image.png)

### 4. Registration Data Report
This report shows customer registrations, including registration date, trip name, associated marketing campaign, and trip dates. It also indicates whether customers rented or purchased equipment.
![Registration Data](images/slide_12_image.png)

## Assumptions
- More than one guide can be assigned to a trip.
- Customers can register for trips online.
- Trips have at least one guide.
- Equipment can be associated with multiple trips.
- Rented equipment is linked to the customer until returned.

## License
This project is for educational purposes only.
