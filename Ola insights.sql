Create Database Ola;
Use Ola;

Create View Successfull_bookings As
Select * from Bookings
WHERE Booking_Status = 'Success';

#1. Retrieve all succesfull bookings
Select * from Successfull_bookings;

#2.  Find the average ride distance for each vehicle type

# Create View Avg_Distance As
Select Vehicle_Type , Avg(Ride_Distance)
as avg_distance from Bookings
Group BY Vehicle_Type;

# Get the total number of cancelled rides by customers
Select COUNT(*) from Bookings
Where Booking_Status = 'Canceled by customer';
 
#4. List the top 5 customers who booked the highest number of rides:
Select Customer_ID, COUNT(Booking_ID) as total_rides from Bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

#5.Get the number of rides cancelled by drivers due to personal and car-related issues
Select Count(*) from Bookings Where Canceled_Rides_by_Driver='Personal & Car Related issue';

#6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select MAX(Driver_Ratings) as Max_Rating , MIN(Driver_Ratings) as Min_Rating from Bookings Where Vehicle_Type='Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
Select * from Bookings where Payment_Method='UPI';

#8. Find the average customer rating per vehicle type
Select Vehicle_Type, Avg(Customer_Rating) as customer_rating from Bookings
Group By Vehicle_Type; 

#9. Calculate the total booking value of rides completed successfully:
Select SUM(Booking_Value) from Bookings
Where Booking_Status="Success";

#10. List all incomplete rides along with the reason:
Select Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides ='Yes'; 



 