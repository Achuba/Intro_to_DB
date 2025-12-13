CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price Double NOT NULL,
    published_date DATE NOT NULL,
    Foreign Key (author_id) REFERENCES Authors (author_id)
);

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(250) NOT NULL
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(251) NOT NULL,
    email VARCHAR(251) NOT NULL UNIQUE,
    address TEXT NOT NULL
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    Foreign Key (customer_id) REFERENCES Customers (customer_id)
);

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE PRECISION NOT NULL,
    Foreign Key (order_id) REFERENCES Orders (order_id),
    Foreign Key (book_id) REFERENCES Books (book_id)
);