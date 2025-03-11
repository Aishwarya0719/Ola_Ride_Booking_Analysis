Select * from Booking;
--count a total records
select count(*) from Booking;

--Find unique values in a column
select DISTINCT Date FROM Booking;

--COUNT  OF COMPLETED VS CANCELED BOOKINGS
SELECT  Booking_Status, COUNT(*) AS  COUNT
from Booking
Group by Booking_Status

--Unique Cuatomer Count
select count(Distinct Customer_ID)as Unique_Customers from Booking;

--Most Frequently used vehicle type
select Top 1 Vehicle_Type , count(*) AS count
from Booking
Group BY Vehicle_Type
Order By Count Desc;

--Most Common pickup Location
select Top 1 Pickup_Location,Count(*) AS Count
from Booking
Group by Pickup_location
Order By Count DESC;

--Total Revenue Generated
select sum(Booking_value)AS Total_Revenue from Booking;

--Average Fare Per Ride
Select AVG(Booking_value) AS Avg_Fare from Booking;

--top 5 Booking with highest fare
select top 5 * from booking order by Booking_Value desc ;

--Total Distance covered in all rides
select sum(Ride_Distance)AS Total_Distance from Booking;

--Average Driver Ratings
select AVG(Driver_Ratings)AS AVG_Driver_Rating from Booking;

--top 5 customers by total spending
select top 5 Customer_ID,sum(Booking_value)AS Total_Spending
from Booking
Group By Customer_ID
Order By Total_Spending DESC
--Most popular Payment Method
select top 1 Payment_Method,Count(*) as count
from Booking
Group by Payment_Method
order by Count desc

--customer with the most canceled rides

SELECT top 5 Customer_ID, SUM(Canceled_Rides_by_Customer) AS Total_Canceled 
FROM Booking 
GROUP BY Customer_ID 
ORDER BY Total_Canceled DESC;

--Top Customer by Total Spending
select top 10 Customer_ID,
Sum(Booking_Value) AS total_spent
from Booking
group by Customer_ID
order by total_spent desc;
