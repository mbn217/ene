package edu.umgc.cmsc495.ene.model;

public class BookModel {

	private int id;
	private String bookTitle;
	private String bookCategory;
	private String author;
	private String isbn;
	private String publishedDate;
	private Double price;
	private int userId;
	
	public BookModel(int id, String bookTitle, String author, String bookCategory, String isbn, String publishedDate,
			Double price, int userId) {
		super();
		this.id = id;
		this.bookTitle = bookTitle;
		this.bookCategory = bookCategory;
		this.author = author;
		this.isbn = isbn;
		this.publishedDate = publishedDate;
		this.price = price;
		this.userId = userId;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public String getBookCategory() {
		return bookCategory;
	}
	public void setBookCategory(String bookCategory) {
		this.bookCategory = bookCategory;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getPublishedDate() {
		return publishedDate;
	}
	public void setPublishedDate(String publishedDate) {
		this.publishedDate = publishedDate;
	}
	
	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "BookModel [bookTitle=" + bookTitle + ", bookCategory=" + bookCategory + ", author=" + author + ", isbn="
				+ isbn + ", publishedDate=" + publishedDate + "]";
	}
	
	
}
