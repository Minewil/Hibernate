<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Hibernate</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.js" integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


</head>
<body>
	<%
		try{
			
			String connectionURL="jdbc:mysql://localhost:3306/hibernate";
			Connection connection  = null;
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection(connectionURL, "root","root");
			if(!connection.isClosed()){
				out.println("Sucessfully connected to " + "Mysql Server");
			}
			connection.close();
			
		}catch(Exception e){
			out.println("Unable to connect to database " + e.getMessage());
		}
	%>
	
	<div class="page-header">
	  <h1>Example page header <small>Subtext for header</small></h1>

		<div class="container-fluid">
	  
		<div class="row">
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		  <div class="col-md-1">.col-md-1</div>
		</div>
		<div class="row">
		  <div class="col-md-8">.col-md-8</div>
		  <div class="col-md-4">.col-md-4</div>
		</div>
		<div class="row">
		  <div class="col-md-4">.col-md-4</div>
		  <div class="col-md-4">.col-md-4</div>
		  <div class="col-md-4">.col-md-4</div>
		</div>
		<div class="row">
		  <div class="col-md-6">.col-md-6</div>
		  <div class="col-md-6">.col-md-6</div>
		</div>
		  
		</div>
	</div>
</body>
</html>