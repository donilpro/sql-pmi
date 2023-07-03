CREATE TRIGGER Details_upd ON Details
AFTER UPDATE AS
BEGIN
	UPDATE Normals
	SET prep_time = 0, unit_time = 0
	WHERE det_id in (SELECT del.id 
					 FROM deleted as del, inserted as det 
					 WHERE del.type = 'Собственная' AND 
					 det.type = 'Покупная' AND 
					 del.id = det.id)
END