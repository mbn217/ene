<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.3/gh-fork-ribbon.min.css" />
			<link href="css/bootstrap.min.css" rel="stylesheet" />
			<link href="css/main.css" rel="stylesheet" />
			<link href="css/registerPage.css" rel="stylesheet" />
			<title>ene book store</title>
	</head>

	<body>
	<jsp:include page="../pages/header.jsp"/>
	<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<form action="signIn" method="POST">
					<div class="group">
						<label for="userName" class="label">Username</label>
						<input id="userName" name="userName" type="text" class="input">
					</div>
					<div class="group">
						<label for="password" class="label">Password</label>
						<input id="password" name="password" type="password" class="input" data-type="password">
					</div>
					<div class="group">
						<input id="check" type="checkbox" class="check" checked>
						<label for="check"><span class="icon"></span> Keep me Signed in</label>
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign In">
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
						<a href="#forgot">Forgot Password?</a>
					</div>
				</form>
			</div>
			<div class="sign-up-htm">
				<form action="registerUser" method="POST" >
					<div class="group">
						<label for="userName" class="label">Username</label>
						<input id="userName" name="userName" type="text" class="input" pattern=".{6,}" title="Minimum 6 characters" required>
					</div>
					<div class="group">
						<label for="password" class="label">Password</label>
						<input id="password" name="password" type="password" class="input" pattern=".{6,}" title="Minimum 6 characters" data-type="password" required>
					</div>
					<div class="group">
						<label for="repeatPassword" class="label">Repeat Password</label>
						<input id="repeatPassword" name="repeatPassword" type="password" class="input" data-type="password" required>
					</div>
					<div class="group">
						<label for="email" class="label">Email Address</label>
						<input id="email" name="email" type="email" class="input" required>
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign Up">
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
						<a><label for="tab-1">Already Member?</label></a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>	
	</body>
 
 

<jsp:include page="../pages/footer.jsp"/>

</html>