DECLARE @index INT;
SET @index = 1;

WHILE @index < 21
BEGIN
    PRINT REPLICATE('* ', @index)
    SET @index = @index + 1
END