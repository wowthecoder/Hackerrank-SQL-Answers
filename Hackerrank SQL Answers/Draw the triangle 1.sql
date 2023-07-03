DECLARE @index INT;
SET @index = 20;

WHILE @index > 0
BEGIN
    PRINT REPLICATE('* ', @index)
    SET @index = @index - 1
END