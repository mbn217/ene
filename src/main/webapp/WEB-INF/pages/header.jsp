<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

					<nav class="navbar navbar-expand-sm bg-light justify-content-center">
						<div class="container d-flex flex-column flex-md-row justify-content-between">

	
	
	<header>
 <!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">

<a class="logo" href="/">
	<img class="navbar-brand" src="img/logo.png">
</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="howitworks">How It Works</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="sellBooks">Sell Books</a>
    </li>
        <li class="nav-item">
      <a class="nav-link" href="buyBooks">Buy Books</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="rentBooks">Rent Books</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="support">Support</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/checkout">Cart</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/checkoutRentBook">Rent Cart</a>
    </li>
    
   <c:if test="${booksSoldByUser != null and user != null}">
		<li class="nav-item">
      <a class="nav-link" href="myBucks">My Bucks</a>
    	</li>
	</c:if>
    <c:choose>
		<c:when test="${user != null}">
		<li class="nav-item">
			<a class="nav-link" href="logout">Logout</a>
			</li>
		</c:when>
		<c:otherwise>
		<li class="nav-item">
			<a class="nav-link" href="login">Sign In</a>
			</li>
		</c:otherwise>
	</c:choose>
    
    
    
  </ul>

</nav> 
</header>
	

>>>>>>> feature/hotfix
