DELETE FROM Normals
DELETE FROM Details
DELETE FROM Jobs

INSERT INTO Jobs(id,name)
VALUES (0,'�������'),
       (1,'������'),
       (2,'�������'),
	   (3,'��������'),
	   (4,'���������')
INSERT INTO Details(id, type, name, price, norm)
VALUES (0, '�����������', '�������', 32000, 300),
	   (1, '�����������', '��������� �����', 200, 2000),
	   (2, '��������', '���� ����������', 5000, 500),
	   (3, '�����������', '����������', 21000, 600),
	   (4, '��������', '���������', 600, 3000)
SET IDENTITY_INSERT Normals ON
INSERT INTO Normals(det_id, job_id, rank, job_num, prep_time, unit_time, op_num)
VALUES (3, 1, 4, 2110, 60, 300, 0),
	   (0, 1, 2, 2305, 120, 450, 1),
	   (2, 3, 2, 2903, 30, 0, 2),
	   (1, 4, 2, 1012, 10, 10, 3),
	   (4, 2, 4, 0905, 0, 0, 4)
SET IDENTITY_INSERT Normals OFF

SELECT * FROM Jobs
SELECT * FROM Details
SELECT * FROM Normals