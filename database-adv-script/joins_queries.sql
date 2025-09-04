-- 1. INNER JOIN: Bookings with their Users
SELECT b.id AS booking_id,
       u.id AS user_id,
       u.name AS user_name,
       b.start_date,
       b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;


-- 2. LEFT JOIN: Properties with their Reviews
SELECT p.id AS property_id,
       p.name AS property_name,
       r.id AS review_id,
       r.rating,
       r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;
ORDER BY p.id, r.id;

-- 3. FULL OUTER JOIN: Users and Bookings
SELECT u.id AS user_id,
       u.name AS user_name,
       b.id AS booking_id,
       b.start_date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;

