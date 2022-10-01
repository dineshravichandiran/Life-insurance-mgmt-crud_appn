<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
    Connection con=ConnectionProvider.getCon();
     Statement st=con.createStatement();
     String q1="create table users(firstname varchar(100),lastname varchar(100),dob varchar(100),gender varchar(100),sequrityQuestion varchar(200),sequrityAnswer varchar(100),email varchar(100)primary key,mobileNumber bigint,user_id bigint,password varchar(200),confirmPassword varchar(200))";
     String q2="create table inform(name varchar(100),dob varchar(100),gender varchar(100),status varchar(100),residentHistory varchar(100),residenceDate varchar(100),village varchar(100),block varchar(100),district varchar(100),state varchar(200),salary bigint,medicalHistory varchar(200),ICDcode varchar(50),pincode bigint,occupationHistory varchar(200),occupationIndustry varchar(200),insurance varchar(100),amount bigint,policyDate varchar(100),document varchar(200))";
     System.out.print(q1);
     System.out.print(q2);
     //st.execute(q1);
     st.execute(q2);
     System.out.print("Table Created");
     con.close();
    
}
catch(Exception e)
{
	System.out.print(e);
}
%>
