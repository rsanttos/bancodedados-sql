SELECT DISTINCT(c.cname) FROM mailorder.customers c
JOIN mailorder.orders o
	ON o.cno = c.cno
JOIN mailorder.employees e
	ON o.eno = e.eno
JOIN mailorder.zipcodes z
	ON z.zip = e.zip AND z.city = 'Wichita';