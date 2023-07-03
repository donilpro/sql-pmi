-- [1] Напишите  два запроса которые могли бы вывести все заказы  на 3 или 4 Октября 2015

/* SELECT * FROM Orders WHERE odate = '2015-10-03'
SELECT * FROM Orders WHERE odate = '2015-10-04' */

-- [5] Напишите запрос,  который может вывести всех заказчиков чьи  имена начинаются с буквы попадающей в диапазон от A до G.

/* SELECT * FROM Salespeople WHERE sname BETWEEN 'A' and 'H' */

-- [8] Напишите запрос, который выберет всех продавцов, чьи имена  заканчиваются на букву s.

/* SELECT * FROM Salespeople WHERE sname LIKE '%s' */