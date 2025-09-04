-- Initial query
SELECT b.id AS booking_id,
       b.start_date,
       b.end_date,
       u.id AS user_id,
       u.name AS user_name,
       p.id AS property_id,
       p.name AS property_name,
       pay.id AS payment_id,
       pay.amount,
       pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;
WHERE b.start_date >= '2025-01-01'
  AND b.end_date <= '2025-12-31';

-- Performance analysis
EXPLAIN ANALYZE
SELECT b.id AS booking_id,
       b.start_date,
       b.end_date,
       u.id AS user_id,
       u.name AS user_name,
       p.id AS property_id,
       p.name AS property_name,
       pay.id AS payment_id,
       pay.amount,
       pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

-- Refactored query
SELECT b.id AS booking_id,
       b.start_date,
       b.end_date,
       u.id AS user_id,
       u.name AS user_name,
       p.id AS property_id,
       p.name AS property_name,
       pay.amount,
       pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
ORDER BY b.start_date;

