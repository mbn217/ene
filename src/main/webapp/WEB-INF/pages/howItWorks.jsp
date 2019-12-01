<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>

    <html>

    <head>
        <meta charset="ISO-8859-1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.3/gh-fork-ribbon.min.css" />
        <jsp:include page="../pages/header.jsp" />
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/main.css" rel="stylesheet" />
        <link href="css/howItWorks.css" rel="stylesheet" />
        <title>ene book store</title>
    </head>

    <body>


        <br>
        <br>
        <br>

        <div class="text-element content-element circles-list">
            <ol>
                <li>Search for a Books using one Book Name, Author Name or ISBN#.</li>
                <li><span style="font-weight: 400">If the book is available go to Buy Books
                and search for the same book.  </span></li>
                <li><span style="font-weight: 400">From the results table add the book to cart. </span></li>
                <li>That's it, you can verify that your book has been added to the cart by Clicking on "Cart" from the header.</li>
                <li>Enjoy reading!</li>
            </ol>
        </div>

    </body>

    <jsp:include page="../pages/footer.jsp" />

    </html>