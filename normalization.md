# Airbnb Database Normalization to 3NF

## Step 1: Review of Current Schema
- Checked all entities: User, Property, Booking, Payment, Review, Message.
- Verified primary keys, foreign keys, and attributes.
- Identified any redundancy or transitive dependencies.

## Step 2: Adjustments for 3NF
- Ensured all attributes depend **only on the primary key** of their table.
- Removed any transitive dependencies (e.g., no attribute depends on another non-key attribute).
- Confirmed foreign keys properly reference parent tables.

## Step 3: Conclusion
The database is now in **Third Normal Form (3NF)**:
- All tables have a primary key.
- No partial dependencies exist.
- No transitive dependencies exist.
- Data redundancy minimized, integrity ensured.

