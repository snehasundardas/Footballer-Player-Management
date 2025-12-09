<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Players</title>
    <style>
        body {
            background-image: url('images/ronaldo-2.jpg'); /* Replace with your actual image path */
            background-size: cover;
            background-position: center;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.75);
            margin: 50px auto;
            padding: 30px;
            width: 90%;
            max-width: 1000px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #00e6ac;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
            background-color: rgba(255, 255, 255, 0.1);
        }

        th, td {
            padding: 12px 16px;
            border-bottom: 1px solid #ddd;
            color: #fff;
        }

        th {
            background-color: #00b894;
            color: white;
        }

        tr:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        a.back-link {
            display: inline-block;
            margin-top: 20px;
            color: #00e6ac;
            text-decoration: none;
            font-weight: bold;
        }

        a.back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>All Registered Football Players</h1>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Country</th>
            <th>Goals</th>
            <th>Assists</th>
            <th>Clubs</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="player" items="${listOfPlayers.getContent()}">
            <tr>
                <td>${player.playerId}</td>
                <td>${player.playerName}</td>
                <td>${player.country}</td>
                <td>${player.goals}</td>
                <td>${player.assists}</td>
                <td>
                    <c:forEach var="club" items="${player.clubs}" varStatus="loop">
                        ${club}<c:if test="${!loop.last}">, </c:if>
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    
     <center><h3  style="color: #00b894;">Page ${listOfPlayers.getNumber()+1}/${listOfPlayers.getTotalPages()}</h3></center>
    <center>
     <c:forEach var="i" begin="1" end="${listOfPlayers.getTotalPages()}" step="1">
     [<a href="all?page=${i-1}" style="color: #00b894;">${i}</a>] &nbsp; &nbsp;
     </c:forEach>
	</center>

    <a href="search" class="back-link">← Back to Search</a>
</div>
</body>
</html>
