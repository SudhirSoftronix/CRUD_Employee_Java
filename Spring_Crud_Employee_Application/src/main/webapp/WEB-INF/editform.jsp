<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/welcome.jsp" />
	<br><br><br><br><br>
	<form method="POST" action="update">
		<table align="center">
			<tr>
				<td>Employee ID</td>
				<td>${emp.eid}</td>
			</tr>
			<tr>
				<td>Employee Name</td>
				<td><input type="text" name="ename" value="${emp.ename}"/></td>
			</tr>
			<tr>
				<td>Employee Salary</td>
				<td><input type="text" name="esal" value="${emp.esal}"/></td>
			</tr>
			<tr>
				<td>Employee Address</td>
				<td><input type="text" name="eaddr" value="${emp.eaddr}"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update EMPLOYEE"/></td>
			</tr>

		</table>
		<input type="hidden" name="eid" value="${emp.eid}"/>
	</form>
</body>
</html>