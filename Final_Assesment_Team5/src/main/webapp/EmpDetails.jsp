<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>User | BCG</title>
<link rel="icon"
	href="https://180dc.org/wp-content/uploads/2014/04/bcg-logo.png"
	type="image/x-icon">
<style>
<%@ include file="EmpDetails.css"%>
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
						<ul class="nav nav-tabs ml-auto">
							  <li class="nav-item">
							    <a class="nav-link active" href="EmpDetails.jsp"><strong>Personal Details</strong></a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" href="EducationalDetails.jsp"><strong>Educational Details</strong></a>
							  </li>
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
									src="http://www.minnusfoodproducts.com/images/dummy.png" class="brand_logo" alt="Logo">
	
								<h2 class="py-3">Personal Details</h2>
	
							</div>
						</div>
					</div>
					<div class=" side2 col-md-8 py-5 border">
						<h1 class=" display-5 heading pb-4 text-center"><strong>Enter Your Personal Details</strong></h1>
						<form action="EmpDetails" method="post">
							<div class="form-row">
								<div class="input-group col-md-6 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-user"></i></span>
									</div>
									<input id="FirstName" name="FirstName" placeholder="First Name"
										class="form-control" minlength=3 maxlength=25 type="text"
										required pattern="^[a-zA-Z]+$">
								</div>
								<div class="input-group col-md-6 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-user"></i></span>
									</div>
									<input type="text" class="form-control" id="LastName" name="LastName"
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
									<input type="text" class="form-control" id="Phone" name="Phone"
										placeholder="Phone">
								</div>
							</div>
							<div class="form-row">
								<div class="input-group col-md-12 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
									</div>
									<input id="Date" name="Date" placeholder="Joining Date"
										class="form-control" type="text" onfocus="(this.type='date')" required>
								</div>
							</div>
							<div class="form-row mb-2">
								<div class="input-group col-md-12 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-map-marker-alt"></i></span>
									</div>
									<textarea class="form-control form-control-lg" placeholder="Permanent Address" id="address" name="address"
										type="text" rows="2" cols="10"  required/></textarea><br>
								</div>
							</div>
							<div class="form-row mb-2">
								<div class="input-group col-md-12 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-id-card"></i></span>
									</div>
									<input class="form-control form-control-lg" id="formFileLg"
										type="file" /><br>
								</div>
								<div class="small text-muted mt-2">Upload your Aadhar Card. Max
									file size 50 MB</div>
							</div>
	
							<div class="form-row">
								<input type="submit" value="Submit" class="btn login_btn" />
								<a href="Autopopulate"  class="btn info_btn">Edit</a> 
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