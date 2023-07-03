-- Глава 3

-- [1] Напишите команду SELECT которая бы вывела номера заказов, сумму, и дату для всех строк из таблицы Заказов. 

/* SELECT onum as 'Номер заказа', snum as 'Сумма', odate as 'Дата' FROM Orders */

-- [7] Напишите команду SELECT которая вывела бы оценку(rating), сопровождаемую именем каждого заказчика в San Jose. 

/* SELECT cname, rating, city FROM Customers WHERE city = 'San Jose' */

-- [10] Напишите  запрос,  который вывел бы значения cnum всех заказчиков из таблицы Заказов без каких бы то ни было повторений. 

/* SELECT distinct cnum FROM Orders */