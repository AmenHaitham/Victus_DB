-- Insert dummy data into Accounts table
INSERT INTO Accounts (first_name, last_name, email, password, phone_num, seller_account) VALUES
('John', 'Doe', 'john.doe@example.com', 'password123', '1234567890', 1),
('Jane', 'Smith', 'jane.smith@example.com', 'password123', '0987654321', 1),
('Alice', 'Johnson', 'alice.j@example.com', 'password123', '1122334455', 0),
('Bob', 'Brown', 'bob.b@example.com', 'password123', '5566778899', 0),
('Charlie', 'Davis', 'charlie.d@example.com', 'password123', '9988776655', 1);

-- Insert dummy data into Sellers table
INSERT INTO Sellers (shop_name, email) VALUES
('Tech World', 'john.doe@example.com'),
('Gadget Hub', 'jane.smith@example.com'),
('Best Deals', 'charlie.d@example.com');

-- Insert dummy data into Products table
INSERT INTO Products (product_name, price, stock, seller_id) VALUES
('Laptop', 999.99, 10, 1),
('Smartphone', 499.99, 20, 1),
('Tablet', 299.99, 15, 2),
('Smartwatch', 199.99, 30, 2),
('Headphones', 99.99, 50, 3);

-- Insert dummy data into Images table
INSERT INTO Images (product_id, image_data) VALUES
(1, 0x), (2, 0x), (3, 0x), (4, 0x), (5, 0x);

-- Insert dummy data into Offers table
INSERT INTO Offers (title, description, percentage, product_id) VALUES
('Holiday Sale', 'Discount on all laptops', 10, 1),
('New Year Sale', 'Special price for smartphones', 15, 2),
('Flash Sale', 'Limited time offer on tablets', 20, 3),
('Summer Sale', 'Smartwatch discount', 25, 4),
('Weekend Special', 'Headphones discount', 30, 5);
