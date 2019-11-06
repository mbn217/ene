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
	
	<br><br><br>

		<div>
		<div id="content">
		      <div id="main">

		        <div id="page2" class="page">
		          <h2>Step 2</h2>
		          <p>Click on the Search magnifier icon</p>
		        </div>
		        <div id="page3" class="page">
		          <h2>Step 3</h2>
		          <p>If the Book is available, click on Add to cart button</p>
		        </div>
		        <div id="page4" class="page">
		          <h2>Step 4</h2>
		          <p>If you selected Rent, select the duration!</p>
		        </div>
		        <div id="page5" class="page">
		          <h2>Step 5</h2>
		          <p>That's it! you are set</p>
		        </div>
		      	<div id="page1" class="page default">
		          <h2>Step 1</h2>
		          <p>Enter the ISBN, Author Name or title in the Search box</p>
		        </div>
		      </div>
		    </div>
		<br><br><br>
		
		<div class="md-stepper-horizontal">
		    <div class="md-step">
		      <div class="md-step-circle"><a class="circle" href="#page1">1</a></div>
		      <div class="md-step-bar-right"></div>
		    </div>
		    <div class="md-step">
		     <div class="md-step-circle"><a class="circle" href="#page2">2</a></div>
		      <div class="md-step-bar-left"></div>
		      <div class="md-step-bar-right"></div>
		    </div>
		    <div class="md-step">
		  <div class="md-step-circle"><a class="circle" href="#page3">3</a></div>
		      <div class="md-step-bar-left"></div>
		      <div class="md-step-bar-right"></div>
		    </div>
		    <div class="md-step">
		  <div class="md-step-circle"><a class="circle" href="#page4">4</a></div>
		       <div class="md-step-bar-left"></div>
		 <div class="md-step-bar-right"></div>
		    </div>
		 <div class="md-step">
		  <div class="md-step-circle"><a class="circle" href="#page5">5</a></div>
		       <div class="md-step-bar-left"></div>
		 <div class="md-step-bar-left"></div>
		    </div>
		  </div>
		</div>


  


	
					
					
	</body>
				



 
 
 
 
 
 

<jsp:include page="../pages/footer.jsp"/>

</html>