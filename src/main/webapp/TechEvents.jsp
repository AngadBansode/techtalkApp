
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%
String userName;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
    if(cookie.getName().equals("uname")) userName = cookie.getValue();
   

    %> 
 <h2>welcome <%= userName%></h2> --%>

	<table align="center" cellpadding="5" cellspacing="5" border="1">
		<tr>

		</tr>
		<tr bgcolor="#A52A2A">
			<td><b>Title</b></td>
			<td><b>Date</b></td>
			<td><b>Description</b></td>
			<td><b>Name of Trainer</b></td>
			<td><b>Register</b></td>
			<td><b>Register</b></td>
		</tr>

		<%
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/angad","root","manager");
		Statement st=con.createStatement();		
		
		ResultSet resultSet=st.executeQuery("select * from events");
		PrintWriter out1=response.getWriter();
		
		while(resultSet.next())
		{%>
			<tr bgcolor="#DEB887"">
			<td><b><% out.println(resultSet.getString(1)); %></b></td>
			<td><b><%out.println(resultSet.getString(2)); %></b></td>
			<td><b><%out.println(resultSet.getString(3));  %></b></td>
			<td><b><% out.println(resultSet.getString(4));%></b></td>
		  <td><b><form action=applyController method = "post" > </b>
			<td><b><input type="submit" value="apply"/></b></td></form>
	    </tr>
	        <%}

		%>

</table>
<form action="LogoutController" method="post">
			<input type="submit" value="Logout" />
	</form>
</body>
</html>