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
			<a href="#" class="navbar-brand">EMPLOYEE LOGIN</a>
		</div>

		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Home.html">HOME</a></li>
				<li><a href="Profile.html">PROFILE</a></li>
			</ul>
		</div>
	</div>
	</nav>

		<form name="form1" onsubmit="return form1Validate()">
            <table cellspacing="10px">
                <tr>
					<td><lable for="mem_id">1.Member ID :</lable></td>
                    <td><input type="text" placeholder="   Member ID" name="m_id" value="" class="area" size="35px"> </td>
                </tr>
                <tr>
					<td><lable for="mem_name">2.Member Name :</lable></td>
                    <td><input type="text" placeholder="   Member Name" name="m_name" value="" class="area" size="35px"> </td>
                </tr>
                <tr>
					<td><lable for="mem_type">3.Member Type :</lable></td>
					<td>
						<select aria-label="Select Member Type" class="valid"id="gh-cat" name="_sacat">
						<option value="0">Select</option>
						<option value="2">Student</option>
						<option value="5">Staff</option>
						<option value="3">Lecture</option>
						</select>
					
		
					</td>
                </tr>
                <tr>
					<td><lable for="book_name">4.Book Name :</lable></td>
					<td><input type="text" placeholder="   Book Name" id="cpd" value="" class="area" size="35px"> </td>
                </tr>
				<tr>
					<td><lable for="b_serial_n">5.Book Serial Number :</lable></td>
					<td><input type="text" placeholder="   Book Serial Number" id="cpd" value="" class="area" size="35px"> </td>
                </tr>
				<tr>
					<td><label for="due_date">6.Due Date  :</label></td>
					<td><input id="calFromDate" type="date" name="leaveList[calFromDate]" class="calendar hasDatepicker">
					<script type="text/javascript">

    var datepickerDateFormat = 'yy-mm-dd';
    var displayDateFormat = datepickerDateFormat.replace('yy', 'yyyy');

    $(document).ready(function(){
        
        var dateFieldValue = $.trim($("#calFromDate").val());
        if (dateFieldValue == '') {
            $("#calFromDate").val(displayDateFormat);
        }

        daymarker.bindElement("#calFromDate",
        {
            showOn: "both",
            dateFormat: datepickerDateFormat,
            buttonImage: "/webres_5bd6ae3dc0fea0.31921995/themes/default/images/calendar.png",
            buttonText:"",
            buttonImageOnly: true,
            changeMonth: true,
            changeYear: true,
            yearRange: "-100:+100",
            firstDay: 1,
            onClose: function() {
                $("#calFromDate").trigger('blur');
            }            
        });
        
        //$("img.ui-datepicker-trigger").addClass("editable");
        
        $("#calFromDate").click(function(){
            daymarker.show("#calFromDate");
            if ($(this).val() == displayDateFormat) {
                $(this).val('');
            }
        });
    
    });

</script></td>
				</tr>
				
				<tr>
					<td><label for="return_date">7.Return Date  :</label></td>
					<td><input id="calFromDate" type="date" name="leaveList[calFromDate]" class="calendar hasDatepicker">
					<script type="text/javascript">

    var datepickerDateFormat = 'yy-mm-dd';
    var displayDateFormat = datepickerDateFormat.replace('yy', 'yyyy');

    $(document).ready(function(){
        
        var dateFieldValue = $.trim($("#calFromDate").val());
        if (dateFieldValue == '') {
            $("#calFromDate").val(displayDateFormat);
        }

        daymarker.bindElement("#calFromDate",
        {
            showOn: "both",
            dateFormat: datepickerDateFormat,
            buttonImage: "/webres_5bd6ae3dc0fea0.31921995/themes/default/images/calendar.png",
            buttonText:"",
            buttonImageOnly: true,
            changeMonth: true,
            changeYear: true,
            yearRange: "-100:+100",
            firstDay: 1,
            onClose: function() {
                $("#calFromDate").trigger('blur');
            }            
        });
        
        //$("img.ui-datepicker-trigger").addClass("editable");
        
        $("#calFromDate").click(function(){
            daymarker.show("#calFromDate");
            if ($(this).val() == displayDateFormat) {
                $(this).val('');
            }
        });
    
    });

</script></td>
				</tr>
				
				<tr>
					<td><lable for="ADD"></lable></td>
                    <td><input type="submit" name="add" value="ADD" class="button" size="35px"></td>
                </tr>
                <tr>
					<td><lable for="Update"></lable></td>
                    <td><input type="submit" name="update" value="UPDATE" class="button" size="35px"></td>
                </tr>
                <tr>
					<td><lable for="view"></lable></td>
                    <td><input type="submit" name="view" value="VIEW" class="button" size="35px"></td>
                </tr>
				<tr>
					<td><lable for="Delete"></lable></td>
                    <td><input type="submit" name="view" value="DELETE" class="button" size="35px"></td>
                </tr>
                
                
            </table>
        </form>
				
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
        <!-- end copyright -->
</body>
</html>
				
				