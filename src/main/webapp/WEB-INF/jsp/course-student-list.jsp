<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Courses with Students</title>
    <style>
        table { width: 90%; border-collapse: collapse; margin: 20px auto; }
        th, td { padding: 10px; border: 1px solid #333; text-align: left; }
    </style>
</head>
<body>
    <h2>Courses and Enrolled Students</h2>
    <table>
        <tr>
            <th>Course Name</th>
            <th>Student Name</th>
            <th>Email</th>
        </tr>
        <c:forEach var="row" items="${courseStudentData}">
            <tr>
                <td>${row[0]}</td>
                <td>${row[1]}</td>
                <td>${row[2]}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
