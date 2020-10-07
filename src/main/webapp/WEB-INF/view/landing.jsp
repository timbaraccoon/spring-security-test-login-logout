<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>So Landing Page</title>
</head>
<body>
    <h2>So Landing so Page</h2>

    <hr>
    <p>
        Welcome to the landing page!

        You can see it without authorization!
    </p>
    <hr>

    <p>
        <a href="${pageContext.request.contextPath}/employees">
            Internal secure stuff!!! You must login, to join it!
        </a>
    </p>

</body>
</html>
