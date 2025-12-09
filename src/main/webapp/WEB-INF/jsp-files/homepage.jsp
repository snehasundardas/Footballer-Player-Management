<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Footballer Home</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
        }
        .bg-image {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url("images/ronaldo-2.jpg") no-repeat center center;
            background-size: cover;
            opacity: 0.6;
            z-index: -1;
        }
        .content {
            position: relative;
            z-index: 1;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: flex-start; /* Align to top */
            align-items: center;
            color: white;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.7);
            padding-top: 120px; /* Adjust this value as needed to move text down/up */
        }
        h1 {
            font-size: 3rem;
            margin-bottom: 2rem;
        }
        .btn-container {
            display: flex;
            gap: 20px;
        }
        .action-btn {
            padding: 15px 30px;
            font-size: 1.2rem;
            border: none;
            border-radius: 10px;
            background: #00b894;
            color: white;
            cursor: pointer;
            transition: background 0.3s ease;
            text-decoration: none;
        }
        .action-btn:hover {
            background: #019875;
        }
    </style>
</head>
<body>
    <div class="bg-image"></div>
    <div class="content">
        <h1> <sp:message code="home.welcome.msg"/></h1>
        <div class="btn-container">
            <a href="register" class="action-btn"><sp:message code = "home.module.register" /></a>
            <a href="search" class="action-btn"><sp:message code="home.module.search" /></a>
            <a href="all" class="action-btn"><sp:message code="home.module.see.all" /></a>
        </div>
        <div style="margin-top: 40px; font-size: 1.2rem;">
        <a href="?lang=en_US" style="color: white;">English</a>&nbsp;&nbsp;
         <a href="?lang=tel_IN" style="color: white;">తెలుగు</a>&nbsp;&nbsp;
        <a href="?lang=hi_IN" style="color: white;">हिन्दी</a>&nbsp;&nbsp;
        <a href="?lang=od_IN" style="color: white;">ଓଡ଼ିଆ</a>&nbsp;&nbsp;
        <a href="?lang=de_DES" style="color: white;">Deutsch</a>&nbsp;&nbsp;
        <a href="?lang=es_ES" style="color: white;">Español</a>&nbsp;&nbsp;
        <a href="?lang=fr_FR" style="color: white;">Français</a>
    </div>
    </div>
   
    
</body>
</html>
