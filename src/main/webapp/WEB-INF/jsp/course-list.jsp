<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Courses List</title>
    <style>
        table { width: 80%; border-collapse: collapse; margin: 20px 0; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: left; }
        a.button { padding: 5px 10px; background-color: #4CAF50; color: white; text-decoration: none; }
    </style>
</head>
<body>
    <h2>All Courses</h2>
    <a class="button" href="${pageContext.request.contextPath}/courses/new">Add Course</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="course" items="${courses}">
            <tr>
                <td>${course.id}</td>
                <td>${course.name}</td>
                <td>${course.description}</td>
                <td>
                    <a class="button" href="${pageContext.request.contextPath}/courses/edit/${course.id}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
