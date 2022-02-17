<%@page import="java.sql.*" %>
<html>
<body>

<form action="collagead.jsp" method=post>

<%

try{

String uniname=request.getParameter("uniname");
System.out.println("University name"+uniname);
String uniid="";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.191:1521:orcl","scott","tiger");
PreparedStatement pst=con.prepareStatement("select univid  from univers_det where univname='"+uniname+"'");
ResultSet rs=pst.executeQuery();
if (rs.next())
 {
uniid=rs.getString(1);
session.setAttribute("uniid",new String(uniid));
System.out.println("Id of University"+uniid);

%>

<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 38px; LEFT: 232px; POSITION: absolute; TOP: 120px; WIDTH: 192px; Z-INDEX: 100" 
width="75%">
  
  <TR>
    <TD><FONT color=firebrick><STRONG>Select 
      Option&nbsp;&nbsp;&nbsp;&nbsp;</STRONG></FONT></TD>
    <TD>
<SELECT id=select1 name="collageinfo" style="HEIGHT: 22px; WIDTH: 68px"> 
        <OPTION selected>Collage Addmission</OPTION>
        <OPTION selected>Results</OPTION>
        
</SELECT></TD></TR></TABLE><INPUT id=submit1 name=submit1 style="LEFT: 287px; POSITION: absolute; TOP: 186px; Z-INDEX: 101" type=submit value=Submit>

<%
}
else
 {
 out.println("<h1> Invalid University Name</h1>");
}
}catch(Exception e){System.out.println("Exception ..."+e);}
%>
</form>
</body>
</html>