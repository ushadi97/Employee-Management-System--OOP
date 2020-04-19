<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/registerStyle.css" />
<link rel="stylesheet" href="css/animate.min.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/style1.css" />

<title>Employee Management System</title>
<meta charset="utf-8">

<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">



<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/typed.js"></script>
<script src="js/custom.js"></script>

</head>
<body class="top">
	<!-- start preloader -->
	<div class="preloader">
		<div class="sk-spinner sk-spinner-wave">
			<div class="sk-rect1"></div>
			<div class="sk-rect2"></div>
			<div class="sk-rect3"></div>
			<div class="sk-rect4"></div>
			<div class="sk-rect5"></div>
		</div>
	</div>
	<!-- end preloader -->


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


	<!-- end header -->

	<!-- start navigation -->
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
	<!-- end navigation -->



	<!-- register forum-->
	<div class="form">
		<div class="tab-content">
			<div id="signup">
				<h1>
					Employee<span> Loan FORM</span>
				</h1>


				<form action="loan" method="post">

					<div class="top-row">
						<div class="field-wrap">
							<h5>Employee Name</h5>
							<input type="text" name="empName" value=${ LoanObj.getempName()} />
						</div>


						<div class="field-wrap">
							<h5>Employee Department</h5>
							<input type="text" name="empDept" value=${ LoanObj.getempDept()} />
						</div>

						<div class="field-wrap">
							<h5>
								Loan Amount
								</h4>
								<input type="text" name="loanAmount"
									value=${ LoanObj.getloanAmount()} />
						</div>
					</div>


					<button class="button button-block" onclick="window.location.href='newFile.jsp'">Update Loan</button>

					<hr>
			</div>






			</form>
			<div class="login">

				<button class="button button-block"
					onclick="window.location.href='Home.html'">BACK TO
					HomePage</button>



			</div>
		</div>

	</div>
	<!-- tab-content -->

	</div>
	<!-- /form -->



	<!-- start copyright -->
	<footer id="copyright">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<p class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">
					Employee Management System &copy; Copyright 2018.</p>
			</div>
		</div>
	</div>
	</footer>


</body>
</html>