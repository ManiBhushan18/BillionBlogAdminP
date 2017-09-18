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
<title>Influencer</title>
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
	document.Form1.action = "mongodb.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}

function OnButton2()
{
	document.Form1.action = "fbdata.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}

function OnButton3()
{
	document.Form1.action = "twitterdata.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}

function OnButton4()
{
	document.Form1.action = "Linkdata.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}


function OnButton6()
{
	document.Form1.action = "instadata.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}

function OnButton5()
{
	document.Form1.action = "snapdata.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}

function OnButton7()
{
	document.Form1.action = "wadata.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}

function OnButton8()
{
	document.Form1.action = "quoradata.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}

function OnButton9()
{
	document.Form1.action = "PRdata.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}

function OnButton10()
{
	document.Form1.action = "blogdata.jsp"
        
	    document.Form1.submit();            
	    return true;
    
}

function OnButton12()
{
	document.Form1.action = "profile.jsp"
        
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
<form name="Form1" method="post">
<div class="row">
<div class="col-3 menu">
  <ul>
   <INPUT type="button" value="ShowAll" name=button1 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton1();"><br>
   <INPUT type="button" value="Profile" name=button12 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton12();"><br><br>
    <INPUT type="button" value="Facebook" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();"><br>
    <INPUT type="button" value="Twitter" name=button3 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton3();"><br>
    <INPUT type="button" value="Linkedln" name=button4 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton4();"><br>
    <INPUT type="button" value="Snapchat" name=button5 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton5();"><br>
    <INPUT type="button" value="Instagram" name=button6 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton6();"><br>
    <INPUT type="button" value="Whatsapp" name=button7 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton7();"><br>
    <INPUT type="button" value="Quora" name=button8 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton8()"><br>
    <INPUT type="button" value="Press Release" name=button9 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton9();"><br>
    <INPUT type="button" value="Blogging" name=button10 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton10();"><br>
    <INPUT type="button" value="Export" name=button11 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton11();">
   </li>
    
  </ul>
</div>

</div>
</form>

<div class="col-9">

</div>
  
	
  
  


</body>

</html>
