-- Task1: Create View Table
CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, OrderCost
FROM Orders
WHERE Quantity > 2;

SELECT * FROM OrdersView;



-- Task2: Create joins
SELECT 
customers.CustomerID, customers.CustomerName, orders.OrderID, orders.OrderCost, menus.MenuID, menus.MenuName
FROM 
orders INNER JOIN customers ON orders.CustomerID = customers.CustomerID
INNER JOIN menus ON orders.MenuID = menus.MenuID
ORDER BY OrderCost ASC;



-- Task3: Subqueries
SELECT MenuName 
FROM menus
WHERE MenuID IN (
    SELECT MenuID 
    FROM orders 
    WHERE Quantity > 2
);



-- Task4: Stored Procedure
DELIMITER //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT OrderID, Quantity, OrderCost FROM orders ORDER BY Quantity DESC LIMIT 1;
END //
DELIMITER ;
CALL GetMaxQuantity();


-- Task5:
PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, OrderCost FROM Orders WHERE CustomerID = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;



-- Task6: procedure
DELIMITER //
CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
DELETE FROM orders WHERE OrderID = order_id;
SELECT CONCAT("ORDER: ", order_id, " is cancelled") AS Confirmation;
END //
DELIMITER ;
CALL CancelOrder(1);



-- Task7: Procedure with Control Flow
DELIMITER //
CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
DECLARE booking_status VARCHAR(50);
IF EXISTS (SELECT 1 FROM bookings WHERE BookingDate = booking_date AND TableNumber = table_number) THEN
	SET booking_status = CONCAT('Table ', table_number, ' is booked');
ELSE
	SET booking_status = CONCAT('Table ', table_number, ' is NOT booked');
END IF;
SELECT booking_status AS `BookingStatus`;
END //
DELIMITER ;
CALL CheckBooking('2024-02-21', 1);



-- Task8: Procedure with Transactions
DELIMITER //
CREATE PROCEDURE AddValidBooking(IN booking_id INT, IN booking_date DATE, IN table_number INT, IN customer_id INT)
BEGIN
DECLARE booking_status VARCHAR(50);
START TRANSACTION;
IF EXISTS (SELECT 1 FROM bookings WHERE BookingDate = booking_date AND TableNumber = table_number) THEN
	SET booking_status = CONCAT('Table ', table_number, ' is booked. Transaction Cancelled');
    ROLLBACK;
ELSE
	INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES (booking_id, booking_date, table_number, customer_id);
	SET booking_status = CONCAT('Table ', table_number, ' is NOW booked');
    COMMIT;
END IF;
SELECT booking_status AS `BookingStatus`;
END //
DELIMITER ;
CALL AddValidBooking(13, '2024-09-03', 19, 5);




