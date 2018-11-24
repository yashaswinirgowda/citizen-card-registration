<%-- 
    Document   : index
    Created on : 14 Nov, 2018, 12:45:54 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>

<html>
    <body>
        <%
            try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","priyanka","priyanka");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from semsec");
            while(rs.next())
            {
                out.println(rs.getString(1)+" "+rs.getString(2));
         
        
            }
out.println(" ");

            }
            catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>