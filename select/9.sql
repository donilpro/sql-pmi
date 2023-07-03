
/* [1] Напишите команду SELECT использующую соотнесенный подзапрос,  кото-
   рая  выберет  имена и номера всех заказчиков с максимальными для их
   городов рейтингами. */

SELECT c2.cname, c2.city, MAX(rating)
FROM Customers as c2
WHERE exists (SELECT city, rating FROM Customers)
GROUP BY c2.city


/* [4] Напишите запрос который бы использовал оператор EXISTS для извлече-
   ния всех продавцов которые имеют заказчиков с оценкой 300. */

SELECT c.snum
FROM Customers as c
WHERE c.rating = 300 
and exists (SELECT s.snum 
				FROM Salespeople as s 
				WHERE c.snum = s.snum)

/* [7] Напишите  запрос  который извлекал бы из таблицы Заказов такие заказы,
	заказчики которых имеются по крайней мере еще один заказ. */

SELECT onum
FROM Orders
WHERE cnum in (SELECT cnum
		FROM Orders
		GROUP BY cnum
		HAVING COUNT(onum) > 1)