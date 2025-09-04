# Partitioning and Performance Report

## Partitioning Strategy
- The `bookings` table was partitioned by `start_date` using **RANGE partitioning**.
- Separate partitions were created for 2024 and 2025.

## Performance Test
- Querying bookings by date range now scans only the relevant partition.
- Tested using `EXPLAIN ANALYZE`.

## Observed Improvements
- Reduced number of rows scanned compared to the original table.
- Faster query execution for date range queries.
- Easier management of large datasets.

