<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<% 	String uri = request.getRequestURI();
		String pageName = uri.substring(uri.lastIndexOf("/")+1);
		if(pageName.equals("login.jsp")){ %>
			<link rel="stylesheet" type="text/css" href="css/login.css">
			<title>Login</title>
	<%	} 
		if(pageName.equals("index.jsp")){ %>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<title>Welcome to Hotel</title>
	<%	} 
		if(pageName.equals("welcome.jsp") || pageName.equals("sidebar.jsp") || pageName.equals("revervation.jsp")){ %>
		<link rel="stylesheet" type="text/css" href="css/welcome.css">
	<%	} %>
	<!-- Bootstrap File -->
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/datepicker/0.6.5/datepicker.min.css">
</head>
<body>
<% if(pageName.equals("login.jsp") || pageName.equals("index.jsp") ){ %>
<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
		<a class="navbar-brand" href="index.php">The Phil Oasis</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link" href="index.jsp" style="color: #fff;">HOME</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#" style="color: #fff;">ABOUT</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#" style="color: #fff;">CONTACT US</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: #fff;">GALLERY</a>
					<div class="dropdown-menu" data-target="#navbardrop">
						<a class="dropdown-item" href="#">POOL</a>
						<a class="dropdown-item" href="#">BED ROOMS</a>
						<a class="dropdown-item" href="#">FACILITES</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#" style="color: #fff;">ACCOUNT</a>
				</li>
			</ul>
		</div>
	</nav>
<% } %>

<% if(pageName.equals("welcome.jsp") || pageName.equals("sidebar.jsp") || pageName.equals("revervation.jsp")){ %>
	<div class="container-fluid" style="background: green; min-height: 70px;">
		<div class="container">
			<p class="text-right" style="padding-top: 16px; color: #fff;">Welcome, 
			<c:forEach var="name" items="${LOGIN_VALIDATE}">
				<c:out value="${name.firstName}"></c:out>
				<c:out value="${name.lastName}"></c:out>
			</c:forEach>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="logoutServlet" style="color: #fff;">Logout</a></p>
		</div>
	</div>
	<div style="background: #007bff;width: 100%;min-height: 119px;margin-top: -16px;" class="container-fluid">
		<div class="container">
			<h2 style="padding-top: 12px; color: #fff;"><img src="img/user.png" class="rounded-circle img-fluid" style="height: 100px;">&nbsp;&nbsp;&nbsp;Phil Oasis Hotel and Restaurant</h2>
		</div>
	</div>
<% } %>