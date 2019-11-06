<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.3/gh-fork-ribbon.min.css" />
			<link href="css/bootstrap.min.css" rel="stylesheet" />
			<link href="css/main.css" rel="stylesheet" />
			<title>ene book store</title>
	</head>

	<body>
	<jsp:include page="../pages/header.jsp"/>
	

			<h1  class="buyBooks">Buy</h1>
			<br></br><br></br>
			<form id="searchfunc">
				
				<!-- Book Name -->
			  <div class="form-group row">
				<label for="bookName" class="col-sm-1 col-form-label">Book Name</label>
				<div class="col-sm-10">
				  <input type="password" class="form-control" id="inputPassword" placeholder="Enter Book Name">
				</div>
			  </div>
				<!-- Author Name -->
			  <div class="form-group row">
				<label for="authorName" class="col-sm-1 col-form-label">Author Name</label>
				<div class="col-sm-10">
				  <input type="password" class="form-control" id="inputPassword" placeholder="Enter Author Name">
				</div>
			  </div>
				<!-- ISBN  -->
			  <div class="form-group row">
				<label for="isbn" class="col-sm-1 col-form-label">ISBN #</label>
				<div class="col-sm-10">
				  <input type="password" class="form-control" id="inputPassword" placeholder="Enter ISBN #">
				</div>
			  </div>
				<!-- Author Name -->
			  <div class="form-group row">
				<label for="publishDate" class="col-sm-1 col-form-label">Publish Date</label>
				<div class="col-sm-10">
				  <input type="password" class="form-control" id="inputPassword" placeholder="Enter Pulisg Date">
				</div>
			  </div>
				  <div class="form-group">
					<label for="exampleFormControlSelect1">Category</label>
					<select class="form-control" id="exampleFormControlSelect1">
					  <option>Technical books</option>
					  <option>Novels</option>
					  <option>Religious</option>
					  <option>political</option>
					  <option>Comic</option>
					  <option>Health Care</option>
					</select>
				  </div>
				  <div class = "results">
				  <label  class="searchToSell">Results:</label>
					<div class="table-responsive">
						<table class="table table-hover">
						  <thead>
							<tr>
							  <th scope="col">#</th>
							  <th scope="col">Book Name</th>
							  <th scope="col">Author Name</th>
							  <th scope="col">ISBN #</th>
							  <th scope="col">Publish Date</th>
							</tr>
						  </thead>
						  <tbody>
							<tr>
							  <th scope="row">1</th>
							  <td>Mark</td>
							  <td>Otto</td>
							  <td>@mdo</td>
							</tr>
							<tr>
							  <th scope="row">2</th>
							  <td>Jacob</td>
							  <td>Thornton</td>
							  <td>@fat</td>
							</tr>
							<tr>
							  <th scope="row">3</th>
							  <td colspan="2">Larry the Bird</td>
							  <td>@twitter</td>
							</tr>
						  </tbody>
						</table>
					</div>
					</div>
			</form>
			
			
	</body>
				



 
 
 
 
 
 

<jsp:include page="../pages/footer.jsp"/>

</html>