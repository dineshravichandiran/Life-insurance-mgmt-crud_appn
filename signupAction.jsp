<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String sequrityQuestion=request.getParameter("sequrityQuestion");
String sequrityAnswer=request.getParameter("sequrityAnswer");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String user_id=request.getParameter("user_id");
String password=request.getParameter("password");
String confirmPassword=request.getParameter("confirmPassword");
try{ 
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, firstname);
	ps.setString(2, lastname);
	ps.setString(3, dob);
	ps.setString(4, gender);
	ps.setString(5, sequrityQuestion);
	ps.setString(6, sequrityAnswer);
	ps.setString(7, email);
	ps.setString(8, mobileNumber);
	ps.setString(9, user_id);
	ps.setString(10, password);
	ps.setString(11, confirmPassword);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
	
}
catch(Exception e)
{ 
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>