-- Create partitioned table (PostgreSQL example)
CREATE TABLE bookings_partitioned (
	    id SERIAL PRIMARY KEY,
	    user_id INT NOT NULL,
	    property_id INT NOT NULL,
	    start_date DATE NOT NULL,
	    end_date DATE NOT NULL
) PARTITION BY RANGE (start_date);

-- Example partitions by year
CREATE TABLE bookings_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

	CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
	    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

		-- Insert data from original bookings table into partitioned table
		INSERT INTO bookings_partitioned (id, user_id, property_id, start_date, end_date)
		SELECT id, user_id, property_id, start_date, end_date
		FROM bookings;

		-- Test query on partitioned table
EXPLAIN ANALYZE
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';

