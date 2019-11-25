$(document).ready(function(){
	
	$("#sellBookForm").submit(function(event) {
		event.preventDefault();
		
		var formData = {};
		
		formData["bookTitle"] = $("#bookTitle").val();
		formData["author"] = $("#author").val();
		formData["isbn"] = $("#isbn").val();
		formData["publishedDate"] = $("#publishedDate").val();
		formData["price"] = $("#price").val();
		formData["bookCategory"] = $("#bookCategory").val();
		var price = $("#price").val();
		var sell = confirmSell(price);
		
		if (sell == true) {
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "/sellBook",
				data : JSON.stringify(formData),
				cache : false,
				success : function(data) {
					clearForm();
					window.location.reload();
				},
				error : function(e) {
					console.log("ERROR : ", e);
				}
			});
		}
	});
});

function confirmSell(price) {
	var r = confirm("You are about to earn: $"+price);
	if (r == true) {
		return true;
	} else {
		return false;
	}
}

function clearForm(){
	$("#sellBookForm")[0].reset();
}