SELECT proj.pjname FROM supplier.projects proj
JOIN supplier.sppj sppj 
	ON sppj.projects_pjno = proj.pjno
JOIN supplier.suppliers s
	ON sppj.suppliers_sno = s.sno AND s.sno = 'S1'
GROUP BY (proj.pjname)
HAVING COUNT(sppj.suppliers_sno) = 1;
    