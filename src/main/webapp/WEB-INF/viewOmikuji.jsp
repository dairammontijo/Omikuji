<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
	<h1 class="text-primary text-center">Here's Your Omikuji</h1>
	<div class="container w-25">
		<p > 
			<c:out value="${formResults}"/>
		</p>
	</div>
	
	
	<div class="text-center"><a href="/" class="text-center">Go Back</a></div>
	
</body>
</html>