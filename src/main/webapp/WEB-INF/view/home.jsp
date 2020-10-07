<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Company Home Page</title>
</head>
<body>
    <h2>Company Home Page</h2>

    <hr>
    <p>
        Welcome to the company home page!
    </p>
    <security:authorize access="hasRole('MANAGER')">
        <p>
            <a href="${pageContext.request.contextPath}/leaders/">Managers conference - details</a>
        </p>
    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
        <p>
            <a href="${pageContext.request.contextPath}/systems">Admin secret section</a>
        </p>
    </security:authorize>

    <hr>
    <p>
        User: <security:authentication property="principal.username" />
        <br><br>
        Role(s): <security:authentication property="principal.authorities" />
    </p>

    <hr>

    <form:form action="${pageContext.request.contextPath}/logout"
               method="post">
        <input type="submit" value="Logout" />

    </form:form>
</body>
</html>
