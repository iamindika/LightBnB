DELETE FROM property_reviews;
DELETE FROM reservations;
DELETE FROM properties;
DELETE FROM users;

INSERT INTO users (name, email, password)
VALUES ('Indika Kolamba Tantrege', 'ikt2@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Jenna McGill', 'jm89@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Ricky Travis', 'rickt489@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces,
number_of_bathrooms, number_of_bedrooms, country, street, city, province, postal_code, active)
VALUES (1, 'Creepy Corner', 'description', 'https://images.pexels/photos/2080018/pexels-photo-2080018.jpeg?size=thumbnail', 'https://images.pexels/photos/2080018/pexels-photo-2080018.jpeg?size=400%20400', 100, 30, 1, 1, 'Canada', 'Dundas Street', 'Toronto', 'Ontario', 'M5B 2G9', FALSE),
(1, 'Mole Hill', 'description', 'https://images.pexels/photos/2097018/pexels-photo-2097018.jpeg?size=thumbnail', 'https://images.pexels/photos/2097018/pexels-photo-2097018.jpeg?size=400%20400', 250, 10, 2, 3, 'Canada', 'Beverley Hill Drive', 'North York', 'Ontario', 'M3L 1A1', TRUE), 
(2, 'Red Door', 'description', 'https://images.pexels/photos/1090018/pexels-photo-1090018.jpeg?size=thumbnail', 'https://images.pexels/photos/1090018/pexels-photo-1090018.jpeg?size=400%20400', 180, 5, 2, 1, 'Canada', 'Warden Avenue', 'Scarborough', 'Ontario', 'M1R 1P4', TRUE),
(3, 'Ant Farm', 'description', 'https://images.pexels/photos/2080546/pexels-photo-2080546.jpeg?size=thumbnail', 'https://images.pexels/photos/2080546/pexels-photo-2080546.jpeg?size=400%20400', 125, 25, 1, 1, 'Canada', 'Finch Street', 'North York', 'Ontario', 'M3N 1L1', FALSE);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-09-11', '2019-09-26', 1, 3),
('2019-01-04', '2019-02-01', 2, 2),
('2020-10-01', '2020-10-14', 3, 3),
('2020-11-01', '2020-11-10', 4, 2);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (3, 1, 1, 2, 'messages'),
(2, 1, 2, 3, 'messages'), 
(3, 3, 3, 5, 'messages'),
(2, 4, 4, 4, 'messages');