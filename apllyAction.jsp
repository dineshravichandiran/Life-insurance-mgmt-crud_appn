<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
String name=request.getParameter("name");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String status=request.getParameter("status");
String residentHistory=request.getParameter("residentHistory");
String residenceDate=request.getParameter("residenceDate");
String village=request.getParameter("village");
String block=request.getParameter("block");
String district=request.getParameter("district");
String state=request.getParameter("state");
String salary=request.getParameter("salary");
String medicalHistory=request.getParameter("medicalHistory");
String ICDcode=request.getParameter("ICDcode");
String pincode=request.getParameter("pincode");
String occupationHistory=request.getParameter("occupationHistory");
String occupationIndustry=request.getParameter("occupationIndustry");
String insurance=request.getParameter("insurance");
String amount=request.getParameter("amount");
String policyDate=request.getParameter("policyDate");
String document=request.getParameter("document");

try{ 
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pps=con.prepareStatement("insert into inform values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	pps.setString(1, name);
	pps.setString(2, dob);
	pps.setString(3, gender);
	pps.setString(4, status);
	pps.setString(5, residentHistory);
	pps.setString(6, residenceDate);
	pps.setString(7, village);
	pps.setString(8, block);
	pps.setString(9, district);
	pps.setString(10, state);
	pps.setString(11, salary);
	pps.setString(12, medicalHistory);
	pps.setString(13, ICDcode);
	pps.setString(14, pincode);
	pps.setString(15, occupationHistory);
	pps.setString(16, occupationIndustry);
	pps.setString(17, insurance);
	pps.setString(18, amount);
	pps.setString(19, policyDate);
	pps.setString(20, document);
	pps.executeUpdate();
	response.sendRedirect("applyinsurance.jsp?msg=valid");
	
}
catch(Exception e)
{ 
	System.out.println(e);
	response.sendRedirect("applyinsurance.jsp?msg=invalid");
}
%>