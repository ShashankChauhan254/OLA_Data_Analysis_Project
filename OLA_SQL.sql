CREATE DATABASE ola_project;
USE ola_project;
SELECT * FROM ola_data;

CREATE VIEW Successful_Booking AS SELECT * FROM ola_data WHERE Booking_Status = 'Success';
SELECT * FROM Successful_Booking;

CREATE VIEW Avg_Distance AS SELECT Vehicle_Type, AVG(Ride_Distance) FROM ola_data GROUP BY Vehicle_Type;
SELECT * FROM Avg_Distance;

CREATE VIEW Total_Cancel_Ride_By_Customer AS SELECT COUNT(Booking_ID) FROM ola_data WHERE Booking_Status = 'Canceled by Customer';
SELECT * FROM Total_Cancel_Ride_By_Customer;

CREATE VIEW Top_5_Customer AS SELECT Customer_ID, COUNT(Booking_ID) FROM ola_data GROUP BY Customer_ID ORDER BY COUNT(Booking_ID) DESC LIMIT 5;
SELECT Customer_ID FROM Top_5_Customer;

CREATE VIEW Canceled_Rides_by_Driver_Issue_Personal_Car_related AS SELECT COUNT(*) FROM ola_data WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';
SELECT * FROM Canceled_Rides_by_Driver_Issue_Personal_Car_related;

CREATE VIEW Max_Min_Driver_Rating_For_Prime_Sedan AS SELECT MIN(Driver_Ratings), MAX(Driver_Ratings) FROM ola_data WHERE Vehicle_Type = 'Prime Sedan';
SELECT * FROM Max_Min_Driver_Rating_For_Prime_Sedan;

CREATE VIEW UPI_Ride AS SELECT * FROM ola_data WHERE Payment_Method = 'UPI';
SELECT * FROM UPI_Ride;

CREATE VIEW Custemer_Rating_By_Vehicle AS SELECT Vehicle_Type, AVG(Customer_Rating) FROM ola_data GROUP BY Vehicle_Type;
SELECT * FROM Custemer_Rating_By_Vehicle;

CREATE VIEW Total_Success_Booking_Value AS SELECT SUM(Booking_Value) FROM ola_data WHERE Booking_Status= 'Success';
SELECT * FROM Total_Success_Booking_Value;

CREATE VIEW Incomplete_Rides_With_Reason AS SELECT Booking_ID, Incomplete_Rides_Reason FROM ola_data WHERE Incomplete_Rides = 'Yes';
SELECT * FROM Incomplete_Rides_With_Reason;