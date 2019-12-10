package edu.umgc.cmsc495.ene.model;

public class RentBook extends BookModel {

	private int numberOfDays;

	public RentBook(int id, String bookTitle, String author, String bookCategory, String isbn, String publishedDate,
			Double price, int userId) {
		super(id, bookTitle, author, bookCategory, isbn, publishedDate, price, userId);
	}

	public int getNumberOfDays() {
		return numberOfDays;
	}

	public void setNumberOfDays(int numberOfDays) {
		this.numberOfDays = numberOfDays;
	}

}
