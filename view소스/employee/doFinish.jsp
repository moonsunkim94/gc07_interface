<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Employees DoFinish **</title>
</head>
<body>
<h3>** Employees DoFinish  **</h3>
<c:if test="${fCode=='D'}">
	<h3> 당신의 정보는 없습니다~~~</h3>
	<a href="home">HOME</a><br>
	<a href="#" onclick="history.back()">[이전 화면]</a><br>
</c:if>
<c:if test="${fCode=='U'}">
	<h3> 정보 수정에 실패했습니다~~~</h3>
	<a href="elist">empList</a>
	<a href="home">HOME</a><br>
	<a href="#" onclick="history.back()">[이전 화면]</a><br>
</c:if>

<c:if test="${fCode=='JF'}">
	<h3>사원 등록 실패~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	<a href="joinf">[사원 등록]</a>
	<a href="home">HOME</a><br>
	<a href="#" onclick="history.back()">[이전 화면]</a><br>
</c:if>
<c:if test="${fCode=='DS'}">
	<h3>회원 탈퇴 되었습니다~~</h3>
	<a href="home">HOME</a><br>
	<a href="#" onclick="history.back()">[이전 화면]</a><br>
	
</c:if>
<c:if test="${fCode=='DF'}">
	<h3>회원 탈퇴 실패~~</h3>
	<a href="home">HOME</a><br>
	<a href="#" onclick="history.back()">[이전 화면]</a><br>
</c:if>

</body>
</html>