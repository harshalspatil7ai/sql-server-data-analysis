-- Foreign key
select * from users;
select * from addresses;
CREATE TABLE addresses (
id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES users(id) on delete cascade
    
);


-- this is only for if you need to specify name of fk CREATE TABLE addresses (
-- id INT AUTO_INCREMENT PRIMARY KEY,
   -- user_id INT,
      -- CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id));
-- on update cascade also
-- on delete restrict  -- prevent deletion of parent if child exist

select id from users;
INSERT INTO addresses (user_id, street, city, state, pincode)
VALUES
(1, '221B MG Road', 'Mumbai', 'Maharashtra', '400001'),
(22, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
(4, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(24, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(100, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(66, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(67, '88 Connaught Place', 'Delhi', 'Delhi', '110001'),
(65, '10 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(10, '45 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(11, '67 Ashoka Road', 'Delhi', 'Delhi', '110001'),
(12, '89 MG Road', 'Pune', 'Maharashtra', '411001'),
(13, '12 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(14, '34 Park Street', 'Kolkata', 'West Bengal', '700016'),
(15, '56 Connaught Place', 'Delhi', 'Delhi', '110001'),
(16, '78 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(17, '90 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(18, '11 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(19, '33 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(20, '22 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001');

