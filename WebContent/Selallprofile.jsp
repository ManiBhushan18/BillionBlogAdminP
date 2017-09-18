<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mongodb.MongoClient"%>
    
    <%@ page import="com.mongodb.client.MongoDatabase"%>
    <%@ page import="com.mongodb.client.MongoCollection"%>
    <%@ page import="com.mongodb.client.MongoCursor"%>
    <%@ page import="org.bson.Document"%>
    <%@ page import="java.util.List"%>
     <%@ page import="java.util.ArrayList"%>
     <%@ page import="com.mongodb.BasicDBObject"%>
     <%@ page import="com.mongodb.DBCursor"%>
     <%@ page import="java.util.Vector"%>
     <%@ page import="com.mongodb.DB"%>
     <%@ page import="com.mongodb.DBObject"%>
     <%@ page import="com.mongodb.DBCollection"%>
     
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
  <style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;s
}
th, td {
    padding: 5px;
    text-align: left;    
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
      <th>FullName</th>
      <th>UserType</th>
         <th>Email</th> 
        <th>Phone</th>
        
    
        
        <th>CreateAt</th>
       <th colspan="6">Profile  </th> 
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
	   
	     
	 
	 </td>
	 
	 
	 </tr>
	<%
      }
	
      System.out.println("Data shown on page successfully........");
      
      }
catch (Exception e) {
    e.printStackTrace();
}
MongoClient mongo = new MongoClient("localhost", 27017);
DB db = mongo.getDB("bb");
DBCollection collection = db.getCollection("users");
DBCursor cur12 = collection.find();
for (DBObject doc : cur12) {
    
    DBObject report = (BasicDBObject) doc.get("profile");
   
%>
<tr>
      
      
       <td><%=report.get("firstName")%></td>
       <td><%=report.get("lastName")%></td>
       <td><%=report.get("gender")%></td>
       
	   <td><%=report.get("professional_designation")%></td>
	   
	      <td><%=report.get("picture")%></td>
	      
	      <td><%=report.get("professional_cc")%></td>
	      
	      
	       <td><%=report.get("website")%></td>
	       <%
      }
	 
	 %>
	 </tr>
	
      </table>
      </center>
</body>
</html>
      
