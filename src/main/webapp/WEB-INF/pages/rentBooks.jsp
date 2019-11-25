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
		<script src="js/bootstrap.min.js"></script>
		
		<script src="js/rentBooks.js"></script>	
			<title>ene book store</title>
	</head>

	<body>
	<jsp:include page="../pages/header.jsp"/>
	
			<h1  class="buyBooks">Rent Books</h1>
			<br></br><br></br>
			<form id="searchBooksToRent">
			
				<!-- Book Name -->
			  <div class="form-group">
				<label for="bookName" class="col-sm-1 col-form-label">Book Name</label>
				<div class="col-sm-5">
				  <input type="text" class="form-control" id="bookTitle" placeholder="Enter Book Name">
				</div>
			  </div>
				<!-- Author Name -->
			  <div class="form-group">
				<label for="authorName" class="col-sm-1 col-form-label">Author Name</label>
				<div class="col-sm-5">
				  <input type="text" class="form-control" id="author" placeholder="Enter Author Name">
				</div>
			  </div>
				<!-- ISBN  -->
			  <div class="form-group">
				<label for="isbn" class="col-sm-1 col-form-label">ISBN #</label>
				<div class="col-sm-5">
				  <input type="text" class="form-control" id="isbn" placeholder="Enter ISBN #">
				</div>
			  </div>
				<!-- Author Name -->
			  <div class="form-group">
					<label for="bookCategory" class="col-sm-1 col-form-label">Category</label>
					<div class="col-sm-5">
					<select class="form-control" id="bookCategory">
					  <option value="">Select Category</option>
					  <option>Technical books</option>
					  <option>Novels</option>
					  <option>Religious</option>
					  <option>political</option>
					  <option>Comic</option>
					  <option>Health Care</option>
					</select>
					</div>
				  </div>
				  
				  <div class="form-group">
				  	<div class="col-sm-6">
						<button type="submit" id="searchBooksForBuying" class="btn btn-primary">
							Search
						</button>
					</div>	
				  </div>
				  
			</form>	  
				  <div class = "results">
				  <label class="searchToSell">Available Books:</label><a href="/checkoutRentBook" id="checkoutBtn" class="btn btn-primary">Checkout</a>
					<div class="table-responsive">
						<table class="table table-hover" id="availableBooksTable">
						  <thead>
							<tr>
							  <th scope="col">#</th>
							  <th scope="col">Book Name</th>
							  <th scope="col">Author Name</th>
							  <th scope="col">Book Category</th>
							  <th scope="col">ISBN #</th>
							  <th scope="col">Publish Date</th>
							  <th scope="col">Price</th>
							  <th scope="col">Rent</th>
							  <th scope="col">Rent Amount</th>
							</tr>
						  </thead>
						  <tbody>
						  </tbody>
						</table>
					</div>
					</div>
			
					<!-- Modal -->
					<div class="modal fade" id="dateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">Book Return Date</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					      	<div class="form-group">
								<label for="bookReturnDate" class="col-lg-2 col-form-label">Return Date</label>
								<div class="col-lg-10">
				  					<input type="date" class="form-control" name="bookReturnDate" id="bookReturnDate" >
								</div>
			  				</div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					        <button type="button" class="btn btn-primary" onclick="addToCartRentBook();">Confirm</button>
					      </div>
					    </div>
					  </div>
					</div>
	</body>
			
<%-- <jsp:include page="../pages/footer.jsp"/>
 --%>
</html>