<%@ page import="java.sql.*" %>

<%
Connection con=null;
Statement st=null;
String name=request.getParameter("n1");
String license=request.getParameter("license");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/glauniversity", "root", "1234");
st=con.createStatement();
String query="Insert into login_details values('" + name +"', '" + license + "', '" + email + "', '" + mobile + "')"; 

st.executeUpdate(query);

session.setAttribute("name",name);
response.sendRedirect("submit.jsp");

}

catch(Exception e)
{
out.println(e);
}
%>