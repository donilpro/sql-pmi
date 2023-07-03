CREATE FUNCTION Get_price_sum (
        @name varchar(20),
		@rank1 int,
		@rank2 int)
RETURNS decimal(15,2)
AS
BEGIN
    RETURN( SELECT SUM(price)  
    FROM Normals n, Details d, Jobs j
    WHERE j.id = n.job_id AND
          j.name = @name AND
		  n.det_id = d.id AND
          n.rank BETWEEN @rank1 AND @rank2)

END