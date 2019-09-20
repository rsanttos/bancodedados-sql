SELECT part.pname FROM supplier.parts part
JOIN supplier.sppj sppj 
	ON sppj.parts_pno = part.pno
GROUP BY part.pname
HAVING COUNT(DISTINCT(sppj.projects_pjno)) = 2;