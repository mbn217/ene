<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<c:set var="availableBooks" value='${requestScope["availableBooks"]}' />
<html>
	<head>
		<meta charset="ISO-8859-1">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.3/gh-fork-ribbon.min.css" />
			<link href="css/bootstrap.min.css" rel="stylesheet" />
			<link href="css/main.css" rel="stylesheet" />
			<link href="css/jquery-ui.css" rel="stylesheet" />
			<title>ene book store</title>
			<!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> -->
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
			<script src="js/jquery-3.4.1.min.js"></script>			
			<script src="js/jquery-ui.js"></script>
			<script src="js/home.js"></script>
	</head>
			
			<body>
				<div class="bgimg">
					<jsp:include page="../pages/header.jsp"/>
					<div class="middle">
						<h1 class="searchlabel">Rent, buy or sell books</h1>
						<div class="input-group mb-3">
							<input class="form-control" type="text" name="searchBook" id="searchBook" 
							style="width: 80%;" placeholder="Search by ISBN, title or author's name" />
							<input class="search_input" type="hidden" name="searchBookHidden" id="searchBookHidden" />
							<div class="input-group-append">
								<a href="" id="searchIcon" class="search_icon">
									<i class="fas fa-search"></i>
								</a>
							</div>
						</div>
						</div>
					</div>
				</body>
				

<jsp:include page="../pages/footer.jsp"/>

</html>
