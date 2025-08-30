# Airbnb Database ERD Requirements

This document describes the entities, attributes, relationships, and constraints for the Airbnb database system.  

---

## Entities and Attributes

### 1. User
- **user_id** (PK, UUID, Indexed)
- first_name (VARCHAR, NOT NULL)
- last_name (VARCHAR, NOT NULL)
- email (VARCHAR, UNIQUE, NOT NULL)
- password_hash (VARCHAR, NOT NULL)
- phone_number (VARCHAR, NULL)
- role (ENUM: guest, host, admin, NOT NULL)
- created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

### 2. Property
- **property_id** (PK, UUID, Indexed)
- host_id (FK → User.user_id)
- name (VARCHAR, NOT NULL)
- description (TEXT, NOT NULL)
- location (VARCHAR, NOT NULL)
- pricepernight (DECIMAL, NOT NULL)
- created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
- updated_at (TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP)

### 3. Booking
- **booking_id** (PK, UUID, Indexed)
- property_id (FK → Property.property_id)
- user_id (FK → User.user_id)
- start_date (DATE, NOT NULL)
- end_date (DATE, NOT NULL)
- total_price (DECIMAL, NOT NULL)
- status (ENUM: pending, confirmed, canceled, NOT NULL)
- created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

### 4. Payment
- **payment_id** (PK, UUID, Indexed)
- booking_id (FK → Booking.booking_id)
- amount (DECIMAL, NOT NULL)
- payment_date (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
- payment_method (ENUM: credit_card, paypal, stripe, NOT NULL)

### 5. Review
- **review_id** (PK, UUID, Indexed)
- property_id (FK → Property.property_id)
- user_id (FK → User.user_id)
- rating (INTEGER, 1–5, NOT NULL)
- comment (TEXT, NOT NULL)
- created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

### 6. Message
- **message_id** (PK, UUID, Indexed)
- sender_id (FK → User.user_id)
- recipient_id (FK → User.user_id)
- message_body (TEXT, NOT NULL)
- sent_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

---

## Relationships

- **User ↔ Property**: One user (host) can own many properties. *(1 → ∞)*
- **User ↔ Booking**: One user (guest) can make many bookings. *(1 → ∞)*
- **Property ↔ Booking**: One property can have many bookings. *(1 → ∞)*
- **Booking ↔ Payment**: One booking can have one or more payments. *(1 → ∞)*
- **Property ↔ Review**: One property can have many reviews. *(1 → ∞)*
- **User ↔ Review**: One user (guest) can write many reviews. *(1 → ∞)*
- **User ↔ Message ↔ User**:  
  - One user can send many messages. *(1 → ∞)*  
  - One user can receive many messages. *(1 → ∞)*

---

## Constraints and Indexing
- **Unique constraint**: email (User)
- **Foreign key constraints**:
  - Property.host_id → User.user_id
  - Booking.property_id → Property.property_id
  - Booking.user_id → User.user_id
  - Payment.booking_id → Booking.booking_id
  - Review.property_id → Property.property_id
  - Review.user_id → User.user_id
  - Message.sender_id → User.user_id
  - Message.recipient_id → User.user_id
- **Indexes**:
  - Primary keys are indexed automatically.
  - Additional indexes: email (User), property_id (Property & Booking), booking_id (Booking & Payment)

---

## ER Diagram
The ER diagram representing the above entities and relationships should be created using **Draw.io** .  
Export the diagram as an image and place it in this directory.

---

