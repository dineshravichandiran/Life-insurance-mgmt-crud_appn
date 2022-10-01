<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
      <input type="email" name="email" placeholder="Enter User Name" required>
       <input type="number" name="user_id" placeholder="Enter User Id" required>
        <select name="sequrityQuestion" required>
    <option value="In what city were you born?">In what city were you born?</option>
    <option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
    <option value="What was your favorite food?">What was your favorite food?</option>
    </select>
     <input type="text" name="sequrityAnswer" placeholder="Enter Answer" required>
      <input type="password" name="newpassword" placeholder="Enter Your New Password" required>
      <input type="submit" value="save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
    <%
  String msg=request.getParameter("msg");
  if("exist".equals(msg))
  {
   %>
<h1>Password Changed Successfully!</h1>
<%} %>
<%
  if("notexist".equals(msg))
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