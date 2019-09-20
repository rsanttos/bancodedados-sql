SELECT part.pname FROM supplier.parts part
JOIN supplier.sppj sppj
	ON sppj.parts_pno = part.pno
JOIN supplier.suppliers sup
	ON sppj.suppliers_sno = sup.sno
GROUP BY part.pname
HAVING COUNT(DISTINCT(sppj.suppliers_sno)) = (SELECT COUNT(sno) FROM supplier.suppliers)
ORDER BY part.pname DESC; 
