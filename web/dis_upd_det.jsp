<%-- 
    Document   : insert
    Created on : 15 Nov, 2018, 3:38:51 PM
    Author     : DELL
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    
    <body>
       <%ResultSet rs=null;
       
       
       try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","yashu","yashu1999");
            Statement st=con.createStatement();
            out.println("update successful");
            rs=st.executeQuery("select * from citdet");
            session.getAttribute("user_id");
            session.getAttribute("proof_num");
            out.println("Thank You!!! ");
            
         con.commit();  
         
       }
       catch(Exception e)
       {
           out.println(e);
       }
       %>
       
    </body>
</html>
