INSERT INTO Accounts (first_name, last_name, email, password, phone_num, seller_account)
VALUES 
('Alice', 'John', 'alice.johnson@example.com', 'password789', '5551234567', 0),
('Jane', 'Smith', 'jane.smith@example.com', 'password456', '0987654321', 1),
('John', 'Doe', 'john.doe@example.com', 'password123', '1234567890', 0),
('Mike', 'Tyson', 'mike.tyson@example.com', 'passwd mike', '5557654321', 1),
('Serena', 'Williams', 'serena.williams@example.com', 'serena123', '7776665555', 0);


INSERT INTO Sellers (seller_name, email)
VALUES 
('Alice John', 'alice.johnson@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('John Doe', 'john.doe@example.com'),
('Mike Tyson', 'mike.tyson@example.com'),
('Serena Williams', 'serena.williams@example.com');


INSERT INTO Categories (category_name, category_image)
VALUES 
('Sports Equipment', 'url_to_image1.png'),
('Fitness Gear', 'url_to_image2.png'),
('Outdoor Sports', 'url_to_image3.png');


INSERT INTO Products (product_name, description, price, stock_quantity, category_id, seller_id)
VALUES 
('Tennis Racket', 'High-quality tennis racket with a great grip.', 99.99, 10, 1, 1),
('Soccer Ball', 'Durable soccer ball suitable for all weather conditions.', 29.99, 20, 1, 2),
('Yoga Mat', 'Eco-friendly yoga mat that provides excellent cushioning.', 19.99, 15, 2, 3),
('Basketball', 'Official size basketball for professional play.', 49.99, 25, 1, 4),
('Baseball Glove', 'Leather baseball glove designed for all players.', 59.99, 5, 1, 5);