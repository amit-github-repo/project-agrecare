<%--
<%@ page import="java.util.*" %> 
<%
	String name = (String) request.getAttribute("name");
	Integer id = (Integer) request.getAttribute("id");
%>
	<hr>
	Name is : <%=name %>	<br>
	Id is : <%=id %>	<br>
<%
	List<String> list = (ArrayList<String>)request.getAttribute("f");
	for(String s : list) 
		out.println(s+"<br>");
%>


<h1>This is home Example2</h1>
<h2>Url: /home</h2>
<hr>
Name : ${name} <br>
Roll Number : ${roll} <br>
Date & time : ${now} 


<form action="/loginex" method="post">
	E-mail:<input type="text" name="email" /><br />
	Password:<input type="password" name="password" /><br />
	<input type="submit" value="Send" />
</form>
<h1>Welcome your Eamil: ${user.email} </h1>
<h1>Your Password: ${user.password} </h1>



<form action="/loginex" method="post" modelAttribute="haa">
	E-mail:<input type="text" path="email" name="email" /><br />
	Password:<input type="password" path="password" name="password" /><br />
	<input type="submit" value="Send" />
</form>
<h1>Welcome ${head} </h1>
--%>