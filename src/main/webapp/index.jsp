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
	padding:0px;
	margin:0px;
}

nav {
	font-family: 'Lobster', cursive;
}

</style>
</head>
<body>
	<nav class="navbar bg-dark mb-3" data-bs-theme="dark">
		<div class="container-fluid d-flex justify-content-center">
			<h2 class="navbar-brand">Student Management System</h2>
		</div>
	</nav>
	<form class="d-flex justify-content-center mb-3" method="post" action="add.jsp">
				<button class="btn btn-outline-success" type="submit">Add
					New Student</button>
	</form>
	<div class="d-flex justify-content-center align-items-center container mt-10">
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Rushi007@");
		String sql = "select * from student";
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		%>
		<table class="table table-striped table-hover">
		<thead>
		<tr class="table-dark">
			<td scope="col">Student Id</td>
			<td scope="col">Student Name</td>
			<td scope="col">Student Division</td>
			<td scope="col">Student Contact</td>
			<td scope="col">Update Record</td>
			<td scope="col">Delete Record</td>
		</tr>
		</thead>
		<tbody>
		<%
		while(rs.next())
		{
			int id = rs.getInt(1);
			String sid = Integer.toString(id);
			String name = rs.getString(2);
			String division = rs.getString(3);
			String contact = rs.getString(4);
		%>
		<tr scope="row" class="table-light">
			<td><%=id %></td>
			<td><%=name %></td>
			<td><%=division %></td>
			<td><%=contact %></td>
			<td><a href="updateStudent.jsp?value=<%=id %>" class="btn btn-outline-warning">Update</a></td>
			<td><a href="Delete?value=<%=id%>" class="btn btn-outline-danger">Delete</a></td>
		<%
		}
		%>
		</tr>
		</tbody>	
		</table>
	</div>
</body>
</html>