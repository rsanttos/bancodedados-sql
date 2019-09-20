SELECT DISTINCT(s.name) FROM bookadoption.students s
JOIN bookadoption.enrolls e
	ON e.students_ssn = s.ssn
JOIN bookadoption.courses c
	ON e.courses_cnum = c.cnum
JOIN bookadoption.bookuses b
	ON b.courses_cnum = c.cnum
JOIN bookadoption.books book
	ON b.books_isbn = book.isbn AND publisher = 'Addison Wesley'
;