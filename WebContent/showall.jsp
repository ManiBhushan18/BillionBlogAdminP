<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mongodb.MongoClient"%>
    
    <%@ page import="com.mongodb.client.MongoDatabase"%>
    <%@ page import="com.mongodb.client.MongoCollection"%>
    <%@ page import="com.mongodb.client.MongoCursor"%>
    <%@ page import="org.bson.Document"%>
    <%@ page import="java.util.List"%>
     <%@ page import="java.util.ArrayList"%>
     <%@ page import="com.mongodb.DB"%>
     <%@ page import="com.mongodb.DBCollection"%>
     <%@ page import="com.mongodb.DBCursor"%>
       <%@ page import="com.mongodb.MongoClient"%>
     
     
     <%@ page import="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<body>


</center>




  <%
  MongoClient mongo = new MongoClient("localhost", 27017);
  DB db = mongo.getDB("bb");
  DBCollection collection = db.getCollection("users");
  
  
  
	
    



      
      
          DBCursor cursor = collection.find();
          while(cursor.hasNext()) {
              System.out.println(cursor.next());
          }
      
      
      %>
      
       <tr>
	   <td><%=cursor %></td>
	   
	 </tr>
	
	 
	 
	 
	<%
	
	
	
	%>
	 </table>
  
	
  
  


</body>

</html>
