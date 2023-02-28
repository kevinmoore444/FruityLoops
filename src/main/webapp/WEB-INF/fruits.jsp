<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!--Importing my c tags  -->   
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fruits Model</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
 <!--importing my style.css file  -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script type="text/javascript" src="/js/app.js"></script>



<!--I'm bringing in my list of fruits via the key "fruitsForMyModel" and for each one,
in one row, I'm listing out the fruit name and fruit price on each column  -->
</head>
<body>
	<h1>Fruits</h1>
	<table class="table">
  <thead>
    <tr>
      <th scope="col">Fruit</th>
      <th scope="col">Price</th>
    </tr>
  </thead>
  <tbody>
     	<c:forEach var="oneFruit" items="${fruitsForMyModel}">
    <tr>
    	<td scope="row"><c:out value="${oneFruit.name}"></c:out></td>

    	<td>$<c:out value="${oneFruit.price}"></c:out></td>
    </tr>
    	</c:forEach>
    
  </tbody>
</table>

</body>
</html>