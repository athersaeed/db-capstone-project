INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (1, 'Customer 1', 1248519589);
INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (2, 'Customer 2', 9042173335);
INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (3, 'Customer 3', 2038388680);
INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (4, 'Customer 4', 1970460516);
INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (5, 'Customer 5', 9911190675);
INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (6, 'Customer 6', 3612307395);
INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (7, 'Customer 7', 8412943751);
INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (8, 'Customer 8', 8700242745);
INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (9, 'Customer 9', 9442238042);
INSERT INTO customers (CustomerID, CustomerName, PhoneNumber) VALUES (10, 'Customer 10', 5740309931);


INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (1, 'Italian', 'Vegan', 'Menu 1');
INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (2, 'Chinese', 'Vegetarian', 'Menu 2');
INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (3, 'Mexican', 'Vegetarian', 'Menu 3');
INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (4, 'Chinese', 'Vegetarian', 'Menu 4');
INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (5, 'Indian', 'Vegan', 'Menu 5');
INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (6, 'Indian', 'Vegetarian', 'Menu 6');
INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (7, 'Indian', 'Vegetarian', 'Menu 7');
INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (8, 'Mexican', 'Non-Vegan', 'Menu 8');
INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (9, 'Italian', 'Vegan', 'Menu 9');
INSERT INTO menus (MenuID, CuisineType, FoodType, MenuName) VALUES (10, 'Indian', 'Vegan', 'Menu 10');



INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (1, '2022-03-28', 7, 8);
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (2, '2023-10-28', 7, 2);
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (3, '2024-06-07', 15, 3);
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (4, '2023-10-15', 13, 9);
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (5, '2024-02-21', 1, 9);
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (6, '2024-01-16', 2, 3);
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (7, '2024-08-16', 5, 1);
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (8, '2023-03-13', 11, 4);
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (9, '2024-09-03', 11, 8);
INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (10, '2022-08-24', 3, 5);




INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (1, 9, 18.13, 8, 3);
INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (2, 9, 33.19, 10, 2);
INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (3, 6, 69.03, 8, 1);
INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (4, 8, 62.13, 9, 10);
INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (5, 2, 60.54, 8, 6);
INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (6, 9, 51.13, 3, 4);
INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (7, 6, 15.36, 5, 8);
INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (8, 8, 93.31, 7, 4);
INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (9, 7, 85.98, 4, 3);
INSERT INTO orders (OrderID, Quantity, OrderCost, MenuID, CustomerID) VALUES (10, 2, 79.18, 1, 3);




INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (8, 'Cancelled', '2023-08-02');
INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (7, 'Pending', '2024-08-09');
INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (3, 'Delivered', '2024-06-15');
INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (1, 'Delivered', '2023-04-15');
INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (1, 'Cancelled', '2022-05-12');
INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (6, 'Cancelled', '2022-04-16');
INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (1, 'Cancelled', '2022-11-16');
INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (10, 'Delivered', '2022-10-28');
INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (9, 'Delivered', '2022-12-21');
INSERT INTO orderstatus (OrderID, DeliveryStatus, DeliveryDate) VALUES (6, 'Pending', '2023-03-10');



