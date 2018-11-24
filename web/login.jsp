
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    
    <body>
       <%ResultSet rs=null;
           
       String u_id=request.getParameter("u_id");
       String password=request.getParameter("password");
       try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","yashu","yashu1999");
            Statement st=con.createStatement();
            rs=st.executeQuery( "Select * from register where u_id = '"+u_id+"' "+ "and "+"password = '"+password+"' ");
           
            
            //int n=st.executeUpdate();
            
            
               if(rs!=null && rs.next()){
                   response.sendRedirect("option1.jsp");
               }
               else{
                   out.println("wrong username/password");
               }
         con.commit();
        
             
       }catch(Exception e)
       {
           out.println(e);
       }
       %>
       
    </body>
</html>
