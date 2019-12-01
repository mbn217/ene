$(document).ready(function() {

	var bookList = null;
	var form = null;
	
	$("#searchBook").autocomplete({
	
		source : function(request, response) {
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "/getAllBooks",
				data : {
					"searchTerm" : $("#searchBook").val()
				},
				success : function(data) {
					response($.map(data, function(item) {
						return {
							label : item.bookTitle,
							value : item.id
						}
					}));
				}
			});
		},
		focus : function(event, ui) {
			event.preventDefault();
			$(this).val(ui.item.label);
		},
		select : function(event, ui) {
			event.preventDefault();
			$(this).val(ui.item.label);
			$('#searchBookHidden').val(ui.item.label);
			//$('#searchIcon').attr("href", "/getBook?bookId="+ui.item.value);
		}
	});
});

