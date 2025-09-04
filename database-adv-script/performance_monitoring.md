# Database Performance Monitoring and Refinement

## Monitored Queries
1. Retrieving all bookings with user, property, and payment details.
2. Fetching properties with average rating greater than 4.0.
3. Ranking properties by total bookings using ROW_NUMBER().

## Performance Monitoring
- Used `EXPLAIN ANALYZE` to check execution plans and query times.
- Observed bottlenecks in queries scanning large tables without indexes.

## Bottlenecks Identified
- Full table scans on bookings and reviews tables.
- Joins on unindexed columns caused slower query execution.
- Filtering by dates without proper indexing resulted in high row scans.

## Schema Adjustments and Optimizations
1. Created indexes on frequently used columns:
   - `bookings.user_id`
   - `bookings.property_id`
   - `bookings.start_date`
   - `users.name`
   - `properties.name`
2. Implemented partitioning on the `bookings` table by `start_date`.
3. Refactored queries to select only necessary columns.

## Observed Improvements
- Queries using indexed columns executed faster.
- Partitioning reduced scanned rows for date range queries.
- EXPLAIN ANALYZE confirmed lower execution time and more efficient joins.
- Overall database performance improved for frequently run queries.

