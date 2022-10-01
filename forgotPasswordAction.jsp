<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String user_id=request.getParameter("user_id");
String sequrityQuestion=request.getParameter("sequrityQuestion");
String sequrityAnswer=request.getParameter("sequrityAnswer");
String newpassword=request.getParameter("newpassword");

int check=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from users where email='"+email+"' and user_id='"+user_id+"' and sequrityQuestion='"+sequrityQuestion+"' and sequrityAnswer='"+sequrityAnswer+"'");
while(rs.next())
{
	check=1;
	st.executeUpdate("update users set password='"+newpassword+"' where email='"+email+"'");
	st.executeUpdate("update users set confirmPassword='"+newpassword+"' where email='"+email+"'");
	response.sendRedirect("forgotPassword.jsp?msg=exist");
}
if(check==0)
	response.sendRedirect("forgotPassword.jsp?msg=notexist");
}
catch(Exception e)
{
	System.out.println(e);

}



%>