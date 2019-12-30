<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Employee Detail, Update **</title>
</head>
<body>
<h3>** Employee Detail **</h3>
<form action="eupdate" method="post">
<table>
<tr height="40"><td bgcolor="gray">I D</td>
	<td><input type="text" name="id" value="${apple.id}" readonly="readonly"></td></tr>
<tr height="40"><td bgcolor="gray">Password</td>
	<td><input type="password" name="password" value="${apple.password}"></td></tr>
<tr height="40"><td bgcolor="gray">Name</td>
	<td><input type="text" name="name" value="${apple.name}"></td></tr>
<tr height="40"><td bgcolor="gray" >Level</td>
	<td>
	
	<c:choose>
		<c:when test="${apple.lev=='A'}">
			<select name="lev">
				<option value="A" selected="selected">관리자</option>
				<option value="B">나무</option>
				<option value="C">잎새</option>
				<option value="D">새싹</option>
			</select>
		</c:when>
		<c:when test="${apple.lev=='B'}">
			<select name="lev">
				<option value="A">관리자</option>
				<option value="B" selected="selected">나무</option>
				<option value="C">잎새</option>
				<option value="D">새싹</option>
			</select>
		</c:when>
		<c:when test="${apple.lev=='C'}">
			<select name="lev">
				<option value="A">관리자</option>
				<option value="B">나무</option>
				<option value="C" selected="selected">잎새</option>
				<option value="D">새싹</option>
			</select>
		</c:when>
		<c:when test="${apple.lev=='D'}">
			<select name="lev">
				<option value="A">관리자</option>
				<option value="B">나무</option>
				<option value="C">잎새</option>
				<option value="D" selected="selected">새싹</option>
			</select>
		</c:when>
		<c:otherwise>
			<select name="lev">
				<option value="A">관리자</option>
				<option value="B">나무</option>
				<option value="C">잎새</option>
				<option value="D">새싹</option>
				<option value="E" selected="selected">Error</option>
			</select>
		</c:otherwise>
	</c:choose>
	</td></tr>
<tr height="40"><td bgcolor="gray">Enter Day</td>
	<td><input type="date" name="enter" value="${apple.enter}"></td></tr>
<tr height="40"><td bgcolor="gray">Gender</td>
	<td><input type="text" name="gender" value="${apple.gender}"></td></tr>
<tr height="40"><td bgcolor="gray">Phone</td>
	<td><input type="text" name="phone" value="${apple.phone}"></td></tr>
<tr><td></td><td><input type="submit" value="Submit">
                 <input type="reset" value="Reset"></td>	
</table>
</form>
<br>

	======><a href="edelete?id=${apple.id}">[사원 삭제]</a>

     
</body>
</html>