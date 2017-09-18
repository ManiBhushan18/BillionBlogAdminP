<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mongodb.MongoClient"%>
    
    <%@ page import="com.mongodb.client.MongoDatabase"%>
    <%@ page import="com.mongodb.client.MongoCollection"%>
    <%@ page import="com.mongodb.client.MongoCursor"%>
    <%@ page import="org.bson.Document"%>
    <%@ page import="java.util.List"%>
     <%@ page import="java.util.ArrayList"%>
     
     
     <%@ page import="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
    box-sizing: border-box;
}
.row::after {
    content: "";
    clear: both;
    display: table;
}
[class*="col-"] {
    float: left;
    padding: 15px;
}
.col-1 {width: 8.33%;}
.col-2 {width: 16.66%;}
.col-3 {width: 25%;}
.col-4 {width: 33.33%;}
.col-5 {width: 41.66%;}
.col-6 {width: 50%;}
.col-7 {width: 58.33%;}
.col-8 {width: 66.66%;}
.col-9 {width: 75%;}
.col-10 {width: 83.33%;}
.col-11 {width: 91.66%;}
.col-12 {width: 100%;}
html {
    font-family: "Lucida Sans", sans-serif;
}
.header {
    background-color: #9933cc;
    color: #ffffff;
    padding: 15px;
}
.menu ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
.menu li {
    padding: 8px;
    margin-bottom: 7px;
    background-color: #33b5e5;
    color: #ffffff;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}
.menu li:hover {
    background-color: #0099cc;
}
</style>
</head>
<body>

<center>
<div class="header">
  <h1>Influencer</h1>
</div>
</center>

<div class="row">

<div class="col-3 menu">
  <ul>
    <li><INPUT type="button" value="Facebook" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Twitter" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Linkedln" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Snapchat" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Instagram" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Whatsapp" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Quora" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Press Release" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Blogging" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
   </li>
    
  </ul>
</div>

<div class="col-9">
  <%
MongoClient mongoClient = new MongoClient("localhost", 27017);
MongoDatabase database = mongoClient.getDatabase("test");

MongoCollection<Document> col = database.getCollection("Influencer");

MongoCursor<Document> cur = col.find().iterator();
try  {
	
    
%>

<table cellpadding="7" cellspacing="1.5" border="7" bgcolor="">
      <tr>
      
        <td>PID</td>
        <td>Earned Influencer </td>
        <td>Paid Influencer</td>
         <td>Location </td> 
         
      </tr>
      <%
      while (cur.hasNext()) {
	      
      	  Document doc = cur.next();
            
            List list = new ArrayList(doc.values());
      
      
      %>
      
       <tr>
	   <td><%=list.get(1) %></td>
	   <td><%=list.get(2)%></td>
	   <td><%=list.get(3)%></td>
	 <td><%=list.get(4)%></td>
	 </tr>
	
	 
	 
	 
	<%}
      System.out.println("Data shown on page successfully........");
      
      }
catch (Exception e) {
    e.printStackTrace();
}
	
	
	%>
	 </table>
  
  
  
  
</div>

</div>

</body>
</html>
