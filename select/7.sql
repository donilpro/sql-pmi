/* [1] �������� ������ ������� �� ����� ��� ���� ���������
 ������� � ����� � ��� �� ������.  ��������� ����������
  ��������� � ���� ��, � ����� ��������� ����� ���������
   � �������� �������. */ 

SELECT s1.sname, s2.sname
FROM Salespeople as s1, Salespeople as s2
WHERE s1.city = s2.city and s1.snum < s2.snum

/* [4] �������� ������, ������� �� ����� ��� ���� ���� ����������,
 ������� ���-���� ���������� � ���� � ��� �� ����,
 ���� ������ ��� ���� �������� � �������� ������. */

SELECT distinct c1.cname, c2.cname, o1.odate
FROM Orders as o1, Orders as o2, Customers as c1, Customers as c2
WHERE o1.odate = o2.odate
and c1.cnum = o1.cnum
and c2.cnum = o2.cnum
and c1.cnum < c2.cnum

/* [6] ��������  ������,  ������� ����� �� ����� (sname)
 � ������(city) ���� ��������� � ������������� ������,
 ��� � Peel. �������� ������, ������������ ����� �������� Peel
 (������ 1001), � �� ��� ������������,
 ��� ����� ���� ������ ����� ���� ������������ ����,
 ���� ���� ������� ������������ ����� ���������. */

SELECT s1.sname 
FROM Salespeople as s1, Salespeople as s2
WHERE s2.snum = 1001
and s1.comm > s2.comm