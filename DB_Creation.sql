CREATE DATABASE victus_store;
GO

-- Use the created database
USE victus_store;
GO

-- Create Accounts Table
CREATE TABLE Accounts (
    email NVARCHAR(255) PRIMARY KEY,
	first_name NVARCHAR(255),
    last_name NVARCHAR(255),
    password NVARCHAR(255) NOT NULL,
    phone_num NVARCHAR(15),
    seller_account BIT DEFAULT 0
);

-- Create Sellers Table
CREATE TABLE Sellers (
    seller_id INT IDENTITY(1,1) PRIMARY KEY,
    shop_name NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) NOT NULL,
    FOREIGN KEY (email) REFERENCES Accounts(email) ON DELETE CASCADE
);

-- Create Categories Table
CREATE TABLE Categories (
    category_id INT IDENTITY(1,1) PRIMARY KEY,
    category_name NVARCHAR(255) NOT NULL UNIQUE,
    category_image NVARCHAR(255)
);

-- Create Products Table
CREATE TABLE Products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name NVARCHAR(255) NOT NULL,
    description NVARCHAR(MAX),
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    stock_quantity INT DEFAULT 0 CHECK (stock_quantity >= 0),
    category_id INT,
    seller_id INT,
    product_rating DECIMAL(2, 1) DEFAULT 0.0 CHECK (product_rating >= 0 AND product_rating <= 5),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE SET NULL,
    FOREIGN KEY (seller_id) REFERENCES Sellers(seller_id) ON DELETE CASCADE
);

CREATE TABLE Images (
    image_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    image_data VARBINARY(MAX) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

--create offers table
CREATE TABLE Offers (
    offer_id INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255) NOT NULL,
    description NVARCHAR(255),
    percentage INT NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create Cart Table
CREATE TABLE Cart (
    cart_id INT IDENTITY(1,1) PRIMARY KEY,
    email NVARCHAR(255) NOT NULL,
    FOREIGN KEY (email) REFERENCES Accounts(email) ON DELETE CASCADE
);

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    email NVARCHAR(255) NOT NULL,
    address NVARCHAR(MAX) NOT NULL,
    phone_num NVARCHAR(15) NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL CHECK (total_price >= 0),
    FOREIGN KEY (email) REFERENCES Accounts(email) ON DELETE CASCADE
);

-- Create Cart_Products Table
CREATE TABLE Cart_Products (
    id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    cart_id INT NOT NULL,
    order_id INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (cart_id) REFERENCES Cart(cart_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE SET NULL

);
