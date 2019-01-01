<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
	
	<br><br><br>
	<div class="row">
		<div class="col-sm-7 offset-sm-3">
			<div class="form-container">
				<ul class="nav nav-tabs">
				     <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Login">Login</a></li>
				     <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#register">Register</a></li>
				</ul>
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="Login">
						<br><br>
						
						<c:set var="login_validation" value="${LOGIN_VALIDATE}"></c:set>
						
						<c:if test="${login_validation eq true}">
							<div class="alert alert-warning alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
	    						<p>Invalid Username or Password</p>
	 						</div>
						</c:if>
						<c:set var="logout" value="${LOGOUT_MESSAGE}"></c:set>
						<c:if test="${logout eq true}">
							<div class="alert alert-success alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
	    						<p>Successfully Logout</p>
	 						</div>
						</c:if>
						<form method="post" action="HotelServletController">
							
							<input type="hidden" name="command" value="LOGIN" />
							<div class="input-group mb-3">
								<div class="input-group-prepend">
							        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
							     </div>
								<input type="email" name="email" class="form-control" placeholder="Email Address" required>
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-lock fa-1x" style="font-size: 20px;"></i></span>
								</div>
								<input type="password" name="password" class="form-control" placeholder="Enter Password" required>
							</div>
							<button class="btn btn-success btn-block" name="login">Login</button>
							<br>
						</form>
					</div>
					<div role="tabpanel" class="tab-pane in fade" id="register">
						<br><br>
						
						<c:set var="password_validation" value="${PASSWORD_VALIDATION}"></c:set>
						
						<c:if test="${password_validation eq true}">
							<div class="alert alert-warning alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
	    						<p>Password is not matched</p>
	 						</div>
						</c:if>
						
						<c:set var="phone_number_validation" value="${PHONE_NUMBER_VALIDATION}" />
						
						<c:if test="${phone_number_validation eq true}">
							<div class="alert alert-warning alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
	    						<p>Please Enter 10 Digit Phone number</p>
	 						</div>	
						</c:if>
						
						<c:set var="is_insert" value="${DATA_INSERTED}"></c:set>
						
						<c:if test="${is_insert eq false}">
							<div class="alert alert-success alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
	    						<p>Thank You For Register</p>
	 						</div>
						</c:if>
						<form method="post" action="HotelServletController">
							
							<input type="hidden" name="command" value="REGISTER" />
							<div class="form-group">
								<label for="firstname">First Name:</label>
								<input type="text" name="firstname" class="form-control" id="firstname" placeholder="Enter first name" required>
							</div>
							<div class="form-group">
								<label for="lastname">Last Name:</label>
								<input type="text" name="lastname" class="form-control" id="lastname" placeholder="Enter last name"required>
							</div>
							<div class="form-group">
								<label for="email">Email:</label>
								<input type="email" name="email" class="form-control" id="email" placeholder="Enter Email Address"required>
							</div>
							<div class="form-group">
								<label for="password">Password:</label>
								<input type="password" name="password" class="form-control" id="password" placeholder="Enter Password"required>
							</div>
							<div class="form-group">
								<label for="confirm_password">Confirm Password:</label>
								<input type="password" name="confirm_password" class="form-control" id="confirm_password" placeholder="Enter Confirm Password" required>
							</div>
							<div class="form-group">
								<label for="phone">Phone Number:</label>
								<input type="number" name="phone" class="form-control" id="phone" placeholder="Enter Phone Number"required>
							</div>
							<div class="form-group">
								<label for="country">Country:</label>
								<select class="form-control" id="country" name = "country" required>
									<option>India</option>
									<option>Austrial</option>
									<option>Netherland</option>
								</select>
							</div>
							<button type="submit" name="register" value="Register" class="btn btn-success btn-block">Submit</button>
						</form>
					</div> 
				</div>
			</div>
		</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>