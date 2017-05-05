<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Update Events</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='http://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Events</title>
</head>
<body>

<form action="AddEventController" method="post">
Title:<input type="text" placeholder="Enter Title" name="title"  required="true">
Date:<input type="text"  placeholder="Enter Date"  name="date"  required="true">
Description<input type="text" placeholder="Description"  name="description"  required="true">
Trainer:<input type="text" placeholder="Enter trainer name" name="trainer"  required="true">
<button type="submit">Update</button>
<!-- <input type="submit" value="Update"/> -->
</form>
</body>
</html>