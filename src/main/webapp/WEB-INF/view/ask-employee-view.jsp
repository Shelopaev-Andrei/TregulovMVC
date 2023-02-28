<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>
    Прывітанне, калі ласка ўвядзіце свае дадзеныя.
</h1>
<br>
<br>
<form:form action="showDetails" modelAttribute="employee" method="post">
    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>
    Which car do you want?
    <br>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Foreing language(s):
    <br>
    <form:checkboxes path="languageS" items="${employee.languageList}"/>
    <br><br>
    <input type="submit" value="OK"/>
</form:form>
</body>
</html>
