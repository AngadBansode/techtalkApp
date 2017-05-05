<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Page</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='http://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
	<h1>Welcome Angad..</h1>
	<table align="center" cellpadding="5" cellspacing="5" border="1">
		<tr>

		</tr>
		<tr bgcolor="#A52A2A">
			<td><b>Title</b></td>
			<td><b>Date</b></td>
			<td><b>Description</b></td>
			<td><b>Name of Trainer</b></td>
			<td><b>Update</b></td>
		</tr>


		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/angad", "root", "manager");
			Statement st = con.createStatement();

			ResultSet resultSet = st.executeQuery("select * from events");
			PrintWriter out1 = response.getWriter();
			while (resultSet.next()) {
		%>
		<tr bgcolor="#DEB887"">
			<td><b>
					<%
						out.println(resultSet.getString(1));
					%>
			</b></td>
			<td><b>
					<%
						out.println(resultSet.getString(2));
					%>
			</b></td>
			<td><b>
					<%
						out.println(resultSet.getString(3));
					%>
			</b></td>
			<td><b>
					<%
						out.println(resultSet.getString(4));
					%>
			</b></td>
		
		</tr>



		<%
			} //out.println(resultSet.getString(1)); out.println(resultSet.getString(2));
		%>
	</table>
	<form action="AddEvent.jsp">
			<input type="submit" value="Add Events" />
	</form>
		<form action="update.jsp">
			<input type="submit" value="Update Events" />
	</form>
		
		<form action="LogoutController" method="post">
			<input type="submit" value="Logout" />
	</form>
			
		<form action="viewApplied.jsp" method="post">
			<input type="submit" value="ViewApplyedForEvent" />
	</form>
		<form action="delete.jsp" method="post">
			<input type="submit" value="deleteEvent" />
	</form>
</body>
</html>