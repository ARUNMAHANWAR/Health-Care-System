<%@page import="java.sql.*" %>
<html>
<body>
<form action="coursedet.jsp" method=post>

<%
String univerid=(String)session.getAttribute("uniid");
System.out.println("Session id"+univerid);
try{
String selectedname=request.getParameter("collageinfo");
System.out.println("Selected name"+selectedname);
String uniid="";
String collageid="";
PreparedStatement pst=null;
ResultSet rs1=null;

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.191:1521:orcl","scott","tiger");
%>

<P style="FONT-SIZE: medium">Select The College:- 
<SELECT id=select2 style="LEFT: 182px; WIDTH: 161px; TOP: 136px" name ="collagename">
<%

if(selectedname.equals("Collage Addmission"))
{
pst=con.prepareStatement("select collageid,collagename  from collage_det where univid='"+univerid+"'");
rs1=pst.executeQuery();
while(rs1.next())
{
collageid=rs1.getString(1);
session.setAttribute("cid",new String(collageid));
System.out.println("Collage Id"+collageid);
System.out.println("CollageName"+rs1.getString(2));
%>
 <OPTION selected><%=rs1.getString(2)%></OPTION>
<%
}

}
else
{
 response.sendRedirect("results.html");
}
rs1.close();
pst.close();
con.close();
}catch(Exception e){System.out.println("Exception ..."+e);}
%>

</select>

  <p align="right"><input type="submit" name="Submit" value="Submit" tabindex="9">
          
</form>
</body>
</html>