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
<center>
<h2>
<font color="blue">
Brand Details
</font>
</h2>
</center>
</head>
<body bgcolor="#E6E6FA">
<center>
<br><br><br>
<%
MongoClient mongoClient = new MongoClient("localhost", 27017);
MongoDatabase database = mongoClient.getDatabase("mani");

MongoCollection<Document> col = database.getCollection("Empdetails");

BasicDBObject q = new BasicDBObject();
q.append("$gte", 25);
q.append("$lte", 30);
BasicDBObject query = new BasicDBObject("age", q); 



MongoCursor<Document> cur = col.find(query).iterator();

try  {
	
    
%>
<table cellpadding="7" cellspacing="1.5" border="7" bgcolor="">
      <tr>
      
        <td>NAME</td>
        <td>AGE</td>
        <td>DESIGNATION</td>
         <td>LOCATION</td> 
          
            
         
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
