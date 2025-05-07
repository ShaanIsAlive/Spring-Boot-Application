<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Course Form</title>
    <style>
        body { font-family: Arial; margin: 20px; }
        form { width: 300px; }
        label { display: block; margin-top: 10px; }
        input { width: 100%; padding: 5px; margin-top: 5px; }
        button { margin-top: 15px; padding: 5px 10px; }
    </style>
</head>
<body>
    <h2>${course.id == null ? "Add" : "Edit"} Course</h2>
    <form action="${pageContext.request.contextPath}/courses/${course.id == null ? 'save' : 'update'}" method="post">
        <input type="hidden" name="id" value="${course.id}" />
        <label>Name:</label>
        <input type="text" name="name" value="${course.name}" required />

        <label>Description:</label>
        <input type="text" name="description" value="${course.description}" required />

        <button type="submit">Submit</button>
    </form>
</body>
</html>
