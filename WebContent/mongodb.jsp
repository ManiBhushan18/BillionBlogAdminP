<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mongodb.MongoClient"%>
    
    <%@ page import="com.mongodb.client.MongoDatabase"%>
    <%@ page import="com.mongodb.client.MongoCollection"%>
    <%@ page import="com.mongodb.client.MongoCursor"%>
    <%@ page import="org.bson.Document"%>
    <%@ page import="java.util.List"%>
     <%@ page import="java.util.ArrayList"%>
     <%@ page import="com.mongodb.BasicDBObject"%>
     
     
     <%@ page import="java.util.Vector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Brand</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
 
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <style>
    .datepicker{
     
    }
  </style>
 
  <script>
  $(function() {
    $( ".datepicker" ).datepicker();
  });
  </script>
<center>
<h2>
<font color="blue">
INFLUENCER DETAILS
</font>
</h2>
</center>
</head>
<body bgcolor="#E6E6FA">
<p> From Date:<input type="text" class="datepicker" /> End Date:<input type="text" class="datepicker" /> </p>
<center>
<br><br><br>
<%
MongoClient mongoClient = new MongoClient("localhost", 27017);
MongoDatabase database = mongoClient.getDatabase("bb");

MongoCollection<Document> col = database.getCollection("users");





MongoCursor<Document> cur = col.find().iterator();

try  {
	
    
%>
<table cellpadding="7" cellspacing="1.5" border="7" bgcolor="">
      <tr>
      <td>FullName</td>
       
      
      
      
      <td>UserType</td>
        
        
   
         <td>Email</td> 
         
        <td>Phone</td>
        
    
        
        <td>CreateAt</td>
        <td>Profile</td>
        
        
          
            
         
      </tr>
      
      <%
      while (cur.hasNext()) {
	      
      	  Document doc = cur.next();
            
            List list = new ArrayList(doc.values());
      
      
      %>
      
      
       <tr>
       <td><%=list.get(6)%></td>
      
       <td><%=list.get(3)%></td>
       <td><%=list.get(4)%></td>
       <td><%=list.get(7)%></td>
       
	   <td><%=list.get(2)%></td>
	   <td><%=list.get(8)%></td>
	     
	 
	 </td>
	 
	 
	 </tr>
	<%}
      System.out.println("Data shown on page successfully........");
      
      }
catch (Exception e) {
    e.printStackTrace();
}
	
	
	%>
      </table>
      </center>
</body>
</html>
