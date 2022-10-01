<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="firstname" placeholder="Enter First Name" required>
     <input type="text" name="lastname" placeholder="Enter Last Name" required>
    <input type="text" name="dob" placeholder="Enter Date Of Birth" onfocus="(this.type='date')" required>
    <select name="gender" required>
    <option value="Male">Male</option>
    <option value="Female">Female</option>
    <option value="Others">Others</option>
    </select>
     <select name="sequrityQuestion" required>
    <option value="In what city were you born?">In what city were you born?</option>
    <option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
    <option value="What was your favorite food?">What was your favorite food?</option>
    </select>
    <input type="text" name="sequrityAnswer" placeholder="Enter Answer" required>
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
    <input type="number" name="user_id" placeholder="USER ID" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <input type="password" name="confirmPassword" placeholder="Enter Confirm Password" required>
    <input type="submit" value="signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Your details are submitted succesfully ! </h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>

<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Life Insurance</h2>
    <p>The primary importance of a life insurance policy is that it provides your family with long-term financial security. Life insurance policies provide a lump sum money to financially support your family in the case of your early demise.</p>
  </div>
</div>

</body>
</html>