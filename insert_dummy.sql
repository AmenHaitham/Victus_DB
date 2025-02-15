-- Insert into Accounts
INSERT INTO Accounts (email, first_name, last_name, password, phone_num, seller_account) VALUES
('john.doe@example.com', 'John', 'Doe', 'password123', '1234567890', 1),
('jane.smith@example.com', 'Jane', 'Smith', 'securepass', '0987654321', 0),
('mark.seller@example.com', 'Mark', 'Seller', 'markpass', '1112223333', 1);

-- Insert into Sellers
INSERT INTO Sellers (shop_name, email) VALUES
('Mark Seller', 'mark.seller@example.com');

-- Insert into Categories
INSERT INTO Categories (category_name, category_image) VALUES
('Electronics', 'electronics.jpg'),
('Clothing', 'clothing.jpg'),
('Home Appliances', 'home_appliances.jpg');

-- Insert into Products
INSERT INTO Products (product_name, description, price, stock_quantity, category_id, seller_id, product_rating) VALUES
('Smartphone XYZ', 'Latest smartphone with 5G connectivity', 699.99, 50, 1, 1, 4.5),
('T-shirt ABC', 'Comfortable cotton t-shirt', 19.99, 200, 2, 1, 4.0),
('Microwave Oven', 'High power microwave with multiple modes', 149.99, 30, 3, 1, 4.7);

-- Insert into Images
INSERT INTO Images (product_id, image_data) VALUES
(1, 0x1234567890ABCDEF),
(2, 0xABCDEF1234567890),
(3, 0x7890ABCDEF123456);

-- Insert into Offers
INSERT INTO Offers (title, description, percentage, product_id) VALUES
('New Year Sale', '20% off on all electronics', 20, 1),
('Summer Discount', '10% off on all clothing', 10, 2);

-- Insert into Cart
INSERT INTO Cart (email) VALUES
('jane.smith@example.com');

-- Insert into Orders
INSERT INTO Orders (email, address, phone_num, total_price) VALUES
('jane.smith@example.com', '123 Main St, Anytown, USA', '0987654321', 719.99);

-- Insert into Cart_Products
INSERT INTO Cart_Products (product_id, cart_id, order_id) VALUES
(1, 1, 1),
(2, 1, 1);
