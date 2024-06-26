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
CALL CancelOrder(5);
