CREATE TRIGGER Details_upd ON Details
AFTER UPDATE AS
BEGIN
	UPDATE Normals
	SET prep_time = 0, unit_time = 0
	WHERE det_id in (SELECT id FROM deleted WHERE type = 'Собственная')
END