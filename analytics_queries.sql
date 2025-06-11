-- 1. Completion rate by sales channel
SELECT 
    sales_channel,
    COUNT(*) AS total_bookings,
    SUM(CAST(booking_complete AS INT)) AS completed,
    ROUND(AVG(CAST(booking_complete AS FLOAT)) * 100, 2) AS completion_rate
FROM BookingBehavior
GROUP BY sales_channel
ORDER BY completion_rate DESC;

-- 2. Average length of stay per route
SELECT 
    route,
    COUNT(*) AS bookings,
    ROUND(AVG(CAST(length_of_stay AS FLOAT)), 1) AS avg_stay
FROM BookingBehavior
WHERE booking_complete = 1
GROUP BY route
ORDER BY bookings DESC;

-- 3. Effect of preferred seat on completion rate
SELECT 
    wants_preferred_seat,
    ROUND(AVG(CAST(booking_complete AS FLOAT)) * 100, 2) AS completion_rate
FROM BookingBehavior
GROUP BY wants_preferred_seat;

-- 4. Bookings by flight hour
SELECT 
    flight_hour,
    COUNT(*) AS total,
    ROUND(AVG(CAST(booking_complete AS FLOAT)) * 100, 2) AS completion_rate
FROM BookingBehavior
GROUP BY flight_hour
ORDER BY flight_hour;

-- 5. Completion rate based on in-flight add-ons
SELECT 
    wants_extra_baggage,
    wants_preferred_seat,
    wants_in_flight_meals,
    ROUND(AVG(CAST(booking_complete AS FLOAT)) * 100, 2) AS completion_rate
FROM BookingBehavior
GROUP BY wants_extra_baggage, wants_preferred_seat, wants_in_flight_meals
ORDER BY completion_rate DESC;