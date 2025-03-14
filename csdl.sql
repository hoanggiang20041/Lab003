CREATE DATABASE Sanpham1;
GO
USE Sanpham1;
GO

CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL
);

CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Description NVARCHAR(MAX),
    ImageUrl NVARCHAR(255),
    CategoryId INT,
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id) ON DELETE CASCADE
);

CREATE TABLE ProductImages (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Url NVARCHAR(255) NOT NULL,
    ProductId INT,
    FOREIGN KEY (ProductId) REFERENCES Products(Id) ON DELETE CASCADE
);

