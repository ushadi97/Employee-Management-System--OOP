<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Employee Leave Form</title>

<link rel="stylesheet" type="text/css" href="css/registerStyle.css" />
<link rel="stylesheet" href="css/animate.min.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/style1.css" />

<script src="js/Validation.js"></script>
<script src="js/Calculation.js"></script>

</head>
<body>
	<header>
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-4 col-xs-12">
				<p>
					<i class="fa fa-phone"></i><span> Phone</span>+94 77 530 70 47
				</p>
			</div>
			<div class="col-md-3 col-sm-4 col-xs-12">
				<p>
					<i class="fa fa-envelope-o"></i><span> Email</span><a
						href="mailto:navod80@gmail.com">navod80@gmail.com</a>
				</p>
			</div>

			<div class="col-md-5 col-sm-4 col-xs-12">
				<ul class="social-icon">
					<li><span>Meet us on</span></li>
					<li><a href="#" class="fa fa-facebook"></a></li>
					<li><a href="#" class="fa fa-twitter"></a></li>
					<li><a href="#" class="fa fa-instagram"></a></li>
					<li><a href="#" class="fa fa-youtube"></a></li>
				</ul>
			</div>
		</div>
	</div>
	</header>

	<nav class="navbar navbar-default templatemo-nav" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand">Employee Management System</a>
		</div>

		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Home.html">HOME</a></li>
				<li><a href="Profile.html">PROFILE</a></li>
			</ul>
		</div>
	</div>
	</nav>
	
	<div class="content">
		<h1 align="center">Employee Leave Request Form</h1>
		<form method="post" action="empLeave" onsubmit="">
			<table align="center">
				<tr>
					<td align="left">Employee Name :</td>
					<td align="left"><input id="eName" type="text" name="eName" /></td>
				</tr>

				<tr>
					<td align="left">Department :</td>
					<td align="left"><input id="dName" type="text" name="dName" /></td>
				</tr>

				<tr>
					<td align="left">Supervisor Name :</td>
					<td align="left"><input id="sName" type="text" name="sName" />
					</td>
				</tr>

				<tr>
					<td align="left">Date :</td>
					<td align="left"><input type="date" name="addeddate">
				</tr>

			</table>
		
	
	<br>
	

	<h3>
		<div align="center">
		<p style="border: 0.5px; border-style: solid; margin: auto; width: 50%; text-align: center; padding: 0.5em">
			Reason for Leave.<br>
		</p>
	</h3>


		<div align="center">
		
   <textarea name="ReasonLeave" cols="50" rows="5" style="border:2px solid #28a7e9; padding: 1.0em ; width: 50%">

	</textarea>
<br />

</div>
		<br>
	
	<h3>
		<p style="border: 0.5px; border-style: solid; margin: auto; width: 50%; text-align: center; padding: 0.5em">
			Leave Duration.<br>
		</p>
	</h3>

	
		<div align="center">
			<label for="date"></label>
			 <input type="text" id="date" name="leaveDu" style="border:1px solid #28a7e9; padding: 1.0em ; width: 50%">
			 
		
		<br><br>
		<input type="submit" value="Submit" class="bttn"
					 style="margin-left:85px; width:20%">
		</div>
	</form>
	</div>	
</body>
</html>