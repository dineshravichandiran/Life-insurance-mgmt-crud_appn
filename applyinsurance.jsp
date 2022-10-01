<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Applyinsurance</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="apllyAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="text" name="dob" placeholder="Enter Date Of Birth" onfocus="(this.type='date')" required>
    <select name="gender" required>
    <option value="Male">Male</option>
    <option value="Female">Female</option>
    <option value="Others">Others</option>
    </select>
     <select name="status" required>
    <option value="married">married</option>
    <option value="unmarried">unmarried</option>
    </select>
    <input type="text" name="residentHistory" placeholder="Enter Your Resident" required>
     <input type="text" name="residenceDate" placeholder="Enter Resident Date" onfocus="(this.type='date')" required>
    <input type="text" name="village" placeholder="Enter Village" required>
    <input type="text" name="block" placeholder="Enter Block" required>
     <input type="text" name="district" placeholder="Enter District" required>
       <input type="text" name="state" placeholder="Enter State" required>
       <input type="number" name="salary" placeholder="Enter Your Salary" required>
        <input type="text" name="medicalHistory" placeholder="Enter Medical History" required>
         <input type="text" name="ICDcode" placeholder="Enter ICD Code" required>
    <input type="number" name="pincode" placeholder="Enter Pincode" required>
     <input type="text" name="occupationHistory" placeholder="Enter Your Occupation History" required>
      <input type="text" name="occupationIndustry" placeholder="Enter Your Occupation Industry" required>
       <select name="insurance" required>
       <option value="none">Policy Time Selection</option>
    <option value="2 year">2 year</option>
    <option value="5 year">5 year</option>
    </select>
     <input type="number" name="amount" placeholder="Enter Amount" required>
      <input type="text" name="policyDate" placeholder="Enter Policy Date" onfocus="(this.type='date')" required>
      <h3>Please provide documents!!</h3>
      <input type="file" name="document" size="100" required>
     <input type="submit" value="submit">
    </form>
            <h2><a href="payment.jsp">Proceed for Payment</a></h2>
            <h2><a href="">Terms and Condition</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Your details are submitted successfully ! </h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>

<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
  <h2> Welcome To Life Insurance</h2>
   
  </div>
</div>

</body>
</html>