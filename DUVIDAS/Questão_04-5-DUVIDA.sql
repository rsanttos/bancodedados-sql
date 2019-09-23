SELECT sup.sname, COUNT(DISTINCT(sppj.parts_pno)), COUNT(DISTINCT(sppj.projects_pjno)) FROM supplier.suppliers sup
JOIN supplier.sppj sppj
	ON sppj.suppliers_sno = sup.sno
JOIN supplier.parts parts
	ON sppj.parts_pno = parts.pno
JOIN supplier.projects proj
	ON sppj.projects_pjno = proj.pjno
GROUP BY sup.sname
HAVING COUNT(DISTINCT(sppj.parts_pno)) > 1 AND COUNT(DISTINCT(sppj.projects_pjno)) > 1; 