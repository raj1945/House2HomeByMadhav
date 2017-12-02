<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>House2Home</title>
<meta charset="utf-8">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
<link href="layout/styles/social.css" rel="stylesheet" type="text/css"
	media="all">
<link href="layout/styles/slider2.css" rel="stylesheet" type="text/css"
	media="all">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript" src="js/javas.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/JavaScript" src="js/state.js"></script>
</head>
<body>
	<!-- ################################################################################################ -->
	<div class="wrapper row1">
		<header id="header" class="hoc clear">
			<!-- ################################################################################################ -->
			<div id="logo" class="fl_left">
				<h1>
					<a href="index.html">House2Home</a>
				</h1>
				<p>Make It The Best</p>
			</div>
			<div id="login" class="fl_right">

				<button class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">Login/Register</button>
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myLargeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true"></button>
								<h4 class="modal-title" id="myModalLabel">
									Login/Registration</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-8"
										style="border-right: 1px dotted #C2C2C2; padding-right: 20px;">
										<!-- Nav tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
											<li><a href="#Registration" data-toggle="tab">Registration</a></li>
											<li><a href="#EmployeeLogin" data-toggle="tab">Employee
													Login</a></li>
										</ul>
										<!-- Tab panes -->
										<br>
										<div class="tab-content">
											<div class="tab-pane active" id="Login">
												<form:form role="form" class="form-horizontal"
													action="userLogin" method="post" commandName="userl">
													<div class="form-group">
														<label for="userName" class="col-sm-2 control-label">
															User Name</label>
														<div class="col-sm-10">
															<input type="text" class="form-control"
																id="userName" placeholder="User Name" name="userName"
																required="required" maxlength="10" />
														</div>

													</div>
													<div class="form-group">
														<label for="exampleInputPassword"
															class="col-sm-2 control-label"> Password</label>
														<div class="col-sm-10">
															<input type="password" class="form-control"
																id="exampleInputPassword" placeholder="passowrd"
																required="required" name="password" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<br>
															<button type="submit" class="btn btn-primary btn-sm">
																Submit</button>
															<a href="#">Forgot your password?</a>
														
														</div>
													</div>
												</form:form>

											</div>
											<div class="tab-pane" id="Registration">
												<form:form role="form" class="form-horizontal"
													action="userRegister" method="post" commandName="userreg">
													<div class="form-group">
														<br> <label for="fullname"
															class="col-sm-2 control-label"> Full Name</label>
														<div class="col-sm-10">
															<input type="text" class="form-control"
																placeholder="Name" name="full_name" required="required" />
														</div>
													</div>

													<div class="form-group">
														<label for="userName" class="col-sm-2 control-label">
															User Name</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="userName"
																placeholder="User Name" name="user_name"
																required="required" maxlength="10" />
														</div>
													</div>
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															Email</label>
														<div class="col-sm-10">
															<input type="email" class="form-control" id="email"
																placeholder="Email" required name="email" />
														</div>
													</div>
													<div class="form-group">
														<label for="password" class="col-sm-2 control-label">
															Password</label>
														<div class="col-sm-10">
															<input type="password" class="form-control"
																id="password1" placeholder="Password"
																required="required" onblur="checkPass(this)" />
														</div>
													</div>
													<div class="form-group">
														<label for="password" class="col-sm-2 control-label">
															Conform Password </label>
														<div class="col-sm-10">
															<input type="password" class="form-control"
																id="password2" placeholder="Password"
																required="required" name="password"
																onblur="checkPass(this)" />
														</div>
													</div>
													<div class="form-group">
														<label for="mobile" class="col-sm-2 control-label">
															Mobile</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="mobile"
																placeholder="Mobile" required="required" maxlength="10"
																name="phone" onkeyup="validatephone(this);" />
														</div>
													</div>
													<div class="form-group">
														<label for="lookingfor" class="col-sm-2 control-label">
															Looking For</label>
														<div class="col-sm-10">
															<select class="form-control" name="service_type">
																<option value=" ">select</option>
																<option value="interior Design" selected>Interior
																	Design for House</option>
																<option value="cleaning" selected>Home
																	Organizing-Clean</option>
																<option value="repairing" selected>Home
																	Orgainzing-Repairing</option>
															</select>
														</div>
													</div>

													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<br>
															<button type="submit" class="btn btn-primary btn-sm">
																Submit</button>
															<button type="reset" class="btn btn-default btn-sm">
																Cancel</button>
														</div>
													</div>
												</form:form>
											</div>

											<div class="tab-pane" id="EmployeeLogin">
												<form role="form" class="form-horizontal">
													<div class="form-group">
														<br> <label for="email"
															class="col-sm-2 control-label"> Email</label>
														<div class="col-sm-10">
															<input type="email" class="form-control" id="email1"
																placeholder="Email" required="required" />
														</div>
													</div>
													<div class="form-group">
														<label for="exampleInputPassword1"
															class="col-sm-2 control-label"> Password</label>
														<div class="col-sm-10">
															<input type="password" class="form-control"
																id="exampleInputPassword1" placeholder="passowrd"
																required="required" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<br>
															<button type="submit" class="btn btn-primary btn-sm">
																Submit</button>
															<a href="#">Forgot your password?</a>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>


		<nav id="mainav" class="hoc clear">
			<!-- ################################################################################################ -->
			<ul class="clear">
				<li class="active"><a href="index.html">Home</a></li>
				<li><a href="index.html">How It Works</a></li>
				<li><a class="drop" href="#">Our Services</a>
					<ul>
						<li><a href="#">Interior Designs</a></li>
						<li><a class="drop" href="#">Home Organizing</a>
							<ul>
								<li><a href="#">Cleaning</a></li>
								<li><a href="#">Repairing</a></li>
							</ul></li>
					</ul></li>
				<li><a href="#">What They Say</a></li>
				<li><a href="#">Locations</a></li>
				<li><a href="#">FAQ</a></li>
				<li><a href="#">Contact Us</a></li>
			</ul>
			<!-- ################################################################################################ -->
		</nav>
	</div>
	<div class="wrapper row3">
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<div class="content three_quarter first">
			<div id="slideshow">
				<img src="images/image1.jpg"></img> <img src="images/image2.jpg"></img>
				<img src="images/image3.jpg"></img>

			</div>
			<div style="text-align: center">
				<div id="circle1" class="circle"></div>
				<div id="circle2" class="circle"></div>
				<div id="circle3" class="circle"></div>
			</div>


		</div>

		<!-- ################################################################################################ -->

		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<div class="sidebar one_quarter">
			<div class="form-style-2">
				<div class="form-style-2-heading">Get Custom Quote</div>
				<form:form action="customReqregister" method="post"
					modelAttribute="customData">
					<label><span>Name <span class="required">*</span></span><input
						type="text" class="input-field" name="name" value="" required
						onkeyup="lengthRange(this) " /> </label>
					<div class="statusName" id="statusName"></div>

					<label><span>Email <span class="required">*</span></span><input
						type="email" class="input-field" name="email"
						onchange="email_validate(this.value);" value="" required /></label>
					<div class="status" id="status"></div>
					<label><span>Telephone<span class="required">*</span></span><input
						type="text" class="input-field" name="phone" value=""
						maxlength="10" onkeyup="validatephone(this);" required /></label>
					<label><span>Looking For?</span><select name="service_type"
						class="select-field">
							<option>select here</option>
							<option value="interiorDesign">Interior Design for House</option>
							<option value="repair">Home Organizing-Repair</option>
							<option value="clean">Home Organizing-Cleaning</option>
					</select></label>
					<label><span>House Type</span><select name="house_type"
						class="select-field">
							<option value="1bhk">1BHK</option>
							<option value="2bhk">2BHK</option>
							<option value="3bhk">3BHK</option>
							<option value="villa">Villa</option>
					</select></label>
					<label><span>Budget</span><select name="budget"
						class="select-field">
							<option value="dmatter">Does not matter</option>
							<option value="1lack">1 Lack</option>
							<option value="2lack">2 lack</option>
							<option value="3lack">3 lack</option>
					</select></label>
					<label><span>City <span class="required">*</span></span><input
						type="text" class="input-field" name="city" value="" required /></label>
					<div class="fl_left">
						<label><span></span><input type="submit" value="Submit" /></label><label><span></span><input
							type="reset" value="Clear" /></label>
					</div>
				</form:form>
			</div>
		</div>
		<!-- ################################################################################################ -->
		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>

	<!-- JAVASCRIPTS -->
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
	<script src="layout/scripts/validations.js"></script>
