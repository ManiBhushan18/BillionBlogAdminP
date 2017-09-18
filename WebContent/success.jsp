<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<center>
<font size="60" color="blue" >WELCOME TO ADMINISTRATOR</font>
<meta charset="ISO-8859-1">
<title>ADMIN</title>
</center>
</head>
<script language="Javascript">

function OnButton1()
{
    document.Form1.action = "table.jsp"
        
    document.Form1.submit();            
    return true;
}

function OnButton2()
{
    document.Form1.action = "influencer.jsp"
     
    document.Form1.submit();             
    return true;
}
</script>
<body bgcolor="#E00b00A"">

<center>
<br><br><br><br> <br><br><br><br>
<br><br><br><br>
<form name="Form1" method="post">

<INPUT type="button" value="BRAND" name=button1 style="font-size : 30px; width: 150px; height: 50px; color: teal; " onclick="return OnButton1();">
&nbsp;&nbsp;&nbsp;
<INPUT type="button" value="INFLUENCER" name=button2 style="font-size : 30px; width: 200px; height: 50px; color: teal;" onclick="return OnButton2();">


</form>
</center>

</body>
</html>
