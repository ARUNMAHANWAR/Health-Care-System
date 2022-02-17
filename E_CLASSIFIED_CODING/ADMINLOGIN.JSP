
<%@ include file="makecon.jsp" %>
<%!String user;%>

<%!                      ResultSet rs = null;

			 String pass = null; 
%>

        	
<%		
user=request.getParameter("username");
pass = request.getParameter("password");
%>
<%
try
{
rs = st.executeQuery("select *  from adminclassified where  username='"+user+"'and  password='"+pass+"'"); 
if(rs.next())
 {  	%>

<frameset rows="23%,*">
<frame src="title.html"  scrolling=no  bordercolor=#6480ed  >
<frameset cols="25%,*">
<frame src="aleft.html" bordercolor=#6480ed scrolling=no>
<frame src="aright.jsp" name="right" bordercolor=#6480ed  scrolling=auto>
</frameset>
</frameset>
			  
<%	
}
    else
{     
	out.println("Sorry U are Not Administrator pls check it...");
	       con.close();
}

session.setAttribute("str1",user);	
}
catch(Exception e)
{}

%>