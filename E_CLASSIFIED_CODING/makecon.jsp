<%@ page import="java.sql.*" %>
<%! 
           Connection con = null;
		    Statement st = null;
%>
<%
            Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.191:1521:orcl","scott","tiger");
	st=con.createStatement();
%>