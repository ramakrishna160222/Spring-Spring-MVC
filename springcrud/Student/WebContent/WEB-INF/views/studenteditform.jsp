<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <html>

<head>
  <title>Update</title>
  <style>
  body{
			background-image: url(bg.jpg);
			background-color: skyblue;
			background-repeat: no-repeat;
			background-size: 1500px 620px;
			text-align: center;
			font-size: 22px;
			color: White;
		}
		h1{
			color: white;
			font-size: 60px;
			font-family: cursive;
		}
		.form1{
			background:rgba(0,0,0,0.6);
			padding: 24px;
			margin-top:0px;
			width: 28%;
			position: absolute;
			left:34%;
			border-radius: 15px;
		}
		input{
			width: 330px;
			height: 30px;
			border-radius: 7px;
			text-align: center;
		}
		input[type="text"]{
			font-size: 18px;
		}
		input[type="email"]{
			font-size: 18px;
		}
		input[type="submit"]{
			font-size: 20px;
			height: 40px;
			background-color: #00FF7F;

		}

		input[type="submit"]:hover{
			color:white;	
			background-color: blue;	
		}
		select{
			size:400px;
			height: 30px;
			width: 252px;
			border-radius: 20px;
			text-align: center;
			font-size: 18px;
		}
		input[type="radio"]
		{
			font-size: 14px;
			size: 10px;
			height:12px;
		}
  </style>
</head>
<body>
	<div class="main">
		<h1>Update</h1>
		<div class="form1">
		<!--	Registration Form<br>!-->
			<form:form  method="post" action="/Student/editsave">
				<form:hidden path="sid" />		
				
				Name:<form:input path="sname" id="req3" name="sname" /><br><br>
				Address:<form:input path="address" id="req3" name="address" /><br><br>
				Fee:<form:input path="fee" id="req3" name="fee" /><br><br>
				<input type="submit" value="Update" >

			</form:form>
		</div>	
	</div>


</body>
</html>

       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       