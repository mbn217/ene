package edu.umgc.cmsc495.ene.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.umgc.cmsc495.ene.dao.BookDAO;
import edu.umgc.cmsc495.ene.model.BookModel;
import edu.umgc.cmsc495.ene.model.RentBook;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDAO bookDAO;
	
	@Override
	public int sellBook(BookModel book) {
		return bookDAO.sellBook(book);
	}

	@Override
	public List<BookModel> searchBook(BookModel book) {
		return bookDAO.searchBook(book);
	}

	@Override
	public BookModel getBook(int id) {
		return bookDAO.getBook(id);
	}

	@Override
	public List<BookModel> getRecommendedBooks(List<BookModel> booksInCart) {
		String bookCategory = "";
		Integer bookAlreadyAdded = 0;
		for(BookModel book : booksInCart) {
			bookCategory = book.getBookCategory();
			bookAlreadyAdded = book.getId();
		}
		return bookDAO.getRecommendedBooks(bookCategory, bookAlreadyAdded);
	}

	@Override
	public List<BookModel> searchBookByCriteria(String searchTerm) {
		return bookDAO.searchBookByCriteria(searchTerm);
	}

	@Override
	public RentBook getRentBook(int id) {
		BookModel book = bookDAO.getBook(id);
		RentBook rentBook = new RentBook(id, book.getBookTitle(), book.getAuthor(), book.getBookCategory(), book.getIsbn()
				, book.getPublishedDate(), book.getPrice(), book.getUserId());
		return rentBook;
	}

	@Override
	public List<BookModel> getBooksByUserId(int userId) {
		return bookDAO.getBooksByUserId(userId);
	}

}
