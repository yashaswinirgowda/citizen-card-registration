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
       
        String dob=request.getParameter("dob");
       String gender=request.getParameter("gender");
       String proof=request.getParameter("proof");
       String pnum=request.getParameter("pnum");
        String f_h_name=request.getParameter("f_h_name");
       String cit_no=request.getParameter("cit_no");
       try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","yashu","yashu1999");
            PreparedStatement st=con.prepareStatement("update cit_det set dob=?, gender=?, proof=?, pnum=?, f_h_name=? cit_no=?");
                       
            st.setString(1,dob);
            st.setString(2,gender);
            st.setString(3,proof);
             st.setString(4,pnum);
             st.setString(5,f_h_name);
             st.setString(6,cit_no);
                        
            
             int n=st.executeUpdate();
            session.setAttribute("proof_num",pnum);
            //out.println("successful");
            
         con.commit();  
         response.sendRedirect("view_upd1.jsp");
         
       }
       catch(Exception e)
       {
           out.println(e);
       }
       %>
       
    </body>
</html>
