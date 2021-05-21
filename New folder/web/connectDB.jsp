<%-- 
    Document   : connectDB
    Created on : 26 Apr, 2021, 5:08:51 PM
    Author     : mansi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
 <%
     Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/user","root2","1234");
    Statement st=conn.createStatement();
    ResultSet rs = st.executeQuery("Select * from details");
    
   try{
         while(rs.next())
         {
              out.print(rs.getString("email"));
         }
   }
   catch(Exception e){
       
   } 
%>
           
            

