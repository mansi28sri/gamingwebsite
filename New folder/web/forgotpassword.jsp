<%-- 
    Document   : sequirty_answer
    Created on : 18 May, 2021, 5:57:05 PM
    Author     : mansi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> Password Reset </title>
	<style>
	.container{
	width:30%;
	height:350px;
	border:solid;
	border-width:1px;
	border-color:blue;
	box-shadow:3px 2px 2px 3px #808080;
	}
	input[type=text], input[type=password], input[type=number]{
  width: 40%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
h1{
color:black;
text-shadow:-1px 0 blue, 0 1px blue , 1px 0 blue,0 -1px blue;
}
.button1 {
  background-color: dodgerblue;
  color: white;
  padding: 12px 15px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 25%;
  opacity: 0.9;
}

.button1:hover {
  opacity: 1;
}
	</style>
</head>
<body>
    <form method="Post">
	<h1 align="center"> Lets Find Your Account</h1>
	<hr style="width:100%;text-align:left;margin-left:0">
	</br></br>
	<center>
	<div class="container">
	<h2> Forgot Password</h2></br>
	No Problem! Enter your email below</br></br>
	<input type="text" name="email" placeholder="Enter email" required/></br>
        <button class="button1" name="search"><span><a href="security_answer.jsp">Search</a></span></button></br> </br>
	Back to <a href="output.jsp">Login</a>
	</div>
	</center>
<%
    try{
        if(request.getParameter("search")!=null)
        {
            String username=request.getParameter("email");
            session.setAttribute("email",username);
            Class.forName("org.apache.derby.jdbc.ClientDriver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/user");
     Statement st= con.createStatement();
            ResultSet rs=st.executeQuery("select * from details where email='"+username+"'");
            if(rs.next())
            {
                response.sendRedirect("security_answer.jsp");
            }
            else
            {
                out.println("<script>alert('Email not found')</script> ");
            }
        }
}catch (Exception e) {
        e.printStackTrace();
    }
  %>          
    </form>
</body>
</html>
