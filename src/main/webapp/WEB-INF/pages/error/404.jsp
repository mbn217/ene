<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>AutoconX.com Page Not Found</title>
<style>
html, body {
	padding: 0;
	margin: 0
}

img {
	border: 0
}

#a {
	background: #232f3e;
	padding: 11px 11px 11px 192px
}

#b {
	position: absolute;
	left: 22px;
	top: 12px
}

#c {
	position: relative;
	max-width: 800px;
	padding: 0 40px 0 0
}

#e, #f {
	height: 35px;
	border: 0;
	font-size: 1em
}

#e {
	width: 100%;
	margin: 0;
	padding: 0 10px;
	border-radius: 4px 0 0 4px
}

#f {
	cursor: pointer;
	background: #febd69;
	font-weight: bold;
	border-radius: 0 4px 4px 0;
	-webkit-appearance: none;
	position: absolute;
	top: 0;
	right: 0;
	padding: 0 12px
}

@media ( max-width : 500px) {
	#a {
		padding: 55px 10px 10px
	}
	#b {
		left: 6px
	}
}

#g {
	text-align: center;
	margin: 30px 0
}

#g img {
	max-width: 90%
}

#d {
	display: none
}

#d[src] {
	display: inline
}
</style>
</head>
<body>
	<div id="g">
		<h1>Sorry We Couldn't find that page.</h1>
		<a href="/home" title="Autoconx">Go back</a> <br /> <a
			href="https://www.amazon.com/dogsofamazon" target="_blank"><img
			id="d" alt="Dogs of Amazon"></a>
		<script>
			document.getElementById("d").src = "https://images-na.ssl-images-amazon.com/images/G/01/error/"
					+ (Math.floor(Math.random() * 43) + 1) + "._TTD_.jpg";
		</script>
	</div>
</body>
</html>