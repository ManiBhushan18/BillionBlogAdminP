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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile</title>

 
<center>
<h2>
<font color="blue">
PROFILE DETAILS
</font>
</h2>
</center>
</head>
<body bgcolor="#E6E6FA">

<center>
<br><br><br>
<%
MongoClient mongo = new MongoClient("localhost", 27017);
DB db = mongo.getDB("bb");
DBCollection collection = db.getCollection("users");







	
    
%>
<table cellpadding="7" cellspacing="1.5" border="7" bgcolor="">
      <tr>
      <td>First Name</td>
       
      
      
      
      <td>Last Name</td>
        
        
   
         <td>Gender</td> 
         
        <td>ProffesionalDesignation</td>
        
    
        
        <td>Picture</td>
        
        <td>ProfessionalCurrentCompany</td>
        <td>Website</td>
        
        
          
            
         
      </tr>
      
      <%
      DBCursor cur = collection.find();
      for (DBObject doc : cur) {
          
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
	       
	       
	       
	       
	 
	 </td>
	 <%
      }
	 
	 %>
	 
	 </tr>
	
      </table>
      </center>
</body>
</html>
