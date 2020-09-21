<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> 현재 상영작 </h1>

<c:forEach var="movie" items="${movieList }">
 id : ${movie.movieId } 
 감독 : ${movie.director}
 배우 : ${movie.cast}

<br>
 
 </c:forEach>




</body>
</html>