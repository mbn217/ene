<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.3/gh-fork-ribbon.min.css" />
			<link href="css/bootstrap.min.css" rel="stylesheet" />
			<link href="css/main.css" rel="stylesheet" />
			
		<script src="js/jquery-3.4.1.min.js"></script>
		<script src="js/sellBook.js"></script>
			<title>ene book store</title>
	</head>
	<body>
	<jsp:include page="../pages/header.jsp"/>
	
			<h1 class="sellBooks">Sell Book</h1>
			<br></br><br></br>
			<form id="sellBookForm" style="padding-left: 15px;">
				
				<!-- Book Name -->
			  <div class="form-group row">
				<label for="bookTitle" class="col-sm-offset-2 col-sm-2 col-form-label">Book Title</label>
				<div class="col-sm-6">
				  <input type="text" class="form-control" name="bookTitle" id="bookTitle" placeholder="Enter Book Title">
				</div>
			  </div>
				<!-- Author Name -->
			  <div class="form-group row">
				<label for="author" class="col-sm-offset-2 col-sm-2 col-form-label">Author Name</label>
				<div class="col-sm-6">
				  <input type="text" class="form-control" name="author" id="author" placeholder="Enter Author Name">
				</div>
			  </div>
				<!-- ISBN  -->
			  <div class="form-group row">
				<label for="isbn" class="col-sm-offset-2 col-sm-2 col-form-label">ISBN #</label>
				<div class="col-sm-6">
				  <input type="text" class="form-control" name="isbn" id="isbn" placeholder="Enter ISBN #">
				</div>
			  </div>
				<!-- Publish Date -->
			  <div class="form-group row">
				<label for="publishedDate" class="col-sm-offset-2 col-sm-2 col-form-label">Publish Date</label>
				<div class="col-sm-6">
				  <input type="date" class="form-control" name="publishedDate" id="publishedDate" >
				</div>
			  </div>
			  	<!-- Price -->
			  <div class="form-group row">
				<label for="price" class="col-sm-offset-2 col-sm-2 col-form-label">Price</label>
				<div class="col-sm-6">
				  <input type="text" class="form-control" name="price" id="price" placeholder="Enter Price">
				</div>
			  </div>
				  <div class="form-group row">
					<label for="bookCategory" class="col-sm-offset-2 col-sm-2 col-form-label">Category</label>
					<div class="col-sm-6">
						<select class="form-control" name="bookCategory" id="bookCategory">
						  <option>Technical books</option>
						  <option>Novels</option>
						  <option>Religious</option>
						  <option>Political</option>
						  <option>Comic</option>
						  <option>Health Care</option>
						</select>
					</div>
				  </div>
				<div class="form-group row">
					<div class="col-sm-offset-6 col-sm-6">
						<button type="submit" id="submitSellFormBtn" class="btn btn-primary">
							Submit
						</button>
						<button id="clearSellFormBtn" class="btn btn-success" onclick="clearForm();">
							Clear
						</button>
					</div>
				</div>  
			</form>
	</body>

<%-- <jsp:include page="../pages/footer.jsp"/> --%>

</html>