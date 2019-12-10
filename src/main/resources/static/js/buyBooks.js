$(document).ready(function() {

	$('#checkoutBtn').css("display", "none");

	$("#searchBooksToBuy").submit(function(event) {
		event.preventDefault();

		var formData = {};

		formData["bookTitle"] = $("#bookTitle").val();
		formData["author"] = $("#author").val();
		formData["isbn"] = $("#isbn").val();
		formData["bookCategory"] = $("#bookCategory").val();

		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "/searchBooks",
			data : JSON.stringify(formData),
			cache : false,
			success : function(data) {
				populateSearchResults(data);
			},
			error : function(e) {
				console.log("ERROR : ", e);
			}
		});
	});
});

function populateSearchResults(bookList) {
	if (bookList != undefined) {
		$('#availableBooksTable tbody').empty();
		$
				.each(
						bookList,
						function() {
							var html = "<tr><td>"
									+ this.id
									+ "</td><td>"
									+ this.bookTitle
									+ "</td><td>"
									+ this.author
									+ "</td>"
									+ "<td>"
									+ this.bookCategory
									+ "</td><td>"
									+ this.isbn
									+ "</td>"
									+ "<td>"
									+ this.publishedDate
									+ "</td><td>$"
									+ this.price
									+ "</td>"
									+ "<td><button class='btn btn-primary' onclick='addToCart($(this));'>Add to Cart</button></td></tr>";
							$('#availableBooksTable tbody').append(html);
						});
	}
}

function addToCart(btn) {
	var bookId = btn.closest("tr").find('td:first').text();
	btn.prop("disabled", true);
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
			$('#checkoutBtn').css("display", "block");
		},
		error : function(e) {
			console.log("ERROR : ", e);
		}
	});
}
