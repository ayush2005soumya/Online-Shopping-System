DELIMITER //

CREATE TRIGGER UpdateStockAfterOrder
BEFORE INSERT ON Orders
FOR EACH ROW
BEGIN
    DECLARE current_stock INT;

    -- Get current stock for the product
    SELECT Stock INTO current_stock
    FROM Products
    WHERE ProductID = NEW.ProductID;

    -- Check if stock is sufficient
    IF current_stock < NEW.Quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Not enough stock available for the product.';
    END IF;

    -- If enough stock, update it
    UPDATE Products
    SET Stock = Stock - NEW.Quantity
    WHERE ProductID = NEW.ProductID;
END;
//

DELIMITER ;
