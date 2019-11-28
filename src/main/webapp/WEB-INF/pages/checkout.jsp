<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.3/gh-fork-ribbon.min.css" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/main.css" rel="stylesheet" />
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/checkout.js"></script>

<title>ene book store</title>
</head>

<body>
	<jsp:include page="../pages/header.jsp" />
	<c:set var="sum" value="0"/>
	<c:if test="${cart == null and recommendedBooks == null}"><h1 class="buyBooks">Your Cart is Empty</h1></c:if>
	<c:if test="${cart != null and recommendedBooks != null}">
	
	<h1 class="buyBooks">Your Cart</h1>
	<br></br>
	<br></br>

	<div class="cart">
		<div class="table-responsive">
			<table class="table table-hover" id="availableBooksTable">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Book Name</th>
						<th scope="col">Author Name</th>
						<th scope="col">Book Category</th>
						<th scope="col">ISBN #</th>
						<th scope="col">Price</th>
						<th scope="col">Remove</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cart}" var="book">
					<tr>
						<td>${book.id}</td>
						<td>${book.bookTitle}</td>
						<td>${book.author}</td>
						<td>${book.bookCategory}</td>
						<td>${book.isbn}</td>
						<td>$${book.price}</td>
						<c:set var="sum" value="${sum + book.price}"/>
						<td><button id="removeCurrentRow" class="btn btn-danger btn-sm" onclick="removeFromCart('${book.id}')">Remove from Cart</button></td></tr>
					</c:forEach>
				</tbody>
			</table>
			<span><h3>Total: $${sum}</h3></span>
		</div>
	</div>
	<div>
		<br><br>
		<h3>Suggested Books</h3>
		<div class="table-responsive">
			<table class="table table-hover" id="recommendedBooksTable">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Book Name</th>
						<th scope="col">Author Name</th>
						<th scope="col">Book Category</th>
						<th scope="col">ISBN #</th>
						<th scope="col">Price</th>
						<th scope="col">Add</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${recommendedBooks}" var="recommendedBook">
						<tr>
							<td>${recommendedBook.id}</td>
							<td>${recommendedBook.bookTitle}</td>
							<td>${recommendedBook.author}</td>
							<td>${recommendedBook.bookCategory}</td>
							<td>${recommendedBook.isbn}</td>
							<td>$${recommendedBook.price}</td>
							<td><button id="addToCartRecommended" onclick="addToCart($(this)); " class="btn btn-danger btn-sm" >Add to Cart</button></td>
						<tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
	</div>
	</c:if>
</body>
<jsp:include page="../pages/footer.jsp"/>

</html>
