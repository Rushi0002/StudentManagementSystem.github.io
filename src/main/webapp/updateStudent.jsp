<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

<link
	href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300&family=Lobster&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300&family=Rajdhani&display=swap"
	rel="stylesheet">
	
<style>
body{
	font-family: 'Rajdhani', sans-serif;
}

nav {
	font-family: 'Lobster', cursive;
}
.container{
	width: 400px;
	color:White;
	border-radius:10px;
}
.btn-orange{
	background-color:#F79E08;
	width:80px;
	color:black;
}
.btn-orange:hover{
	background-color:#F7720B;
	width:100px;
	height:35px;
}

</style>
</head>
<body>
	<nav class="navbar bg-dark mb-3" data-bs-theme="dark">
		<div class="container-fluid d-flex justify-content-center">
			<h2 class="navbar-brand">Student Management System</h2>
		</div>
	</nav>
	<%
	String id=request.getParameter("value");
	%>
	<div class="container bg-dark">
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Rushi007@");
		String sql = "select * from student where id=?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1,Integer.parseInt(id));
		ResultSet rs = pst.executeQuery();
		rs.next();
		String name = rs.getString(2);
		String divison = rs.getString(3);
		String contact = rs.getString(4);
				
	%>
		<form class="p-3" action="Update" method="post">
			<div class="mb-3">
				<label for="id" class="form-label">
					Student Id
				</label> <input type="number" class="form-control"
					id="id" name="id"  value="<%=id%>">
			</div>
			<div class="mb-3">
				<label for="name" class="form-label">
					Student Name
				</label> <input type="text" class="form-control"
					id="name" name="name" value="<%=name%>">
			</div>
			<div class="mb-3">
				<label for="divison" class="form-label">
					Student Division
				</label> <input type="text" class="form-control"
					id="divison" name="divison" value="<%=divison%>">
			</div>
			<div class="mb-3">
				<label for="contact" class="form-label">
					Student Contact
				</label> <input type="text" class="form-control"
					id="contact" name="contact" value="<%=contact%>">
			</div>
			
			
			<div class="d-flex justify-content-center">
				<button type="submit" class="btn btn-orange">Update</button>
			</div>
		</form>
	</div>
</body>
</html>