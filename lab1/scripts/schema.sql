USE MusicShop;

CREATE TABLE Class (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(255)
);

CREATE TABLE Brand (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    country NVARCHAR(100),
    description NVARCHAR(255)
);

CREATE TABLE Supplier (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    address NVARCHAR(255),
    phone NVARCHAR(20)
);

CREATE TABLE Customer (
    id INT IDENTITY(1,1) PRIMARY KEY,
    full_name NVARCHAR(150) NOT NULL,
    address NVARCHAR(255),
    phone NVARCHAR(20)
);

CREATE TABLE Warranty (
    id INT IDENTITY(1,1) PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    description NVARCHAR(255)
);

CREATE TABLE Instrument (
    id INT IDENTITY(1,1) PRIMARY KEY,
    class_id INT NOT NULL,
    brand_id INT NOT NULL,
    supplier_id INT NOT NULL,
    name NVARCHAR(100) NOT NULL,
    year_of_production INT,
    description NVARCHAR(255),
    quantity INT,
    price DECIMAL(10,2),
    country NVARCHAR(100),
    characteristics NVARCHAR(255),
    CONSTRAINT fk_instrument_class FOREIGN KEY (class_id) REFERENCES Class(id),
    CONSTRAINT fk_instrument_brand FOREIGN KEY (brand_id) REFERENCES Brand(id),
    CONSTRAINT fk_instrument_supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(id)
);

CREATE TABLE Receipt (
    id INT IDENTITY(1,1) PRIMARY KEY,
    instrument_id INT NOT NULL,
    customer_id INT NOT NULL,
    warranty_id INT NOT NULL,
    sale_date DATE NOT NULL,
    description NVARCHAR(255),
    CONSTRAINT fk_receipt_instrument FOREIGN KEY (instrument_id) REFERENCES Instrument(id),
    CONSTRAINT fk_receipt_customer FOREIGN KEY (customer_id) REFERENCES Customer(id),
    CONSTRAINT fk_receipt_warranty FOREIGN KEY (warranty_id) REFERENCES Warranty(id)
);
