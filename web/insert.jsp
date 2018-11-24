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
           String name=request.getParameter("name");
       String phone=request.getParameter("phone");
       String location=request.getParameter("location");
       String u_id=request.getParameter("u_id");
       String password=request.getParameter("password");
       try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","yashu","yashu1999");
            PreparedStatement st=con.prepareStatement("insert into register values(?,?,?,?,?)");
            st.setString(1,name);
            st.setString(2,phone);
            st.setString(3,location);
            st.setString(4,u_id);
            st.setString(5,password);
            
            int n=st.executeUpdate();
            //out.println("successful");
            
         con.commit();  
         response.sendRedirect("login1.jsp");
       }
       catch(Exception e)
       {
           out.println(e);
       }
       %>
       
    </body>
</html>
