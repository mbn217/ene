var bookId;
var returnDate;
var row;

$(document).ready(function(){
	
	$('#checkoutBtn').css("display", "none");
	
	$("#searchBooksToRent").submit(function(event) {
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

function populateSearchResults(bookList){
	if(bookList != undefined){
		$('#availableBooksTable tbody').empty();
		$.each(bookList, function(){
		    var html = "<tr><td>"+ this.id +"</td><td>" + this.bookTitle + "</td><td>" + this.author+ "</td>"
		    +"<td>" + this.bookCategory + "</td><td>" + this.isbn+ "</td>"
		    +"<td>" + this.publishedDate + "</td><td>$"+ this.price+ "</td>"
		    +"<td><button class='btn btn-primary' id='addToCartBtn' data-toggle='modal' data-target='#dateModal' onclick='popupForReturnDate($(this));'>Add to Cart</button></td></tr>";
		    $('#availableBooksTable tbody').append(html);
		});
	}
}

function popupForReturnDate(btn){
	
	var today = new Date().toISOString().split('T')[0];
	$("#bookReturnDate")[0].setAttribute('min', today);
	bookId = btn.closest("tr").find('td:first').text();
	row = btn.closest("tr");
}


function addToCartRentBook(){
    
	var rowIndex = (row.index()+1);
	returnDate = $("#bookReturnDate").val();
	var today = new Date().toISOString().split('T')[0];
	
	var d1 = new Date(returnDate);
	var d2 = new Date(today);
	
	var diffInTime = d1.getTime() - d2.getTime();
	var diffInDays = diffInTime / (1000 * 3600 * 24);
	
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "/addToCartRentBook",
		data : {
			"bookId" : bookId,
			"numberOfDays" : diffInDays
		},
		cache : false,
		success : function() {
			var th = "<th scope='col'>Rent Amount</th>";
			var td = "<td>$"+diffInDays+"</td>";
			$('#availableBooksTable tbody tr:nth-child('+rowIndex+')').append(td);
			alert("Added to Cart");
			$('#checkoutBtn').css("display", "block");
			row.find("#addToCartBtn").prop("disabled", true);
		},
		error : function(e) {
			console.log("ERROR : ", e);
		}
	});
}

