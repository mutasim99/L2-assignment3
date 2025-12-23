 -- create user table
CREATE TABLE
  users (
    user_id serial primary key,
    user_name VARCHAR(100) NOT NULL,
    user_role VARCHAR(30) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    phone_number TEXT NOT NULL
  );

-- create vehicles table
CREATE TABLE
  vehicles (
      vehicle_id SERIAL PRIMARY KEY,
      vehicle_name VARCHAR(100) NOT NULL,
      type VARCHAR(20) NOT NULL,
      model TEXT NOT NULL,
      registration_number VARCHAR(50) UNIQUE NOT NULL,
      rental_price NUMERIC(10, 2),
      availability_status VARCHAR(50)
  );

-- create bookings table
CREATE TABLE
  bookings (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users (user_id),
    vehicle_id INT REFERENCES vehicles (vehicle_id),
    rent_start_date DATE,
    rent_end_date DATE,
    booking_status VARCHAR(50),
    total_cost NUMERIC(10, 2)
  );


-- problem1
SELECT 
  b.id AS booking_id,
  u.user_name AS customer_name,
  v.vehicle_name,
  b.rent_start_date,
  b.rent_end_date,
  b.booking_status
  FROM bookings AS b
  INNER JOIN users as u ON b.user_id = u.user_id
  INNER JOIN vehicles as v ON b.vehicle_id = v.vehicle_id
  ORDER BY b.id;
-- problem2
select *
FROM vehicles as v
WHERE NOT EXISTS(
  SELECT 1
  FROM bookings as b
  WHERE b.vehicle_id = v.vehicle_id
);
-- problem3
SELECT * 
  FROM vehicles 
  WHERE availability_status = 'available' 
  AND type ='car';
-- problem4
select 
  v.vehicle_name,
  COUNT(b.id) as total_bookings
FROM bookings as b
INNER JOIN vehicles as v ON v.vehicle_id = b.vehicle_id
GROUP BY vehicle_name HAVING COUNT(b.id) > 2;