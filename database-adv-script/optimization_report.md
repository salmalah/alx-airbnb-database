# Query Optimization Report

## Initial Query
- Retrieved bookings with user, property, and payment details.
- Tested using EXPLAIN ANALYZE.
- Observed inefficiencies: full table scans and unnecessary columns.

## Optimized Query
- Selected only necessary columns.
- Added ORDER BY to use potential indexes.
- Relied on existing indexes on bookings.user_id, bookings.property_id, and payments.booking_id.

## Results
- Execution time reduced.
- Fewer rows scanned.
- More efficient join operations.

