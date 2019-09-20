SELECT c.cname FROM bookadoption.courses c
JOIN bookadoption.bookuses b
	ON b.courses_cnum = c.cnum
GROUP BY c.cname
HAVING COUNT(DISTINCT(b.books_isbn)) > 1;