</body>

<div class="wrapper row4 bgded overlay">
	<footer id="footer" class="hoc clear">
		<!-- ################################################################################################ -->
		<div class="center btmspace-50">
			<hr class="btmspace-50">
			<div class="group">
				<div class="one_third first">
					<a href="#" class="heading"> Privacy&Policy</a>

				</div>
				<div class="one_third">
					<a href="#" class="heading"> Terms and Conditions</a>
				</div>
				<div class="one_third">
					<div class="text-center center-block">
						<p class="txt-railway">Connect Us On</p>
						<br /> <a href="https://www.facebook.com/bootsnipp"><i
							id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a> <a
							href="https://twitter.com/bootsnipp"><i id="social-tw"
							class="fa fa-twitter-square fa-3x social"></i></a> <a
							href="https://plus.google.com/+Bootsnipp-page"><i
							id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
						<a href="mailto:bootsnipp@gmail.com"><i id="social-em"
							class="fa fa-envelope-square fa-3x social"></i></a>
					</div>
				</div>
			</div>
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
	</footer>
	<div class="wrapper row5">
		<div id="copyright" class="hoc clear">
			<!-- ################################################################################################ -->
			<p class="center">Copyright &copy; 2016 - All Rights Reserved</p>
			<!-- ################################################################################################ -->
		</div>
	</div>
</div>

</html>


