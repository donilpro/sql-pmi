/* [1] ��������  ������ ������� �� ����� ������ ������� �������
 ���������������� ������ ��������� ������� �������� ��. */

SELECT Orders.onum, Salespeople.sname FROM Orders, Salespeople WHERE Salespeople.snum = Orders.snum

/* [5]  ��������  ������  �������  �� ������� ���� ����������
 ������������� ��������� � ������������� ���� 12%  .
   �������� ��� ���������,  ��� ��������,
    � ������ ������������ ��������. */

SELECT Customers.cname, Salespeople.sname, Salespeople.comm 
FROM Customers, Salespeople 
WHERE Customers.snum = Salespeople.snum AND Salespeople.comm > 0.12

/* [8] �������� ������, ������� �������� ������ ����������
 �� ������� � �������: 
         ����� ������ � ����� (������ + ������������). */

SELECT Orders.onum, Orders.amt * (Salespeople.comm + 1) FROM Orders, Customers, Salespeople
WHERE Orders.cnum = Customers.cnum AND Customers.city = 'London' 
AND Salespeople.snum = Customers.snum 
