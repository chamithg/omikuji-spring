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
<body>
<div class="d-flex justify-content-center">
<div class="w-25 m-5">
<h3>Here's Your Omikuji!</h3>
<p>In <span><c:out value="${number}"/></span> years, you will
live in <span><c:out value="${city}"/></span> with
<span><c:out value="${person}"/></span> as your
roommate, <span><c:out value="${hobby}"/></span> for a living.
The next time you
see a <span><c:out value="${type}"/></span>, you will
have good luck.
Also, <span><c:out value="${somethingNice}"/></span></p>

<a href="/omikuji"> Go back!</a>
</div>

</div>

</body>
</html>