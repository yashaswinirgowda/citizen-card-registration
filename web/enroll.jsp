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
           String fname=request.getParameter("fname");
           String mname=request.getParameter("mname");
           String lname=request.getParameter("lname");
       String phone=request.getParameter("phone");
       String address=request.getParameter("address");
       String u_id=request.getParameter("u_id");
     
        try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","yashu","yashu1999");
            PreparedStatement st=con.prepareStatement("update citizen set fname=?, mname=?, lname=?, phone=?, address=?, u_id=?, cit_no=?");
            st.setString(1,fname);
            st.setString(2,mname);
            st.setString(3,lname);
            st.setString(4,phone);
            st.setString(5,address);
            st.setString(6,u_id);
           
            int n=st.executeUpdate();
            session.setAttribute("user_id",u_id);
            //out.println("successful");
            
         con.commit();  
         response.sendRedirect("en_det.jsp");
       }
       catch(Exception e)
       {
           out.println(e);
       }
       %>
       
    </body>
</html>
