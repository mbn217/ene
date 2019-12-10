<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<c:set var="sum" value="0"/>
			<br>
				<br>
					<br>
						<div>
							<div id="content">
								<div id="main">
									<h2>Books Sold</h2>
									<div id="page1" class="page default">
										<div class="table-responsive">
											<table class="table table-hover" id="soldBooksTable">
												<thead>
													<tr>
														<th scope="col">#</th>
														<th scope="col">Book Name</th>
														<th scope="col">Author Name</th>
														<th scope="col">Book Category</th>
														<th scope="col">ISBN #</th>
														<th scope="col">Price</th>
														<th scope="col">Published Date</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${booksSoldByUser}" var="book">
														<tr>
															<td>${book.id}</td>
															<td>${book.bookTitle}</td>
															<td>${book.author}</td>
															<td>${book.bookCategory}</td>
															<td>${book.isbn}</td>
															<td>$${book.price}</td>
															<td>${book.publishedDate}</td>
															<c:set var="sum" value="${sum + book.price}"/>
														</c:forEach>
													</tbody>
												</table>
												<span>
													<h3>My Bucks: $${sum}</h3>
												</span>
											</div>
										</div>
									</div>
								</div>
								<br>
									<br>
										<br>
										</div>
									</body>
									<%-- <jsp:include page="../pages/footer.jsp"/> --%>
								</html>