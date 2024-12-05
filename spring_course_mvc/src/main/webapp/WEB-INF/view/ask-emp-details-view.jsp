<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, please enter your Details</h2>

<br>
<br>



<%--@elvariable id="employee" type="com.alinaonopina.spring.mvc"--%>
<form:form action="showDetails" modelAttribute="employee" method="post">

        Name <form:input path="name"/>
        <form:errors path="name"/>
        <br><br>

        Surname <form:input path="surname"/>
        <form:errors path="surname"/>
        <br><br>

        Salary <form:input path="salary"/>
        <form:errors path="salary"/>
        <br><br>

        Department <form:select path="department">
        <form:options items="${employee.departments}"/>

<%--        <form:option value="Information Technology" label="IT"/>--%>
<%--        <form:option value="Human Resources" label="HR"/>--%>
<%--        <form:option value="Sales"/>--%>
        </form:select>
        <br><br>

        Which car do you want?
        <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
<%--        <form:radiobutton path="carBrand" value="BMW"/> BMW--%>
<%--        <form:radiobutton path="carBrand" value="Toyota"/> Toyota--%>
<%--        <form:radiobutton path="carBrand" value="UAZ"/> UAZ--%>
        <br><br>

        Foreign language(s)
        <form:checkboxes path="languages" items="${employee.languageList}"/>
<%--        <form:checkbox path="languages" value="English"/> EN--%>
<%--        <form:checkbox path="languages" value="Deutch"/> DE--%>
<%--        <form:checkbox path="languages" value="French"/> FR--%>
        <br><br>

        Phone number <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
        <br><br>

        Email <form:input path="email"/>
        <form:errors path="email"/>
        <br><br>

        <input type="submit" value="OK">

</form:form>



<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--    placeholder="Write your name"/>--%>

<%--    <input type="submit"/>--%>

<%--</form>--%>

</body>

</html>