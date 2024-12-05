<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<jsp:useBean id="employee" scope="request" type="com.alinaonopina.spring.mvc.Employee"/>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, you are WELCOME!!!</h2>

<br>
<br>


Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Language(s):
<ul>
    <c:forEach var="language" items="${employee.languages}">
        <li> ${language} </li>
    </c:forEach>
</ul>
<br>
Phone number: ${employee.phoneNumber}
<br>
Email: ${employee.email}
<br>

</body>

</html>