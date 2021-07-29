<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body{
background-image:url("image/background.jpg");
background-size: 1300px 520px;
  background-repeat: no-repeat;
background-attachment: fixed;
}
p { color: #FFFFFF; }
input{color:#FFFFFF;}
label{color:#FFFFFF;}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>feedback</title>
</head>
<body>
<form action="feddbacksuccess.jsp" method="post">
<label for="name">Your Name:</label>
  <input style="color:black;" type="text" id="name" name="name" >

  <p>Please rate your overall experience:</p>
  <input type="radio" id="Excellent" name="exp" value="Excellent">
  <label for="Excellent">Excellent</label><br>
  <input type="radio" id="Average" name="exp" value="Average">
  <label for="Average">Average</label><br>
  <input type="radio" id="Bad" name="exp" value="Bad">
  <label for="Bad">Bad</label>

  <p>Rate The usabilty Of app:</p>
  <input type="radio" id="Excellent" name="use" value="Excellent">
  <label for="Excellent">Excellent</label><br>
  <input type="radio" id="Average" name="use" value="Average">
  <label for="Average">Average</label><br>
  <input type="radio" id="Bad" name="use" value="Bad">
  <label for="Bad">Bad</label>

  <p>Rate The features available in app:</p>
  <input type="radio" id="Excellent" name="fea" value="Excellent">
  <label for="Excellent">Excellent</label><br>
  <input type="radio" id="Average" name="fea" value="Average">
  <label for="Average">Average</label><br>
  <input type="radio" id="Bad" name="fea" value="Bad">
  <label for="Bad">Bad</label>

  <p>Any additional Suggestion/feedback:</p>
  <textarea name="sugg" rows="10" cols="50"></textarea>
  <br><br>
     <input style="color:black;" type="submit" value="Submit" />
  
  
</form>
</body>
</html>