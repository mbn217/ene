package edu.umgc.cmsc495.ene.service;

import java.util.List;

import edu.umgc.cmsc495.ene.model.BookModel;
import edu.umgc.cmsc495.ene.model.RentBook;

public interface BookService {

	public int sellBook(BookModel book);
	public List<BookModel> searchBook(BookModel book);
	public BookModel getBook(int id);
	public List<BookModel> getRecommendedBooks(List<BookModel> booksInCart);
	public List<BookModel> searchBookByCriteria(String searchTerm);
	public RentBook getRentBook(int id);
	public List<BookModel> getBooksByUserId(int userId);
}
