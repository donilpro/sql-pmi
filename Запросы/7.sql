/* [1] Ќапишите запрос который бы вывел все пары продавцов
 живущих в одном и том же городе.  »сключите комбинации
  продавцов с ними же, а также дубликаты строк выводимых
   в обратным пор€дке. */ 

SELECT s1.sname, s2.sname
FROM Salespeople as s1, Salespeople as s2
WHERE s1.city = s2.city and s1.snum < s2.snum

/* [4] Ќапишите запрос, который бы вывел все пары имен заказчиков,
 которые что-либо заказывали в один и тот же день,
 дату такого дн€ тоже включите в выходную строку. */

SELECT distinct c1.cname, c2.cname, o1.odate
FROM Orders as o1, Orders as o2, Customers as c1, Customers as c2
WHERE o1.odate = o2.odate
and c1.cnum = o1.cnum
and c2.cnum = o2.cnum
and c1.cnum < c2.cnum

/* [6] Ќапишите  запрос,  который вывел бы имена (sname)
 и города(city) всех продавцов с комиссионными больше,
 чем у Peel. Ќапишите запрос, использующий номер продавца Peel
 (равный 1001), а не его комиссионные,
 так чтобы этот запрос можно было использовать даже,
 если этот процент комиссионных вдруг изменитс€. */

SELECT s1.sname 
FROM Salespeople as s1, Salespeople as s2
WHERE s2.snum = 1001
and s1.comm > s2.comm