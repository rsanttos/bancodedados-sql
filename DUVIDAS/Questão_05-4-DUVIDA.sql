SELECT c.dept FROM bookadoption.courses c
JOIN bookadoption.bookuses b
	ON b.courses_cnum = c.cnum
JOIN bookadoption.books book
	ON b.books_isbn = book.isbn AND book.author = 'Navathe' AND book.publisher = 'Addison Wesley'
GROUP BY c.dept
HAVING COUNT(b.books_isbn) = COUNT(b.books_isbn);
