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
<%@ include file="EducationalDetails.css"%>
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
							    <a class="nav-link active" href="#"><strong>Edit Educational Details</strong></a>
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
	
								<h2 class="py-3">Educational Details</h2>
	
							</div>
						</div>
					</div>
					<div class=" side2 col-md-8 py-5 border">
						<h1 class=" display-5 heading pb-4 text-center"><strong>Enter Your Educational Details</strong></h1>
						<form action="EducationalDetailsEdit" method="post">
							<div class="form-row">
								<div class="form-group col-md-12 mb-2">
									<label id="X">Class Xth </label>
									<input id="X" name="Secondary" placeholder="Enter Marks(CGPA / %)" value=<%=session.getAttribute("v1") %>
										class="form-control" type="text"
										required >
								</div>
								<div class="form-group col-md-12 mb-2">
									<label id="XII">Class XIIth </label>
									<input type="text" class="form-control" id="XII" name="SS" value=<%=session.getAttribute("v2") %>
										placeholder="Enter Marks(CGPA / %)" type="text"
										required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6 mb-2">
									<label id="BTech">BTech </label>
									<input id="BTech" name="BTech" placeholder="Enter Marks(CGPA / %)" value=<%=session.getAttribute("v3") %>
										class="form-control" type="text"
										required >
								</div>
								<div class="form-group col-md-6 mb-2">
									<label id="MTech">MTech </label>
									<input type="text" class="form-control" id="MTech" name="MTech" value=<%=session.getAttribute("v4") %>
										placeholder="Enter Marks(CGPA / %)" type="text"
										>
								</div>
							</div>
							
							<div class="form-row mb-2">
								<div class="input-group col-md-12 mb-2">
									<div class="input-group-append">
										<span class="input-group-text"><i class="fas fa-book-open"></i></span>
									</div>
									<input class="form-control form-control-lg" id="formFileLg"
										type="file" /><br>
								</div>
								<div class="small text-muted mt-2">Upload your any MarkSheet. Max
									file size 50 MB</div>
							</div>
	
							<div class="form-row">
								<input type="submit" value="Save Changes" class="btn login_btn" />
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