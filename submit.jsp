<html>
<head>
<title>
Submit Page
</title>
</head>
<body>
<%
String name=(String)session.getAttribute("name");
out.println("Thank You "+name+" your request for test drive has been approved. You will recieved an confirmation message soon.");
%>
<li><h2><a href=ss.html>Home Page</a></h2></li>
</body>
</html>