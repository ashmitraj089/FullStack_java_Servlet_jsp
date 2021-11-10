<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Registeration | BCG</title>
<link rel="icon"
	href="https://180dc.org/wp-content/uploads/2014/04/bcg-logo.png"
	type="image/x-icon">
<style>
<%@ include file="register.css"%>
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
	<script type="text/javascript" >
	function check(){
	    var fname = document.getElementById("FirstName").value;
	    var lname = document.getElementById("LastName").value;
	    var uname = document.getElementById("UserName").value;
	    var passwd = document.getElementById("Password").value;
	    if(uname && fname && lname && passwd){
	    	document.getElementById("mybtn").disabled=false;
	    }
	}
</script>
</head>
<body>
	<section class="full_body">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light navbar-fixed-top ">
				<div class="container">
					<a class="navbar-brand" href="#"><img
						src="https://180dc.org/wp-content/uploads/2014/04/bcg-logo.png"
						width=200px /></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
	
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="Login"><strong class="side_button">Login</strong>
									<span class="sr-only">(current)</span>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>


		<main class="testimonial py-5" id="testimonial">
			<div class="container main_body">
				<div class="row">
					<div class="side col-md-4 py-5 text-center ">
						<div class=" ">
							<div class="card-body">
								<img
									src="data:image/png;base64,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"
									class="brand_logo" alt="Logo">
	
								<h2 class="py-3">Registration</h2>
								<div class="mt-4">
									<div class="d-flex justify-content-center links">
										Already have an account? <a href="login.jsp" class="ml-2">Login</a>
									</div>
								</div>
	
							</div>
						</div>
					</div>
					<div class=" side2 col-md-8 py-5 border">
						<h1 class=" display-4 heading pb-4 text-center"><strong>Enter Your Details</strong></h1>
						<form action="SignUp" method="post">
							<div class="form-row">
								<div class="input-group col-md-6 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-user"></i></span>
									</div>
									<input id="FirstName" onchange="check()" name="FirstName" placeholder="First Name"
										class="form-control" minlength=3 maxlength=25 type="text"
										required pattern="^[a-zA-Z]+$">
								</div>
								<div class="input-group col-md-6 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-user"></i></span>
									</div>
									<input type="text" class="form-control" onchange="check()" id="LastName"
										placeholder="last Name" minlength=3 maxlength=25 type="text"
										required pattern="^[a-zA-Z]+$">
								</div>
							</div>
							<div class="form-row">
								<div class="input-group col-md-6 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i
											class="fas fa-envelope"></i></span>
									</div>
									<input id="Email" name="Email" placeholder="Email"
										class="form-control" type="email"
										pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
								</div>
								<div class="input-group col-md-6 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-phone"></i></span>
									</div>
									<input type="text" class="form-control" id="Phone"
										placeholder="Phone" pattern="^[0-9]{10}$">
								</div>
							</div>
							<div class="form-row">
								<div class="input-group col-md-6 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i
											class="fas fa-user-tie"></i></span>
									</div>
									<input id="UserName" name="UserName" onchange="check()" placeholder="UserName"
										class="form-control" type="text" required
										pattern="[a-zA-Z0-9]+">
								</div>
								<div class="input-group col-md-6 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-key"></i></span>
									</div>
									<input type="password" class="form-control" onchange="check()" id="Password" name="Password"
										placeholder="Password" required
										pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$)([^@#$%^&+=]).{6,12}$">
								</div>
							</div>
							<div class="form-row mb-2">
								<div class="input-group col-md-12 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-image"></i></span>
									</div>
									<input class="form-control form-control-lg" id="formFileLg"
										type="file" /><br>
								</div>
								<div class="small text-muted mt-2">Upload your Image. Max
									file size 50 MB</div>
							</div>
	
							<div class="form-row mb-0">
								<div class="form-group">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input"
											id="customControlInline"> <label
											class="custom-control-label" for="customControlInline">By
											clicking Submit, you agree to our <a href="#">Terms &
												Conditions</a>.
										</label>
									</div>
								</div>
							</div>
	
							<div class="form-row">
								<input type="submit" id="mybtn" value="Sign Up" class="btn login_btn" disabled />
							</div>
						</form>
					</div>
				</div>
			</div>
		</main>
		<footer>
			<div>
				<i class="far fa-copyright"></i> <strong>Team 5</strong>
			</div>
		</footer>
		
	
	</section>















	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>