<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="css/registerStyle.css"/>
    <link rel="stylesheet" href="css/animate.min.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="css/style1.css"/>
    
    <title>Employee Management System</title>
    <meta charset="utf-8">
    
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
     <script src="Validation.js"></script>
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
                        <p><i class="fa fa-phone"></i><span> Phone</span>+94 77 530 70 47</p>
                    </div>
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <p><i class="fa fa-envelope-o"></i><span> Email</span><a href="mailto:navod80@gmail.com">navod80@gmail.com</a></p>
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
          <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon icon-bar"></span>
            <span class="icon icon-bar"></span>
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
						<td><input type="text" class="empID" name="empID"></td>
					</tr>
					<tr>
						<td>Enter OT Hours :</td>
						<td><input type="text" class="otHrs" name="otHrs"></td>
					</tr>

					<tr>
						<td>Enter OT Rate :</td>
						<td><input type="text" class="otRate" name="otRate"></td>
					</tr>

					<tr>
						<td>Bonus :</td>
						<td><input type="text" class="bonus" name="Bonus"></td>
					</tr>

					<tr>
						<td>Deductions :</td>
						<td><input type="text" class="ded" name="ded"></td>
					</tr>
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