<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Automation Testing Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
        }

        div {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input, textarea, select, button {
            margin-bottom: 10px;
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
        }

        /* Additional Styles for Drag and Drop */
        .drop-container {
            border: 2px dashed #ccc;
            padding: 20px;
            text-align: center;
            cursor: pointer;
        }

        .dropped-files {
            margin-top: 10px;
            list-style: none;
        }
    </style>
</head>
<body>

<form id="automationForm" name="automationForm" action="/submit" method="post">

    <div>
        <label for="text_input">Text Input:</label>
        <input type="text" id="text_input" name="text_input" value="Automation Text" placeholder="Enter text">
    </div>

    <div>
        <label for="password_input">Password Input:</label>
        <input type="password" id="password_input" name="password_input" value="AutomationPass123" placeholder="Enter password">
    </div>

    <div>
        <label for="textarea">Textarea:</label>
        <textarea id="textarea" name="textarea" rows="4" cols="50" placeholder="Enter text"></textarea>
    </div>

    <div>
        <label>Radio Buttons:</label><br>
        <input type="radio" id="radio_option1" name="radio_group" value="option1" checked>
        <label for="radio_option1">Option 1</label>

        <input type="radio" id="radio_option2" name="radio_group" value="option2">
        <label for="radio_option2">Option 2</label>
    </div>

    <div>
        <label for="checkbox">Checkbox:</label>
        <input type="checkbox" id="checkbox" name="checkbox" checked>
    </div>

    <div>
        <label for="select">Single Select:</label>
        <select id="select" name="select">
            <option value="option1">Option 1</option>
            <option value="option2">Option 2</option>
            <option value="option3">Option 3</option>
        </select>
    </div>

    <div>
        <label for="multi_select">Multiple Select:</label>
        <select id="multi_select" name="multi_select" multiple>
            <option value="option1">Option 1</option>
            <option value="option2">Option 2</option>
            <option value="option3">Option 3</option>
        </select>
    </div>

    <div>
        <label for="file_input">File Input:</label>
        <input type="file" id="file_input" name="file_input">
    </div>

    <div>
        <div class="drop-container" ondrop="dropHandler(event)" ondragover="dragOverHandler(event)">
            <p>Drag and drop files here</p>
        </div>
        <ul id="droppedFiles" class="dropped-files"></ul>
    </div>

    <div>
        <button type="button" id="submit_button" name="submit_button" onclick="submitForm()">Submit</button>
    </div>

</form>

<script>
    // Example JavaScript function for form submission
    function submitForm() {
        document.getElementById("automationForm").submit();
    }

    // Example JavaScript functions for drag and drop
    function dragOverHandler(event) {
        event.preventDefault();
        event.dataTransfer.dropEffect = 'copy';
    }

    function dropHandler(event) {
        event.preventDefault();

        const fileList = event.dataTransfer.files;
        const droppedFilesContainer = document.getElementById('droppedFiles');

        droppedFilesContainer.innerHTML = ''; // Clear previous files

        for (const file of fileList) {
            const listItem = document.createElement('li');
            listItem.textContent = file.name;
            droppedFilesContainer.appendChild(listItem);
        }
    }
</script>

</body>
</html>
