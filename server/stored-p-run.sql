DECLARE @avg int

EXECUTE Get_avg_rank 'Собственная', '0', '50000', @avg out

SELECT @avg