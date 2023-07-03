/* [1] ��������  ������,  �������  ��  ����������� ��������� ��� ���������
   ���� ������� ��������� � ������ Cisneros.  �����������, ��� ��
   �� ������ ������ ����� ���������, ������������ � ���� cnum. */

SELECT *
FROM Orders
WHERE cnum in (SELECT cnum
				FROM Customers
				WHERE cname = 'Cisneros')

/* [3] �������� ������ ������� ����� �� ����� � �������� ��� ����������,
	� ������� ���� ������ �� ����� ���� ������� ����� �� ���� �������. */

SELECT distinct Customers.cname, Customers.rating
FROM Customers, Orders
WHERE Orders.cnum = Customers.cnum
and Orders.amt > (SELECT AVG(amt)
		FROM Orders)

/* [6] �������� ������, ������� �� ������ ���������� ������� ��� ������� ����������,
   � �������� ����������� ��������� ������� ������ ������� ��������� �� ���� �������. */

SELECT Customers.cname, MIN(distinct amt)
FROM Orders, Customers
WHERE Orders.cnum = Customers.cnum
GROUP BY Customers.cname
HAVING MIN(distinct amt) > (SELECT AVG(amt)
							FROM Orders)
