<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Player</title>
    <style>
        body {
            background-image: url('images/register.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 40px 30px;
            width: 400px;
            border-radius: 15px;
            margin: 150px auto 0 auto;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
        }

        h1 {
            margin-bottom: 30px;
            font-size: 28px;
        }

        select, input[type="text"], input[type="submit"] {
            margin: 12px 0;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #1abc9c;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #16a085;
        }

        #dynamicForm {
            display: none;
        }
    </style>

    <script>
        function showForm() {
            const selection = document.getElementById("searchType").value;
            const formContainer = document.getElementById("dynamicForm");
            const input = document.getElementById("inputField");
            const form = document.getElementById("searchForm");
            const submitBtn = document.getElementById("submitBtn");
            const hiddenField = document.getElementById("hiddenSearchType");

            if (selection === "") {
                formContainer.style.display = "none";
                return;
            }

            hiddenField.value = selection;
            formContainer.style.display = "block";

            switch (selection) {
                case "byId":
                    input.placeholder = "Enter Player ID";
                    input.style.display = "block";
                    submitBtn.value = "Find by ID";
                    input.required = true;
                    break;
                case "byName":
                    input.placeholder = "Enter Player Name";
                    input.style.display = "block";
                    submitBtn.value = "Find by Name";
                    input.required = true;
                    break;
                case "byClub":
                    input.placeholder = "Enter Club Name";
                    input.style.display = "block";
                    submitBtn.value = "Find by Club";
                    input.required = true;
                    break;
                case "byCountry":
                    input.placeholder = "Enter Country";
                    input.style.display = "block";
                    submitBtn.value = "Find by Country";
                    input.required = true;
                    break;
                case "topScorer":
                    input.style.display = "none";
                    input.required = false;
                    submitBtn.value = "See Top Goalscorer";
                    break;
                case "topAssister":
                    input.style.display = "none";
                    input.required = false;
                    submitBtn.value = "See Top Assist Provider";
                    break;
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Search Player</h1>

        <select id="searchType" onchange="showForm()">
            <option value="">-- Select Search Type --</option>
            <option value="byId">Find by ID</option>
            <option value="byName">Find by Name</option>
            <option value="byClub">Find by Club</option>
            <option value="byCountry">Find by Country</option>
            <option value="topScorer">See Top Goalscorer</option>
            <option value="topAssister">See Top Assist Provider</option>
        </select>

        <div id="dynamicForm">
            <form id="searchForm" action="searchByUserChoice" method="get">
                <input type="hidden" id="hiddenSearchType" name="searchType">
                <input type="text" id="inputField" name="query" required>
                <input type="submit" id="submitBtn" value="Submit">
            </form>
        </div>
    </div>
</body>
</html>
