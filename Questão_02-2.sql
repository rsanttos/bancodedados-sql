SELECT DISTINCT(e.ename), z.city FROM mailorder.employees e
JOIN mailorder.zipcodes z 
	ON e.zip = z.zip
JOIN mailorder.orders o
	ON o.eno = e.eno
JOIN mailorder.odetails od
	ON od.ono = o.ono
JOIN mailorder.parts p
	ON od.pno = p.pno AND (od.qty * p.price) > 50;