SELECT s.fname FROM gradebook.students s
JOIN gradebook.enrolls e 
	ON e.students_sid = s.sid
JOIN gradebook.courses c
	ON e.courses_secno = c.secno AND e.courses_term = c.term
JOIN gradebook.catalogue cat
	ON cat.cno = c.cno
GROUP BY (s.fname)
HAVING COUNT(e.students_sid) > (SELECT COUNT(c.cno) FROM gradebook.catalogue c);
