
/* [1] �������� ������� SELECT ������������ ������������ ���������,  ����-
   ���  �������  ����� � ������ ���� ���������� � ������������� ��� ��
   ������� ����������. */

SELECT c2.cname, c2.city, MAX(rating)
FROM Customers as c2
WHERE exists (SELECT city, rating FROM Customers)
GROUP BY c2.city


/* [4] �������� ������ ������� �� ����������� �������� EXISTS ��� �������-
   ��� ���� ��������� ������� ����� ���������� � ������� 300. */

SELECT c.snum
FROM Customers as c
WHERE c.rating = 300 
and exists (SELECT s.snum 
				FROM Salespeople as s 
				WHERE c.snum = s.snum)

/* [7] ��������  ������  ������� �������� �� �� ������� ������� ����� ������,
	��������� ������� ������� �� ������� ���� ��� ���� �����. */

SELECT onum
FROM Orders
WHERE cnum in (SELECT cnum
		FROM Orders
		GROUP BY cnum
		HAVING COUNT(onum) > 1)