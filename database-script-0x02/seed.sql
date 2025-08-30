-- =========================================
-- Airbnb Sample Data
-- =========================================

-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('e1b4c2d1-6f12-4a5e-8d4f-1b2c3d4e5f67', 'Sophia', 'Martinez', 'sophia.martinez@example.com', 'hash1', '555-123-4567', 'guest'),
  ('a2d5f7b8-1c9d-4e2a-9f8b-2a3d4e5f6b78', 'Liam', 'Anderson', 'liam.anderson@example.com', 'hash2', '555-987-6543', 'host'),
  ('c3e6g8h9-2d0f-4b3c-8e7f-3c4d5e6f7g89', 'Olivia', 'Johnson', 'olivia.johnson@example.com', 'hash3', '555-456-7890', 'guest');

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1a2b3c4-d5e6-7f8a-9b0c-1d2e3f4a5b6c', 'a2d5f7b8-1c9d-4e2a-9f8b-2a3d4e5f6b78', 'Downtown Loft', 'Modern loft in the heart of the city', 'New York, NY', 180.00),
  ('p7g8h9i0-j1k2-3l4m-5n6o-7p8q9r0s1t2u', 'a2d5f7b8-1c9d-4e2a-9f8b-2a3d4e5f6b78', 'Beachside Villa', 'Luxury villa with ocean views', 'Miami, FL', 350.00);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1c2d3e4-f5g6-7h8i-9j0k-1l2m3n4o5p6q', 'p1a2b3c4-d5e6-7f8a-9b0c-1d2e3f4a5b6c', 'e1b4c2d1-6f12-4a5e-8d4f-1b2c3d4e5f67', '2025-09-01', '2025-09-05', 720.00, 'confirmed'),
  ('b7g8h9i0-j1k2-3l4m-5n6o-7p8q9r0s1t2v', 'p7g8h9i0-j1k2-3l4m-5n6o-7p8q9r0s1t2u', 'c3e6g8h9-2d0f-4b3c-8e7f-3c4d5e6f7g89', '2025-10-10', '2025-10-15', 1750.00, 'pending');

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay1a2b3c4-d5e6-7f8a-9b0c-1d2e3f4a5b6c', 'b1c2d3e4-f5g6-7h8i-9j0k-1l2m3n4o5p6q', 720.00, 'credit_card'),
  ('pay7g8h9i0-j1k2-3l4m-5n6o-7p8q9r0s1t2v', 'b7g8h9i0-j1k2-3l4m-5n6o-7p8q9r0s1t2v', 1750.00, 'paypal');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1a2b3c4-d5e6-7f8a-9b0c-1d2e3f4a5b6c', 'p1a2b3c4-d5e6-7f8a-9b0c-1d2e3f4a5b6c', 'e1b4c2d1-6f12-4a5e-8d4f-1b2c3d4e5f67', 5, 'Amazing loft, very clean and central!'),
  ('r7g8h9i0-j1k2-3l4m-5n6o-7p8q9r0s1t2w', 'p7g8h9i0-j1k2-3l4m-5n6o-7p8q9r0s1t2u', 'c3e6g8h9-2d0f-4b3c-8e7f-3c4d5e6f7g89', 4, 'Beautiful villa with stunning views.');

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1a2b3c4-d5e6-7f8a-9b0c-1d2e3f4a5b6c', 'e1b4c2d1-6f12-4a5e-8d4f-1b2c3d4e5f67', 'a2d5f7b8-1c9d-4e2a-9f8b-2a3d4e5f6b78', 'Hi, I am interested in booking your loft for 4 nights.'),
  ('m7g8h9i0-j1k2-3l4m-5n6o-7p8q9r0s1t2x', 'a2d5f7b8-1c9d-4e2a-9f8b-2a3d4e5f6b78', 'e1b4c2d1-6f12-4a5e-8d4f-1b2c3d4e5f67', 'Hello! The loft is available for those dates.');

