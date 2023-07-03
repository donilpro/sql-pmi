CREATE FUNCTION Get_price_sum_table (
        @name varchar(20),
		@rank1 int,
		@rank2 int)
RETURNS TABLE
AS
    RETURN( SELECT d.name as detail, d.price as price, j.name as job
    FROM Normals n, Details d, Jobs j
    WHERE j.id = n.job_id AND
          j.name = @name AND
		  n.det_id = d.id AND
          n.rank BETWEEN @rank1 AND @rank2)
