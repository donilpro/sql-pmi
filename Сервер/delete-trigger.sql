CREATE TRIGGER Details_del ON Details
INSTEAD OF DELETE AS
BEGIN
	DELETE FROM Normals
	WHERE det_id in (SELECT id FROM deleted)
	DELETE FROM Details
	WHERE id in (SELECT id FROM deleted)
END