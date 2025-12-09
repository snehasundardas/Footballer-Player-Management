<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="sp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Football Player</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: 'Segoe UI', sans-serif;
            background: url('images/register.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background: rgba(0, 0, 0, 0.75);
            padding: 40px;
            border-radius: 12px;
            color: #fff;
            width: 750px;
            max-height: 90vh;
            overflow-y: auto;
            box-shadow: 0 0 15px rgba(0,0,0,0.8);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 6px;
            border: none;
        }

        .clubs-list {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px 30px;
            margin-top: 10px;
        }

        .clubs-list label {
            font-weight: normal;
        }

        .submit-btn {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            background-color: #00b894;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 1rem;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #019875;
        }
    </style>
</head>
<body>
    <form class="form-container" action="register" method="post">
        <h2><sp:message code="register.heading" /></h2>

        <label for="jersey"><sp:message code="register.input.jersey" /></label>
        <input type="number" id="jersey" name="jerseyNumber" required>

        <label for="name"><sp:message code ="register.input.name" /></label>
        <input type="text" id="name" name="playerName" required>

        <label for="goals"><sp:message code="register.input.goals" /></label>
        <input type="number" id="goals" name="goals" required>

        <label for="assists"><sp:message code="register.input.assists" /></label>
        <input type="number" id="assists" name="assists" required>

        <label>Clubs</label>
        <div class="clubs-list">
            <label><input type="checkbox" name="clubs" value="Real Madrid"><sp:message code="register.input.real.madrid" /></label>
            <label><input type="checkbox" name="clubs" value="Manchester City"><sp:message code="register.input.manchester.city" /></label>
            <label><input type="checkbox" name="clubs" value="Bayern Munich"> <sp:message code="register.input.club.bayern.munich" /></label>
            <label><input type="checkbox" name="clubs" value="Barcelona"> <sp:message code="register.input.club.barcelona" /></label>
            <label><input type="checkbox" name="clubs" value="Liverpool"> <sp:message code="register.input.club.liverpool" /></label>
            <label><input type="checkbox" name="clubs" value="Chelsea"> <sp:message code="register.input.club.chelsea" /></label>
            <label><input type="checkbox" name="clubs" value="Arsenal"> <sp:message code="register.input.club.arsenal" /></label>
            <label><input type="checkbox" name="clubs" value="Manchester United"> <sp:message code="register.input.club.manchester.united" /></label>
            <label><input type="checkbox" name="clubs" value="Juventus"> <sp:message code="register.input.club.juventus" /></label>
            <label><input type="checkbox" name="clubs" value="Paris Saint-Germain"> <sp:message code="register.input.club.psg" /></label>
            <label><input type="checkbox" name="clubs" value="Inter Milan"><sp:message code="register.input.club.inter.milan" /></label>
            <label><input type="checkbox" name="clubs" value="AC Milan"><sp:message code="register.input.club.ac.milan" /></label>
            <label><input type="checkbox" name="clubs" value="Atlético Madrid"><sp:message code="register.input.club.atletico.madrid" /></label>
            <label><input type="checkbox" name="clubs" value="Borussia Dortmund"><sp:message code = "register.input.club.dortmund" /></label>
            <label><input type="checkbox" name="clubs" value="Napoli"><sp:message code="register.input.club.napoli"/> </label>
            <label><input type="checkbox" name="clubs" value="Roma"> <sp:message code="register.input.club.roma" /></label> 
            <label><input type="checkbox" name="clubs" value="Sevilla"><sp:message code="register.input.club.sevilla" /> </label>
            <label><input type="checkbox" name="clubs" value="RB Leipzig"> <sp:message code="register.input.club.leipzig" /></label>
            <label><input type="checkbox" name="clubs" value="Ajax"> <sp:message code="register.input.club.ajax" /></label>
            <label><input type="checkbox" name="clubs" value="Benfica"><sp:message code="register.input.club.benfica" /></label>
            <label><input type="checkbox" name="clubs" value="Sporting CP"> <sp:message code="register.input.club.sporting" /></label>
            <label><input type="checkbox" name="clubs" value="Marseille"> <sp:message code="register.input.club.marseille" /></label>
            <label><input type="checkbox" name="clubs" value="Villarreal"><sp:message code="register.input.club.villarreal" /></label>
            <label><input type="checkbox" name="clubs" value="Bayer Leverkusen"><sp:message code="register.input.club.leverkusen" /></label>
            <label><input type="checkbox" name="clubs" value="Lyon"> <sp:message code="register.input.club.lyon" /></label>
            <label><input type="checkbox" name="clubs" value="Lazio"><sp:message code="register.input.club.lazio" /></label>
            <label><input type="checkbox" name="clubs" value="PSV Eindhoven"> <sp:message code="register.input.club.psv" /></label>
            <label><input type="checkbox" name="clubs" value="Feyenoord"> <sp:message code="register.input.club.feyenoord" /></label>
            <label><input type="checkbox" name="clubs" value="Galatasaray"> <sp:message code="register.input.club.galatasaray" /></label>
            <label><input type="checkbox" name="clubs" value="Fenerbahçe"> <sp:message code="register.input.club.fenerbahce" /></label>
        </div>

        <label for="country"><sp:message code="register.country" /></label>
        <input type="text" id="country" name="country" required>

        <button class="submit-btn" type="submit"><sp:message code="register.submit" /></button>
    </form>
</body>
</html>
