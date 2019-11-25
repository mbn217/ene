
function removeFromCart(id){
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "/removeFromCart",
		data : {
			"bookId" : id
		},
		cache : false,
		success : function() {
			alert("Removed from Cart");
			location.reload();
		},
		error : function(e) {
			console.log("ERROR : ", e);
		}
	});
}


function addToCart(btn){
	var bookId = btn.closest("tr").find('td:first').text();
    btn.prop("disabled",true);
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "/addToCart",
		data : {
			"bookId" : bookId
		},
		cache : false,
		success : function() {
			alert("Added to Cart");
			btn.closest("tr").remove();
			location.reload();
		},
		error : function(e) {
			console.log("ERROR : ", e);
		}
	});
}

function removeFromCartRentBook(id){
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "/removeFromCartRentBook",
		data : {
			"bookId" : id
		},
		cache : false,
		success : function() {
			alert("Removed from Cart");
			location.reload();
		},
		error : function(e) {
			console.log("ERROR : ", e);
		}
	});
}

