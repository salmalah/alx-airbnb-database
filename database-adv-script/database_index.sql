CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
CREATE INDEX idx_users_name ON users(name);
CREATE INDEX idx_properties_name ON properties(name);
-- Measure performance before and after adding indexes
EXPLAIN ANALYZE SELECT * FROM bookings b JOIN users u ON b.user_id = u.id WHERE b.start_date > '2025-01-01';
EXPLAIN ANALYZE SELECT * FROM bookings b JOIN properties p ON b.property_id = p.id WHERE b.start_date > '2025-01-01';
