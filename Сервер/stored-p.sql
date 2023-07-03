CREATE PROCEDURE Get_avg_rank
        @type varchar(20),
        @price1 decimal(13,2),
        @price2 decimal(13,2),
        @avg real output
AS
BEGIN
    SELECT @avg = AVG(rank)  
    FROM Normals n, Details d
    WHERE d.id = n.det_id AND
          d.type = @type AND
          d.price BETWEEN @price1 AND @price2
END