package edu.umgc.cmsc495.ene.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.umgc.cmsc495.ene.model.BookModel;

@Repository
public class BookDAOImpl implements BookDAO {

	@Autowired
	private DataSource dataSource;

	/*
	 * Insert a new row in book table
	*/
	@Override
	public int sellBook(BookModel book) {
		
		int row=0;
		String query = "INSERT INTO Book (bookTitle, bookAuthor, bookCategory, isbn, publishDate, price, userId) VALUES (?,?,?,?,?,?,?)";
		try (Connection connection = dataSource.getConnection();
	             PreparedStatement ps = connection.prepareStatement(query)) {
            
            ps.setString(1, book.getBookTitle());
            ps.setString(2, book.getAuthor());
            ps.setString(3, book.getBookCategory());
            ps.setString(4, book.getIsbn());
            ps.setString(5, book.getPublishedDate());
            ps.setDouble(6, book.getPrice());
            ps.setInt(7, book.getUserId());
            row = ps.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return row;
	}

	/*
	 * Search for a book based on search criteria
	*/
	@Override
	public List<BookModel> searchBook(BookModel book) {
		
		List<BookModel> bookList = new ArrayList<>();
		
		try (Connection connection = dataSource.getConnection();) {
		
			StringBuilder query = new StringBuilder("SELECT id, bookTitle, bookAuthor, bookCategory, isbn, publishDate, price, userId from BOOK where id is not null ");
			
			if(book != null) {
				if(book.getBookTitle() != null && book.getBookTitle() != "") {
					query.append(" and bookTitle ILIKE '%" + book.getBookTitle() + "%'");
				}
				if(book.getAuthor() != null && book.getAuthor() != "") {
					query.append(" and bookAuthor ILIKE '%"+ book.getAuthor() + "%'");
				}
				if(book.getBookCategory() != null && book.getBookCategory() != "") {
					query.append(" and bookCategory = '"+book.getBookCategory()+"'");
				}
				if(book.getIsbn() != null && book.getIsbn() != "") {
					query.append(" and isbn ILIKE '%"+ book.getIsbn() + "%'");
				}
			}
        		
            PreparedStatement ps = connection.prepareStatement(query.toString());
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String bookTitle = rs.getString("bookTitle");
                String bookAuthor = rs.getString("bookAuthor");
                String bookCategory = rs.getString("bookCategory");
                String isbn = rs.getString("isbn");
                String publishDate = rs.getString("publishDate");
                Double price = rs.getDouble("price");
                Integer userId = rs.getInt("userId");
                
                bookList.add(new BookModel(id, bookTitle, bookAuthor, bookCategory, isbn, publishDate, price, userId));
            }//end while
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return bookList;
	}

	/*
	 * get a single book based on the passed id
	*/
	@Override
	public BookModel getBook(int bookId) {

		BookModel book = null;
		
		String query = "SELECT id, bookTitle, bookAuthor, bookCategory, isbn, publishDate, price, userId from BOOK where id = "+bookId;
		try (Connection connection = dataSource.getConnection();
	             PreparedStatement ps = connection.prepareStatement(query)) {
		
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String bookTitle = rs.getString("bookTitle");
                String bookAuthor = rs.getString("bookAuthor");
                String bookCategory = rs.getString("bookCategory");
                String isbn = rs.getString("isbn");
                String publishDate = rs.getString("publishDate");
                Double price = rs.getDouble("price");
                Integer userId = rs.getInt("userId");
                
                book = new BookModel(id, bookTitle, bookAuthor, bookCategory, isbn, publishDate, price, userId);
            }//end while
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return book;
	}

	/*
	 * get list of recommended books according to the book category
	*/
	@Override
	public List<BookModel> getRecommendedBooks(String bookCategory, Integer bookAlreadyAdded) {

		List<BookModel> bookList = new ArrayList<>();
		String query = "SELECT id, bookTitle, bookCategory, bookAuthor, isbn, publishDate, price, userId from Book where bookCategory = ? and id <> ?";
		
		try (Connection connection = dataSource.getConnection();
	             PreparedStatement ps = connection.prepareStatement(query)) {
			
            ps.setString(1, bookCategory);
            ps.setInt(2, bookAlreadyAdded);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String bookTitle = rs.getString("bookTitle");
                String bookAuthor = rs.getString("bookAuthor");
                String category = rs.getString("bookCategory");
                String isbn = rs.getString("isbn");
                String publishDate = rs.getString("publishDate");
                Double price = rs.getDouble("price");
                Integer userId = rs.getInt("userId");
                
                bookList.add(new BookModel(id, bookTitle, bookAuthor, category, isbn, publishDate, price, userId));
            }//end while
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return bookList;
	}

	@Override
	public List<BookModel> searchBookByCriteria(String searchTerm) {

		List<BookModel> bookList = new ArrayList<>();
		String[] search = searchTerm.split("=");
		String toSearch = search[1];
		StringBuilder query = new StringBuilder("SELECT id, bookTitle, bookAuthor, bookCategory, isbn, publishDate, price, userId from BOOK ");
		
		if(searchTerm != null) {
			query.append(" where bookTitle ILIKE '%" + toSearch + "%' OR bookAuthor ILIKE '%"+toSearch+"%' OR isbn ILIKE '%"+toSearch+"%'");
		}
		try (Connection connection = dataSource.getConnection();
	             PreparedStatement ps = connection.prepareStatement(query.toString())) {
		
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String bookTitle = rs.getString("bookTitle");
                String bookAuthor = rs.getString("bookAuthor");
                String bookCategory = rs.getString("bookCategory");
                String isbn = rs.getString("isbn");
                String publishDate = rs.getString("publishDate");
                Double price = rs.getDouble("price");
                Integer userId = rs.getInt("userId");
                
                bookList.add(new BookModel(id, bookTitle, bookAuthor, bookCategory, isbn, publishDate, price, userId));
            }//end while
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return bookList;
	}

	@Override
	public List<BookModel> getBooksByUserId(int userId) {

		List<BookModel> bookList = new ArrayList<>();
		String query = "SELECT id, bookTitle, bookCategory, bookAuthor, isbn, publishDate, price from Book where userId=?";
		
		try (Connection connection = dataSource.getConnection();
	             PreparedStatement ps = connection.prepareStatement(query)) {
		
            ps.setInt(1, userId);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Integer id = rs.getInt("id");
                String bookTitle = rs.getString("bookTitle");
                String bookAuthor = rs.getString("bookAuthor");
                String category = rs.getString("bookCategory");
                String isbn = rs.getString("isbn");
                String publishDate = rs.getString("publishDate");
                Double price = rs.getDouble("price");
                
                bookList.add(new BookModel(id, bookTitle, bookAuthor, category, isbn, publishDate, price, userId));
            }//end while
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return bookList;
	}

}
