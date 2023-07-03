/* [1] Напишите  запрос который бы вывел список номеров заказов
 сопровождающихся именем заказчика который создавал их. */

SELECT Orders.onum, Salespeople.sname FROM Orders, Salespeople WHERE Salespeople.snum = Orders.snum

/* [5]  Напишите  запрос  который  бы выводил всех заказчиков
 обслуживаемых продавцом с комиссионными выше 12%  .
   Выведите имя заказчика,  имя продавца,
    и ставку комиссионных продавца. */

SELECT Customers.cname, Salespeople.sname, Salespeople.comm 
FROM Customers, Salespeople 
WHERE Customers.snum = Salespeople.snum AND Salespeople.comm > 0.12

/* [8] Напишите запрос, который отбирает заказы заказчиков
 из Лондона и выводит: 
         номер заказа и сумму (заказа + комиссионных). */

SELECT Orders.onum, Orders.amt * (Salespeople.comm + 1) FROM Orders, Customers, Salespeople
WHERE Orders.cnum = Customers.cnum AND Customers.city = 'London' 
AND Salespeople.snum = Customers.snum 
