
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
      <input type="email" name="email" placeholder="Enter Username" required>
      <input type="password" name="password" placeholder="Enter password" required>
      <input type="submit" value="Login / Admin Login">
       </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
       <h2><a href="">Become an Agent?</a></h2>
       <h2><a href="">Insurance Claim?</a></h2>
        <h2><a href="">Term Premium calculate?</a></h2>
       <h2><a href="contactus.jsp">Contact Us</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
   %>
  <h1>Incorrect Username or Password</h1>
  <%} %>
  <%
  if("invalid".equals(msg))
  {
  %>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Life Insurance</h2>
    <p>The primary importance of a life insurance policy is that it provides your family with long-term financial security. Life insurance policies provide a lump sum money to financially support your family in the case of your early demise.</p>
     <h3></h3> 
  </div>
</div>

</body>
</html>