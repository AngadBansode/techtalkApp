<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add New Event</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='http://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
    </head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div class="container">
  <h2>Add New Event</h2>
  <form action="AddEventController" method="post">
    
    <div class="form-group">
      <label for="emailid">Title:</label>
      <input type="text" class="form-control"  id="title" placeholder="Enter title" name="title"   required="true">
    </div>
    
    <div class="form-group">
      <label for="password">Date:</label>
      <input type="text" class="form-control" id="date" placeholder="Enter date"  name="date"  required="true">
    </div>
    
    <div class="form-group">
      <label for="password">Description:</label>
      <input type="text" class="form-control" id="description" placeholder="Enter description"  name="description"  required="true">
    </div>
    
    <div class="form-group">
      <label for="password">Name of Trainer:</label>
      <input type="text" class="form-control" id="trainer" placeholder="Enter trainer"  name="trainer"  required="true">
    </div>
    
   
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>