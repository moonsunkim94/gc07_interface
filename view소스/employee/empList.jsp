<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Employee List **</title>
</head>
<body>
<h3>** Employee List **</h3>
<img src="resources/image/bar.gif">
<table width=800 border="1">
<tr align="center" height=30 bgcolor="pink">
	<td>I D</td><td>Password</td><td>Name</td>
	<td>Lev</td><td>EnterDay</td><td>Gender</td>
	<td>Phone</td>
</tr>
<c:forEach var="mm" items="${apple}"> <%--banana --%>
	<tr align="center" height=30>
	<!-- 관리자 기능 추가 -->
	<%-- <c:if test="${loginID=='admin'}"> --%>
		<td><a href="edetail?id=${mm.id}">${mm.id}</a></td>
	<%-- </c:if> --%>
<%-- 	<c:if test="${loginID!='admin'}">
		<td>${mm.id}</td>
	</c:if>	 --%>
	<td>${mm.password}</td><td>${mm.name}</td><td>${mm.lev}
	<c:choose>
	   	<c:when test="${mm.lev=='A'}"> VIP</c:when>
	   	<c:when test="${mm.lev=='B'}"> 나무</c:when>
	   	<c:when test="${mm.lev=='C'}"> 잎새</c:when>
	   	<c:when test="${mm.lev=='D'}"> 새싹</c:when>
	   	<c:otherwise>ERROR</c:otherwise>
	</c:choose></td>
	<td>
		${mm.enter}
	</td>
	<td>
		${mm.gender}
	</td>
	<td>${mm.phone}</td>
	</tr>
</c:forEach>
</table>
<a href="home">[HOME]</a><br>
<a href="#" onclick="history.back()">[이전 화면]</a>
</body>
</html>