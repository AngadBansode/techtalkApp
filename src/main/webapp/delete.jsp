<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Delete Event By Title</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='http://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Event By Title</title>
</head>
<body>

<div class="container">
		<h2>Delete Event BY Title</h2>


		<form action="deleteController" method="post">
			<div class="form-group">
				<label for="name">Enter Title:</label> <input type="text"
					class="form-control" id="name" placeholder="Enter Title" name="title"  required="true">
			</div>
			

			<button type="submit" class="btn btn-default">Delete</button>
		</form>
	</div>

			
</body>
</html>