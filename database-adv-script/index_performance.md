# Indexing and Performance Optimization

This file demonstrates the creation of indexes to improve query performance in the Airbnb database.

## 1. High-Usage Columns

Identified columns frequently used in **WHERE, JOIN, and ORDER BY** clauses:

- **Users table:** `id`, `name`  
- **Bookings table:** `id`, `user_id`, `property_id`, `start_date`  
- **Properties table:** `id`, `name`  

## 2. Indexes Created

SQL commands to create indexes for optimizing queries:

```sql
-- Index on bookings.user_id for JOINs with users
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id for JOINs with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on bookings.start_date to speed up date range queries
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Optional: Index on users.name if filtered in queries
CREATE INDEX idx_users_name ON users(name);

-- Optional: Index on properties.name if filtered in queries
CREATE INDEX idx_properties_name ON properties(name);

