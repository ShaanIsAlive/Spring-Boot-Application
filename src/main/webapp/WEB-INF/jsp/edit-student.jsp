<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
</head>
<body>
    <h1>Edit Student</h1>
    <form action="/students/update" method="post">
        <input type="hidden" name="id" value="${student.id}">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${student.name}" required>
        <button type="submit">Update</button>
    </form>
    <br>
    <a href="/students">Back to List</a>
</body>
</html>
