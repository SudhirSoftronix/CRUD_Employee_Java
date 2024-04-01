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

		<table align="center">
			<tr>
				<td>Employee ID</td>
				<td>${emp.eid}</td>
			</tr>
			<tr>
				<td>Employee Name</td>
				<td>${emp.ename}</td>
			</tr>
			<tr>
				<td>Employee Salary</td>
				<td>${emp.esal}</td>
			</tr>
			<tr>
				<td>Employee Address</td>
				<td>${emp.eaddr}</td>
			</tr>
			
		</table>

</body>
</html>