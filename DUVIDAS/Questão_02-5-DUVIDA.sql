SELECT c.cname, p.pname, p.price FROM mailorder.customers c
JOIN mailorder.orders o 
	ON o.cno = c.cno
JOIN mailorder.odetails od
	ON od.ono = o.ono
JOIN mailorder.parts p
	ON p.pno = od.pno AND p.price < 20
GROUP BY c.cname, p.pname, p.price
HAVING COUNT(od.pno) > 1;