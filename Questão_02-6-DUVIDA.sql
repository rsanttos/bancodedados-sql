SELECT c.cname FROM mailorder.customers c
LEFT JOIN mailorder.orders o
	ON o.cno = c.cno
GROUP BY (c.cname)
HAVING COUNT(o.ono) <> 1;