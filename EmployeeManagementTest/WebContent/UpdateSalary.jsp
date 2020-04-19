<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculate Salary</title>

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
			<a href="#" class="navbar-brand">PROFILE</a>
		</div>

		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Home.html">HOME</a></li>
				<li><a href="Profile.html">PROFILE</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div id="topic">
		<h1 class="topic">CALCULATE NET SALARY</h1>
		<br><br>
	</div>
	<div class="col-lg-offset-4">
		<div id="content">
				<form action="Empsalary" method = "post">
				<table class="table1">
					<tr>
						<td>Enter Employee
						 ID :</td>
						<td><input type="text" class="empID" name="empID"  value= ${ SalaryObj.getempID()}></td>
					</tr>
					<tr>
						<td>Enter OT Hours :</td>
						<td><input type="text" class="otHrs" name="otHrs"  value= ${ SalaryObj.getotHrs()}></td>
					</tr>

					<tr>
						<td>Enter OT Rate :</td>
						<td><input type="text" class="otRate" name="otRate"  value= ${ SalaryObj.getotRate()}></td>
					</tr>

					<tr>
						<td>Bonus :</td>
						<td><input type="text" class="bonus" name="Bonus"  value= ${ SalaryObj.getBonus()}></td>
					</tr>

					<tr>
						<td>Deductions :</td>
						<td><input type="text" class="ded" name="ded"  value= ${ SalaryObj.getded()}></td>
					</tr>
					<tr>
					<td>Deductions :</td>
						<td><input type="text" class="ded" name="ded"  value= ${ SalaryObj.getded()}></td>
					</tr>>	
							
				</table>
				<br><br>
				
					<input type="submit" value="Calculate Salary" class="bttn"
					 style="margin-left:85px;width:20%">
				</form>
			</form>
		</div>
	</div>
	

</body>
</html>