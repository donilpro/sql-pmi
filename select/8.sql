/* [1] Ќапишите  запрос,  который  бы  использовал подзапрос дл€ получени€
   всех заказов заказчика с именем Cisneros.  ѕредположим, что вы
   не знаете номера этого заказчика, указываемого в поле cnum. */

SELECT *
FROM Orders
WHERE cnum in (SELECT cnum
				FROM Customers
				WHERE cname = 'Cisneros')

/* [3] Ќапишите запрос который вывел бы имена и рейтинги тех заказчиков,
	у которых есть заказы на сумму выше средней суммы по всем заказам. */

SELECT distinct Customers.cname, Customers.rating
FROM Customers, Orders
WHERE Orders.cnum = Customers.cnum
and Orders.amt > (SELECT AVG(amt)
		FROM Orders)

/* [6] Ќапишите запрос, который бы выбрал количество заказов дл€ каждого покупател€,
   у которого минимальна€ стоимость заказов больше средней стоимости по всем заказам. */

SELECT Customers.cname, MIN(distinct amt)
FROM Orders, Customers
WHERE Orders.cnum = Customers.cnum
GROUP BY Customers.cname
HAVING MIN(distinct amt) > (SELECT AVG(amt)
							FROM Orders)
