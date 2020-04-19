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

    
    <script 
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/typed.js"></script>
    <script src="js/custom.js"></script>
	<script src="js/service.js"></script>

</head>
<body class="top">
    
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
      
      </div>
    </nav>
    <!-- end navigation -->
    
	<div id="topic">
		<h1 class="topic">CALCULATE NET SALARY</h1>
		<br><br>
	
		 <body>

	<div>
	<br>
		User ID :
		<input type="text" id="user_id">
		Name:
		<input type="text" id="nameT">
		Email:
		<input type="email" id="emailT">
		Password: 
		<input type="password" id="passwordT">
		Address:
		<input type="text" id="addressT">
		Telephone:
		<input type="text" id="telT">
		Username:
		<input type="text" id="unameT">
		
		<button id="btnsave" onclick="addUser()">Add User</button>
		<button  id="btnUpdate" onclick="updateUser()">Update User</button>
	</div>
	
		<div>
		Email : <input type="email" id="email" />
		<button onClick="getUserbyEmail()">View User/s</button>
		<div id="id"></div><br>
		<div id="name"></div><br>
		<div id="address"></div><br>
		<div id="tel"></div><br>
		<div id="email"></div><br>
		<div id="uname"></div><br>
	</div>
	
	<div>
		User ID :
		<input type="text" id="user_idDel"/>
		
		<button id="btnDel" onClick="deleteUser()">Delete User</button>
	</div>
	
	<div id="result"></div>
</body>
                 
		
	</div>
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
