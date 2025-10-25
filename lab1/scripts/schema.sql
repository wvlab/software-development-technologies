USE MusicShop;

CREATE TABLE Class (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(MAX)
);

CREATE TABLE Brand (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    country NVARCHAR(100),
    description NVARCHAR(MAX)
);

CREATE TABLE Supplier (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    address NVARCHAR(255),
    phone NVARCHAR(20)
);

CREATE TABLE Customer (
    id INT IDENTITY(1,1) PRIMARY KEY,
    last_name NVARCHAR(64) NOT NULL,
    first_name NVARCHAR(64) NOT NULL,
    patronym NVARCHAR(64) NOT NULL,
    phone NVARCHAR(20),
    address NVARCHAR(255)
);

CREATE TABLE Instrument (
    id INT IDENTITY(1,1) PRIMARY KEY,
    class_id INT NOT NULL,
    brand_id INT NOT NULL,
    supplier_id INT NOT NULL,
    name NVARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    year_of_production INT,
    characteristics NVARCHAR(MAX),
    CONSTRAINT fk_instrument_class FOREIGN KEY (class_id) REFERENCES Class(id),
    CONSTRAINT fk_instrument_brand FOREIGN KEY (brand_id) REFERENCES Brand(id),
    CONSTRAINT fk_instrument_supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(id)
);

CREATE TABLE Receipt (
    id INT IDENTITY(1,1) PRIMARY KEY,
    instrument_id INT NOT NULL,
    sale_date DATE NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    CONSTRAINT fk_receipt_instrument FOREIGN KEY (instrument_id) REFERENCES Instrument(id)
);

CREATE TABLE Warranty (
    id INT IDENTITY(1,1) PRIMARY KEY,
    receipt_id INT NOT NULL,
    customer_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    description NVARCHAR(MAX),
    CONSTRAINT fk_warranty_receipt FOREIGN KEY (receipt_id) REFERENCES Receipt(id),
    CONSTRAINT fk_warranty_customer FOREIGN KEY (customer_id) REFERENCES Customer(id)
);
