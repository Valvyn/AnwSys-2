<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@page import="java.util.*,de.tub.as.smm.models.SmartMeter"%>	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SmartMeter Management</title>
</head>

<body>
	<form method="POST" action="smart_meter">
		Name: <input type="text" name="name" /> <input type="submit"
			value="Add" />
	</form>

	<hr>
	<ol>
		<%
			@SuppressWarnings("unchecked")
			List<SmartMeter> smartmeters = (List<SmartMeter>) request.getAttribute("SmartMeter");
			if (smartmeters != null) {
				for (SmartMeter smartmeter : smartmeters) {
		%>
		<li><%=smartmeter%></li>
		<%
			}
			}
		%>
	</ol>
	<hr>

</body>
</html>