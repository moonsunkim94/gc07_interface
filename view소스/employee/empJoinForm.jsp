<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Employee Join **</title>
</head>
<body>
<h3>** Employee Join **</h3>
<form action="ejoin" method="post">
<table>
<tr height="40"><td bgcolor="yellow">I D</td>
	<td><input type="text" name="id" value=""></td></tr>
<tr height="40"><td bgcolor="yellow">Password</td>
	<td><input type="password" name="password" value=""></td></tr>
<tr height="40"><td bgcolor="yellow">Name</td>
	<td><input type="text" name="name" value=""></td></tr>
<tr height="40"><td bgcolor="yellow" >Level</td>
	<td>  
	  <select name=lev>
		<option value="A">관리자</option>
		<option value="B">나무</option>
		<option value="C">잎새</option>
		<option value="D">새싹</option>
	  </select>
	</td></tr>
<tr height="40"><td bgcolor="yellow">Enter Day</td>
	<td><input type="date" name="enter" value=""></td></tr>
<tr height="40"><td bgcolor="yellow">Gender</td>
	<td><input type="text" name="gender" value=""></td></tr>
<tr height="40"><td bgcolor="yellow">Phone</td>
	<td><input type="text" name="phone" value=""></td></tr>
<tr><td></td><td><input type="submit" value="Join">
                 <input type="reset" value="Reset"></td>	
</table>
</form>
</body>
</html>