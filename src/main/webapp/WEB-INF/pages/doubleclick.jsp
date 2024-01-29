<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Popup Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
        }

        #popupContainer {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        #closeButton {
            cursor: pointer;
            color: #007BFF;
            font-weight: bold;
        }
    </style>
</head>
<body>

<button onclick="openPopup()">Open Popup</button>

<div id="popupContainer">
    <p>This is a popup!</p>
    <p>Click <span id="closeButton" onclick="closePopup()">here</span> to close.</p>
</div>

<script>
    function openPopup() {
        document.getElementById('popupContainer').style.display = 'block';
    }

    function closePopup() {
        document.getElementById('popupContainer').style.display = 'none';
    }
</script>

</body>
</html>
