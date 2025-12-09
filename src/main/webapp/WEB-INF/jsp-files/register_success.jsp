<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: url('images/register.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background-color: rgba(0, 0, 0, 0.75);
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 0 20px #00ffcc;
            max-width: 500px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #00ffcc;
        }

        p {
            margin: 10px 0;
            font-size: 16px;
        }

        .highlight {
            color: #00ffaa;
            font-weight: bold;
        }

        .home-btn {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #00ffaa;
            color: black;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .home-btn:hover {
            background-color: #00ddaa;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>${msg}</h2>
        <p> Jersey Number: <span class="highlight">${ftbl.jerseyNumber}</span></p>
        <p> Name: <span class="highlight">${ftbl.playerName}</span></p>
        <p>Goals: <span class="highlight">${ftbl.goals}</span></p>
        <p> Assists: <span class="highlight">${ftbl.assists}</span></p>
        <p> Clubs: 
            <span class="highlight">
                <c:forEach var="club" items="${ftbl.clubs}" varStatus="loop">
                    ${club}
                    <c:if test="${!loop.last}">, </c:if>
                </c:forEach>
            </span>
        </p>
        <p>Country: <span class="highlight">${ftbl.country}</span></p>

        <!-- ✅ Go to Home Page Button -->
        <a href="./" class="home-btn">Go to Home Page</a>
    </div>
</body>
</html>
