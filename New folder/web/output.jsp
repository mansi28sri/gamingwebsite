<%-- 
    Document   : output
    Created on : 26 Apr, 2021, 5:05:32 PM
    Author     : mansi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String email,password;
            email=request.getParameter("email");
            password= request.getParameter("psw");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/user","root2","1234");
            Statement st=conn.createStatement();
            ResultSet rs = st.executeQuery("Select * from details");
            try{
              
                int flag=0;
            while(rs.next())
            {
            if(email.compareTo(rs.getString("email"))==0&&password.compareTo(rs.getString("password"))==0)
             {
                flag=1;
                session.setAttribute("email",rs.getString("username"));
                response.sendRedirect("profile.jsp");
             }
            
            }
            if(flag==0)
            {
                out.print("Invalid");
            }
            }
            catch(Exception e)
            {
            }
         %>
            <%@ include file="index.html" %>;
        
     </body>
</html>
