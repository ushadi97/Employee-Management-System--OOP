<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

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
					<li><a href="#">HOME</a></li>
					<li><a href="#">PROFILE</a></li>
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
					Employee<span> Leave FORM</span>
				</h1>
				<br>


				<!-- -Set up a link to delete Employee Leave -->
				<c:url var="deleteLink" value="empLeave">
					<c:param name="command" value="DELETE" />
					<c:param name="eName" value=${param.eName} />
				</c:url>


				<div class="top-row">
					<div class="field-wrap">
						<h3>
							<B><span>Employee Name : ${param.eName}</span></B>
						</h3>
						<br>
					</div>

					<div class="top-row">
						<div class="field-wrap">
							<h3>
								<B><span>Department : ${param.dName}</span></B>
							</h3>
							<br>
						</div>

						<div class="top-row">
							<div class="field-wrap">
								<h3>
									<B><span>Supervisor Name : ${param.sName}</span></B>
								</h3>
								</br>
							</div>

							<div class="top-row">
								<div class="field-wrap">
									<h3>
										<B><span>Date : ${param.addeddate}</span></B>
									</h3>
									<br>
								</div>

								<div class="top-row">
									<div class="field-wrap">
										<h3>
											<B><span>Reason for Leave : ${param.ReasonLeave}</span></B>
										</h3>
										<br>
									</div>

									<div class="top-row">
										<div class="field-wrap">
											<h3>
												<B><span>Leave Duration : ${param.leaveDu}</span></B>
											</h3>
											<br> <a href="updateLeaveServlet">Update Leave Form</a>
											<br> <a href="deleteLeave"> Delete Leave Form</a>

										</div>
									</div>
								</div>
							</div>



							<!-- start copyright -->
							<footer id="copyright">
								<div class="container">
									<div class="row">
										<div class="col-md-12 text-center">
											<p class="wow bounceIn" data-wow-offset="50"
												data-wow-delay="0.3s">Employee Management System &copy;
												Copyright 2018.</p>
										</div>
									</div>
								</div>
							</footer>
</body>
</html>
