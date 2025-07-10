<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Dashboard</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css" />
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
<link rel="icon" href="${pageContext.request.contextPath}/img/icon.jpg" type="image/jpeg">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.jpg" type="image/jpeg">
</head>
<body>
<div class="main-div">
  
  
  <h2 style="text-align:center;">Welcome, ${username}</h2>
  


  <header class="top-nav">
    <nav class="menu">
      <div class="nav-left">
      
       <nav class="menu">
  <div class="nav-left">
 
    <div class="hamburger" onclick="toggleMenu()">&#9776;</div>
    
  
    <a href="#"><img src="${pageContext.request.contextPath}/img/plane.png" width="20" height="20" alt="Logo"></a>
    <a href="#">Home</a>
    <a href="#" class="active">Courses</a>
    <a href="#">People</a>
    <a href="#">Analytics</a>
  </div>
  
  <div class="nav-right">
    <img src="${pageContext.request.contextPath}/img/bell.png" alt="Notifications" width="24" height="24">
    <img src="${pageContext.request.contextPath}/img/profile.png" alt="Profile" width="32" height="32" class="avatar">
   
  </div>
</nav>


<div id="dropdownMenu" class="dropdown-content">
  <a href="${pageContext.request.contextPath}/students/app">Update Profile</a>
  <form action="${pageContext.request.contextPath}/students/delete" method="post" onsubmit="return confirm('Are you sure you want to delete your account?');">
       <input type="hidden" name="username" value="${username}">
    <button type="submit" class="delete-btn">Delete Account</button>
  </form>
   <a href="${pageContext.request.contextPath}/students/logout" class="logout-link">LOGOUT</a>
</div>
  
       
      </div>
    </nav>
  </header>


  <main class="container">
    <h1>Courses</h1>
    <div class="filters">
      <div class="tabs">
        <button class="active">All</button>
        <button>Published</button>
        <button>Draft</button>
        <button>Archived</button>
      </div>
      <div class="sort">
        <button>Recency</button>
        <button class="active">Alphabetically</button>
      </div>
    </div>
    <div class="cards">
      <div class="card">
        <img src="${pageContext.request.contextPath}/img/javacourse.jpg" alt="Java Course">
        <div class="card-body">
          <p class="category">Adventure Sports</p>
          <h2 class="title">Fear Of Driving And Automatic Negative Thoughts</h2>
          <div class="meta">
            <span>12 Lessons</span>
            <span>3 hr 30 min</span>
          </div>
        </div>
      </div>
      <div class="card">
        <img src="${pageContext.request.contextPath}/img/pythoncourse.jpg" alt="Python Course">
        <div class="card-body">
          <p class="category">Sales and Operations</p>
          <h2 class="title">Work more, Earn more while sitting at your home</h2>
          <div class="meta">
            <span>23 Lessons</span>
            <span>1 hr 30 min</span>
          </div>
        </div>
      </div>
      <div class="card">
        <img src="${pageContext.request.contextPath}/img/fullstackcourse.jpg" alt="Fullstack Course">
        <div class="card-body">
          <p class="category">Marketing <span class="new">New</span></p>
          <h2 class="title">Foundation course to understand about Software</h2>
          <div class="meta">
            <span>23 Lessons</span>
            <span>1 hr 30 min</span>
          </div>
        </div>
      </div>
    </div>
  </main>
</div>
<script>
function toggleMenu() {
  const menu = document.getElementById("dropdownMenu");
  menu.style.display = menu.style.display === "block" ? "none" : "block";
}
</script>

</body>
</html>

 





