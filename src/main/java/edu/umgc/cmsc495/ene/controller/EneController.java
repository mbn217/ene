package edu.umgc.cmsc495.ene.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.umgc.cmsc495.ene.model.BookModel;
import edu.umgc.cmsc495.ene.model.RentBook;
import edu.umgc.cmsc495.ene.model.UserModel;
import edu.umgc.cmsc495.ene.service.BookService;
import edu.umgc.cmsc495.ene.service.UserService;

@Controller
public class EneController {
	Logger logger = LoggerFactory.getLogger(EneController.class);

	@Autowired
	private BookService bookService;

	@Autowired
	private UserService userService;

	/*
	 * Home page when the application is loaded
	 */
	@GetMapping("/")
	public String home(HttpServletRequest request) {
		List<BookModel> bookList = bookService.searchBook(null);
		request.setAttribute("availableBooks", bookList);
		return "eneHome";
	}

	/*
	 * Returns Login page when the Login is clicked
	 */
	@GetMapping("/login")
	public String loginPage() {
		return "login_register";
	}

	@GetMapping("/rappidtech-form")
	public String rappidtechForm(){return "rappidtechform";}

	@GetMapping("/doubleclick")
	public String doubleClick(){return "doubleclick";}

	/*
	 * Returns Home page when the Logout is clicked also, removes everything from
	 * current session
	 */
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().setAttribute("user", null);
		request.getSession().setAttribute("cart", null);
		return "login_register";
	}

	/*
	 * Register new user and return to login page
	 *
	 */
	@PostMapping("/registerUser")
	public String registerUser(@ModelAttribute UserModel user, HttpSession session) {
		userService.registerUser(user);
		return "login_register";
	}

	/*
	 * sign in to a valid user account to use the website
	 *
	 */
	@PostMapping("/signIn")
	public String login(@ModelAttribute UserModel u, HttpServletRequest request) {
		UserModel user = userService.login(u.getUserName(), u.getPassword());
		if (user != null) {
			request.getSession().setAttribute("user", user);
			List<BookModel> bookList = bookService.getBooksByUserId(user.getId());
			if (bookList.size() > 0) {
				request.getSession().setAttribute("booksSoldByUser", bookList);
			}
			return "eneHome";
		} else {
			return "login_register";
		}
	}

	/*
	 * return sellBooks page if user is logged in otherwise, redirect to login page
	 *
	 */
	@GetMapping("/sellBooks")
	public String sellBooks(HttpServletRequest request) {
		UserModel user = (UserModel) request.getSession().getAttribute("user");
		if (user != null) {
			return "sellBooks";
		} else {
			return "login_register";
		}
	}

	/*
	 * return howitworks page
	 *
	 */
	@GetMapping("/bookDetail")
	public String bookDetail() {
		return "bookDetail";
	}

	/*
	 * return howitworks page
	 *
	 */
	@GetMapping("/howitworks")
	public String howItWorks() {
		return "howItWorks";
	}

	/*
	 * return support page
	 *
	 */
	@GetMapping("/support")
	public String support() {
		return "support";
	}

	/*
	 * return my bucks page
	 *
	 */
	@GetMapping("/myBucks")
	public String myBucks() {
		return "myBucks";
	}

	/*
	 * return buyBooks page if user is logged in otherwise, redirect to login page
	 *
	 */
	@GetMapping("/buyBooks")
	public String buyBooks(HttpServletRequest request) {
		UserModel user = (UserModel) request.getSession().getAttribute("user");
		if (user != null) {
			return "buyBooks";
		} else {
			return "login_register";
		}
	}

	/*
	 * return rentBooks page if user is logged in otherwise, redirect to login page
	 *
	 */
	@GetMapping("/rentBooks")
	public String rentBooks(HttpServletRequest request) {
		UserModel user = (UserModel) request.getSession().getAttribute("user");
		if (user != null) {
			return "rentBooks";
		} else {
			return "login_register";
		}
	}

	/*
	 * sell book by providing book details and return to same page
	 *
	 */
	@PostMapping("/sellBook")
	public String sellBook(@RequestBody BookModel book, HttpServletRequest request) {
		UserModel user = (UserModel) request.getSession().getAttribute("user");
		if (user != null) {
			book.setUserId(user.getId());
			int row = bookService.sellBook(book);
			if (row > 0) {
				List<BookModel> bookList = bookService.getBooksByUserId(user.getId());
				request.getSession().setAttribute("booksSoldByUser", bookList);
			}
		}
		return "sellBooks";
	}

	/*
	 * search book by search criteria and return list of books
	 */
	@PostMapping("/searchBooks")
	@ResponseBody
	public List<BookModel> searchBooks(@RequestBody BookModel book, HttpServletRequest request) {
		List<BookModel> bookList = bookService.searchBook(book);
		return bookList;
	}

	/*
	 * add to cart method for buying or renting a book
	 */
	@GetMapping("/addToCart")
	@ResponseBody
	public void addToCart(HttpServletRequest request, @RequestParam Integer bookId,
			@RequestParam(required = false) String returnDate) {

		List<BookModel> booksInCart = (List<BookModel>) request.getSession().getAttribute("cart");

		BookModel book = null;
		if (bookId != null) {
			book = bookService.getBook(bookId);
		}

		if (booksInCart == null) {
			booksInCart = new ArrayList<>();
			request.getSession().setAttribute("cart", booksInCart);
		}
		booksInCart.add(book);
		request.getSession().setAttribute("cart", booksInCart);
	}

	/*
	 * show checkout page and show recommended books along with books in cart
	 */
	@GetMapping("/checkout")
	public String checkout(HttpServletRequest request) {
		List<BookModel> booksInCart = (List<BookModel>) request.getSession().getAttribute("cart");

		List<BookModel> recommendedBooks = null;
		if (booksInCart != null) {
			recommendedBooks = bookService.getRecommendedBooks(booksInCart);
			request.getSession().setAttribute("recommendedBooks", recommendedBooks);
		}
		return "checkout";
	}

	/*
	 * remove a book from cart and update the cart in session
	 */
	@GetMapping("/removeFromCart")
	public String removeFromCart(HttpServletRequest request, @RequestParam Integer bookId) {
		List<BookModel> booksInCart = (List<BookModel>) request.getSession().getAttribute("cart");
		booksInCart.removeIf((BookModel b) -> b.getId() == bookId);
		request.getSession().setAttribute("cart", booksInCart);
		return "/checkout";
	}

	/*
	 * search book by search criteria and return list of books
	 */
	@PostMapping("/getAllBooks")
	@ResponseBody
	public List<BookModel> getAllBooks(@RequestBody String searchTerm, HttpServletRequest request) {
		List<BookModel> bookList = bookService.searchBookByCriteria(searchTerm);
		return bookList;
	}

	/*
	 * search book by search criteria and return list of books
	 */
	@GetMapping("/getBook")
	public String getBook(@RequestParam(required = false) String bookId, HttpServletRequest request) {
		BookModel book = bookService.getBook(Integer.parseInt(bookId));
		request.getSession().setAttribute("book", book);
		return "bookDetail";
	}

	/*
	 * show checkout page and show recommended books along with books in cart
	 */
	@GetMapping("/checkoutRentBook")
	public String checkoutRentBook(HttpServletRequest request) {
		return "checkoutRentBook";
	}

	/*
	 * add to cart method for buying or renting a book
	 */
	@GetMapping("/addToCartRentBook")
	@ResponseBody
	public void addToCartRentBook(HttpServletRequest request, @RequestParam Integer bookId,
			@RequestParam Integer numberOfDays) {

		List<RentBook> booksInCart = (List<RentBook>) request.getSession().getAttribute("rentcart");

		RentBook book = null;
		if (bookId != null) {
			book = bookService.getRentBook(bookId);
			book.setNumberOfDays(numberOfDays);
		}

		if (booksInCart == null) {
			booksInCart = new ArrayList<>();
			request.getSession().setAttribute("rentcart", booksInCart);
		}
		booksInCart.add(book);
		request.getSession().setAttribute("rentcart", booksInCart);
	}

	/*
	 * add to cart method for buying or renting a book
	 */
	@GetMapping("/removeFromCartRentBook")
	public String removeFromCartRentBook(HttpServletRequest request, @RequestParam Integer bookId) {
		List<RentBook> booksInCart = (List<RentBook>) request.getSession().getAttribute("rentcart");
		booksInCart.removeIf((RentBook b) -> b.getId() == bookId);
		request.getSession().setAttribute("rentcart", booksInCart);
		return "/checkout";
	}

	/*
	 * search book by search criteria and return list of books
	 */
	@GetMapping("/submitSearchQuery")
	public String getAllBooksAndRedirect(@RequestParam String searchBook, HttpServletRequest request) {
		List<BookModel> bookList = bookService.searchBookByCriteria(searchBook);
		request.getSession().setAttribute("booksFound", bookList);
		return "searchResults";
	}

}
