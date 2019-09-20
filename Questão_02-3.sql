SELECT c1.cno, c2.cno FROM mailorder.customers c1
JOIN mailorder.zipcodes z 
	ON z.zip = c1.zip
JOIN mailorder.customers c2
	ON z.zip = c2.zip AND c1.cno != c2.cno
ORDER BY c1.cno;