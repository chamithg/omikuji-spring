<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="d-flex justify-content-center">
<div class="w-25 m-5">
<h1>Send and omikuji</h1>
<form action="/omikuji/show" method="post" class="form">
    <div class="form-group">
	    <label>Pick any n   number from 5 to 25</label>
	    <input type="number" class="form-control" name="number" >
    </div>
    <div class="form-group">
	    <label>Enter the name of any city</label>
	    <input type="text" class="form-control" name="city" >
    </div>
    <div class="form-group">
	    <label>Enter the name of any real person</label>
	    <input type="text" class="form-control" name="person" >
    </div>
    <div class="form-group">
	    <label>Enter professional endeavor or hobby</label>
	    <input type="text" class="form-control" name="hobby" >
    </div>
    <div class="form-group">
	    <label>Enter the type of living thing</label>
	    <input type="text" class="form-control" name="type" >
    </div>
    <div class="form-group">
	    <label>Say something nice to someone</label>
	    <br>
	   <textarea rows="5" cols="30" name="somethingNice"></textarea>
    </div>
    <label>Send and show a friend!</label>
    <input type="submit" value="Send" class="btn btn-primary"/>
</form>
</div>

</body>
</html>