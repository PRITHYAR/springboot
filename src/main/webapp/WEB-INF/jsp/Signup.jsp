<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Signup.css">
</head>
<body>
  <div class="main-div">
   
  <div class="right-panel">
 <div class="left-panel">
    <img src="${pageContext.request.contextPath}/img/image.png" width=300 height=300>
  </div>  
  <div class="content-div">
  
  <form action="/students/Signup" method="POST" class="form-div">
  <div class="heading">
    <h1>Sign Up</h1>
    <h4>Unlock your world</h4>
  </div>
  <label>Username:</label><br>
  <input type="text" placeholder="Enter your username" name="username"><br>
  
  <label>Password:</label><br>
  <input type="password" placeholder="Enter your password " name="pwd"><br>
  
  <c:if test="${not empty error}">
  <p style="color:red;">${error}</p>
  </c:if>
  <input type="submit" value="Sumbit" >
  <p>Already have an account?<a href="${pageContext.request.contextPath}/students/loginform">Login</a></p>
  </form>
  </div>
  </div>
  </div>
</body>
</html>