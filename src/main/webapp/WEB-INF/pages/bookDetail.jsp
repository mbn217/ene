<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.3/gh-fork-ribbon.min.css" />
			<link href="css/bootstrap.min.css" rel="stylesheet" />
			<link href="css/main.css" rel="stylesheet" />
			<script src="js/home.js"></script>
			<title>ene book store</title>
	</head>

	<body>
	<jsp:include page="../pages/header.jsp"/>
	
	<br><br><br>

		<div>
		<div id="content">
		      <div id="main">
		      	<div id="page1" class="page default">
		      	   <div class="form-group row">
				    <label for="bookTitle" class="col-sm-4 col-form-label">Book Title</label>
				    <div class="col-sm-8">
				      <label for="bookTitle" class="col-sm-6 col-form-label">${book.bookTitle}</label>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="category" class="col-sm-4 col-form-label">Book Category</label>
				    <div class="col-sm-8">
				      <label for="category" class="col-sm-6 col-form-label">${book.bookCategory}</label>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="author" class="col-sm-4 col-form-label">Author</label>
				    <div class="col-sm-8">
				      <label for="author" class="col-sm-6 col-form-label">${book.author}</label>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="publishedDate" class="col-sm-4 col-form-label">Published Date</label>
				    <div class="col-sm-8">
				      <label for="publishedDate" class="col-sm-6 col-form-label">${book.publishedDate}</label>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="price" class="col-sm-4 col-form-label">Price</label>
				    <div class="col-sm-8">
				      <label for="price" class="col-sm-6 col-form-label">${book.price}</label>
				    </div>
				  </div>
		        </div>
		      </div>
		    </div>
		<br><br><br>
		</div>
	</body>
<jsp:include page="../pages/footer.jsp"/>

</html>