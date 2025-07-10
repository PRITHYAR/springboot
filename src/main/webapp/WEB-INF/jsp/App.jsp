<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Registration</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/App.css">
</head>
<body>
    <div class="form-container">
        <h2>Student Registration</h2>
        <form action="${pageContext.request.contextPath}/students/App" method="POST">
          

            
            <label>Full Name:</label>
            <input type="text" name="fullName" required />

            <label>Gender:</label>
            <select name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>

            <label>Date of Birth:</label>
            <input type="date" name="dob" required />

            <label>Mobile Number:</label>
            <input type="text" name="mobileNumber" required />

       
            <label>Register Number:</label>
            <input type="text" name="registerNumber" required />

            <label>Department:</label>
            <input type="text" name="department" required />

            <label>Course:</label>
            <input type="text" name="course" required />

            <label>Email:</label>
            <input type="email" name="email" required />
                    <input type="hidden" name="username" value="${username}">
            <input type="submit" value="Register" />
        </form>
    </div>
</body>
</html>
