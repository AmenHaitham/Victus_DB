-- Create the database
CREATE DATABASE victus_store;
GO

-- Use the created database
USE victus_store;
GO

-- Create Accounts Table
CREATE TABLE Accounts (
	first_name NVARCHAR(255),
	last_name NVARCHAR(255),
    email NVARCHAR(255) PRIMARY KEY,
    password NVARCHAR(255) NOT NULL,
    phone_num NVARCHAR(15),
    seller_account BIT DEFAULT 0
);

-- Create Sellers Table
CREATE TABLE Sellers (
    seller_id INT IDENTITY(1,1) PRIMARY KEY,
    seller_name NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) NOT NULL,
    FOREIGN KEY (email) REFERENCES Accounts(email)
);

-- Create Products Table
CREATE TABLE Products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name NVARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    seller_id INT NOT NULL,
    FOREIGN KEY (seller_id) REFERENCES Sellers(seller_id)
);

-- Create Images Table with VARBINARY for real images
CREATE TABLE Images (
    image_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    image_data VARBINARY(MAX) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

-- Add other tables and relationships as needed.
