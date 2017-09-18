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

</style>
</head>
<script language="Javascript">

function OnButton1()
{
	document.Form1.action = "influ.jsp"
        
	    document.Form1.submit();            
	    return true;
	
	
	
}


</script>
<body>

<center>
<div class="header">
  <h1>Influencer</h1>
</div>
</center>

<div class="row">
<form name="Form1" method="post">
<div class="col-3 menu">
  <ul>
   <INPUT type="button" value="ShowAll" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton1();"><br><br><br>
    <INPUT type="button" value="Facebook" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Twitter" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton3();"><br>
    <INPUT type="button" value="Linkedln" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton4();"><br>
    <INPUT type="button" value="Snapchat" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton5();"><br>
    <INPUT type="button" value="Instagram" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton6();"><br>
    <INPUT type="button" value="Whatsapp" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton7();"><br>
    <INPUT type="button" value="Quora" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton8()"><br>
    <INPUT type="button" value="Press Release" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton9();"><br>
    <INPUT type="button" value="Blogging" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton10();"><br>
    <INPUT type="button" value="Export" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton11();">
   </li>
    
  </ul>
</div>
</form>



<div class="col-9">

  <%
MongoClient mongoClient = new MongoClient("localhost", 27017);
MongoDatabase database = mongoClient.getDatabase("bb");

MongoCollection<Document> col = database.getCollection("Users");

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
  
	
  
  


</body>

</html>
