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
	<form method="POST" action="edit">
		<table align="center">
			<tr>
				<td>Employee ID</td>
				<td><input type="text" name="eid"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="GET_EDIT_FORM"/></td>
			</tr>

		</table>
	</form>
</body>
</html>