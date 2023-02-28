<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>
    Імя: ${employee.name}<br>
    Прозвішча: ${employee.surname}<br>
    Заробак: ${employee.salary}<br>
    Дэпартамент: ${employee.department}<br>
    Your car: ${employee.carBrand}
    <br>
    Language(s):
    <ul>
        <c:forEach var="lang" items="${employee.languageS}">
        <li>${lang}</li>
        </c:forEach>
    </ul>


</h1>
<br>
<br>

</body>
</html>
