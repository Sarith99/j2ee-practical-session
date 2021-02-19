<%-- 
    Document   : DBconnection
    Created on : Jun 24, 2020, 1:54:44 AM
    Author     : ASUS
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/dbjdbc";
            String sql ="Insert into student values('1000', 'Sarith', 'Matara', 0721324532)";
            
            
            Class.forName(driver);
         
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/dbjdbc", "root", "");
            
            Statement st = con.createStatement();
           
            st.executeUpdate(sql);
            
            
        %>
        
    </body>
</html>
