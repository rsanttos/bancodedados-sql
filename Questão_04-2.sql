SELECT sup.sname FROM supplier.suppliers sup
JOIN supplier.sppj sppj
	ON sppj.suppliers_sno = sup.sno
JOIN supplier.projects proj
	ON sppj.projects_pjno = proj.pjno AND proj.pjno = 'J1'
GROUP BY sup.sname
HAVING COUNT(sup.sno) > 2; 