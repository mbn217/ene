package edu.umgc.cmsc495.ene.dao;

import java.util.List;

import edu.umgc.cmsc495.ene.model.BookModel;

public interface BookDAO {

	public int sellBook(BookModel book);
	public List<BookModel> searchBook(BookModel book);
	public BookModel getBook(int bookId);
	List<BookModel> getRecommendedBooks(String bookCategory, Integer bookAlreadyAdded);
	public List<BookModel> searchBookByCriteria(String searchTerm);
	public List<BookModel> getBooksByUserId(int userId);
}
