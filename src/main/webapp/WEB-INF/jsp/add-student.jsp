<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
</head>
<body>
    <h1>Add Student</h1>
    <form action="/students/add" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <button type="submit">Add</button>
    </form>
    <br>
    <a href="/students">Back to List</a>
</body>
</html>
