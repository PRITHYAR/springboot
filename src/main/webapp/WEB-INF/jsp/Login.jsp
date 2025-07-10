<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Login.css">
</head>
<body>
  <div class="main-div">
   
  <div class="right-panel">
 <div class="left-panel">
    <img src="${pageContext.request.contextPath}/img/image.png" width=300 height=300>
  </div>  
  <div class="content-div">
  
  <form action="${pageContext.request.contextPath}/students/login" method="POST" class="form-div">
  <div class="heading">
    <h1>Login</h1>
    <h4>Unlock your world</h4>
  </div>
  <label>Username:</label><br>
  <input type="text" placeholder="Enter your username" name="username"><br>
  
  <label>Password:</label><br>
  <input type="password" placeholder="Enter your password " name="pwd"><br>
  <input type="submit" value="Submit" >
    
   <h4 >${error}</h4>
 
  <p>Already you dont't have an account?<a href="${pageContext.request.contextPath}/students/form">Signup</a></p>
  </form>

  </div>
  </div>
  </div>
</body>
</html>