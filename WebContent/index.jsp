<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"></jsp:include>
	<div id="demo" class="carousel slide" data-ride="carousel">
	  	
	  	<!-- Indicators -->
		  <ul class="carousel-indicators">
		    <li data-target="#demo" data-slide-to="0" class="active"></li>
		    <li data-target="#demo" data-slide-to="1"></li>
		    <li data-target="#demo" data-slide-to="2"></li>
		  </ul>
	  
		  <!-- The slideshow -->
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="img/hotel1.jpg" alt="Los Angeles" width="100%" height="600">
		    </div>
		    <div class="carousel-item">
		      <img src="img/hotel2.jpg" alt="Chicago" width="100%" height="600">
		    </div>
		    <div class="carousel-item">
		      <img src="img/hotel3.jpg" alt="New York" width="100%" height="600">
		    </div>
		  </div>
	  
		  <!-- Left and right controls -->
		  <a class="carousel-control-prev" href="#demo" data-slide="prev">
		    <span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#demo" data-slide="next">
		    <span class="carousel-control-next-icon"></span>
		  </a>
		</div>
		
		<div class="jumbotron jumbotron-fluid">
			
			<div class="container">
				<br><br>
				<h1 class="text-center" style="font-size: 35px;"><b>Welcome to Phil Oasis Hotel and Restrautants</b></h1>
				<br>
				<h4 class="text-center" style="color: gray;">Experience our relaxing hotel, pool, bed rooms and facilites!</h4>
				<br>
				
				<div class="carousel slider" data-ride="carousel" id="postsCoursel">
					
					<div class="row">
						
						<div class="col-12 text-right mb-4">
							<a class="btn btn-outline-secondary prev" href="" title="go back"><i class="fa fa-lg fa-chevron-left"></i></a>
							<a class="btn btn-outline-secondary next" href="" title="go next"><i class="fa fa-lg fa-chevron-right"></i></a>
						</div>
						
					</div>
					
					<div class="carousel-inner">
						
						<div class="row row-equal carousel-item active">
							
							<div class="card-deck">
								
								<div class="card" style="border-radius: 0rem;">
									
									<div class="card-body" style="padding: 0.3rem;">
										<img src="img/bedroom1.png" class="img-fluid" style="height: 350px;">
										<br><br>
										<center>
											<h5 class="card-title"><button type="submit" name="reserved" class="btn btn-success" onclick="location.href= 'login.jsp';">Reserved Now!</button></h5>
											<p>Room Type : Single</p>
											<p>Room Price : 399.00</p> 
											<p>Max Occupancy : 1 person</p>
										</center>
									</div>
									
								</div>
								
								<div class="card" style="border-radius: 0rem;">
									
									<div class="card-body" style="padding: 0.3rem;">
										<img src="img/bedroom2.jpg" class="img-fluid" style="height: 350px;">
										<br><br>
										<center>
											<h5 class="card-title"><button type="submit" name="reserved" class="btn btn-success card-title" onclick="location.href= 'login.jsp';">Reserved Now!</button></h5>
											<p>Room Type : Double</p>
											<p>Room Price : 599.00</p> 
											<p>Max Occupancy : 2 person</p>
										</center>
									</div>
									
								</div>
								
								<div class="card" style="border-radius: 0rem;">
									
									<div class="card-body" style="padding: 0.3rem;">
										<img src="img/bedroom3.jpg" class="img-fluid" style="height: 350px;">
										<br><br>
										<center>
											<h5 class="card-title"><button type="submit" name="reserved" class="btn btn-success card-title" onclick="location.href= 'login.jsp';">Reserved Now!</button></h5>
											<p>Room Type : Twin</p>
											<p>Room Price : 799.00</p> 
											<p>Max Occupancy : 2 person</p>
										</center>
									</div>
									
								</div>
								
							</div>
							
						</div>
						
						<div class="row row-equal carousel-item">
							
							<div class="card-deck">
								
								<div class="card" style="border-radius: 0rem;">
									
									<div class="card-body" style="padding: 0.3rem;">
										<img src="img/bedroom4.jpg" class="img-fluid" style="height: 350px;">
										<br><br>
										<center>
											<h5 class="card-title"><button type="submit" name="reserved" class="btn btn-success card-title" onclick="location.href= 'login.jsp';">Reserved Now!</button></h5>
											<p>Room Type : Deluxe</p>
											<p>Room Price : 1,999.00</p> 
											<p>Max Occupancy : 3 person</p>
										</center>
									</div>
									
								</div>
								
								<div class="card" style="border-radius: 0rem;">
									
									<div class="card-body" style="padding: 0.3rem;">
										<img src="img/bedroom5.jpg" class="img-fluid" style="height: 350px;">
										<br><br>
										<center>
											<h5 class="card-title"><button type="submit" name="reserved" class="btn btn-success card-title" onclick="location.href= 'login.jsp';">Reserved Now!</button></h5>
											<p>Room Type : Deluxe</p>
											<p>Room Price : 1,999.00</p> 
											<p>Max Occupancy : 3 person</p>
										</center>
									</div>
									
								</div>
								
								<div class="card" style="border-radius: 0rem;">
									
									<div class="card-body" style="padding: 0.3rem;">
										<img src="img/bedroom6.png" class="img-fluid" style="height: 350px;">
										<br><br>
										<center>
											<h5 class="card-title"><button type="submit" name="reserved" class="btn btn-success card-title" onclick="location.href= 'login.jsp';">Reserved Now!</button></h5>
											<p>Room Type : Deluxe</p>
											<p>Room Price : 1,999.00</p> 
											<p>Max Occupancy : 3 person</p>
										</center>
									</div>
									
								</div>
								
							</div>
							
						</div>
						
					</div>
					
				</div>
				
				<br><br><br>
				
				<h3 class="text-center"><b>What did they just said?</b></h3>
				<br><br>
				
				<div class="row">
					
					<div class="col-sm-6">
						<img src="img/girl1.jpg" align="girl" class="rounded-circle mx-auto d-block img-fluid" style="width: 25%;min-height: 114px;" />
						<br>
						<p class="text-center" style="font-size: 20px; color: gray;">"This is so cheap but when i experienced it's different!.<br>Truly Recommended!"</p>
						
						<center>
							<span class="fa fa-star" style="color: orange;"></span>
							<span class="fa fa-star" style="color: orange;"></span>
							<span class="fa fa-star" style="color: orange;"></span>
							<span class="fa fa-star" style="color: orange;"></span>
							<span class="fa fa-star"></span>
							<br><br>
							<h5><b><i>-Carla Gatil</i></b></h5>
						</center>
					</div>
					
					<div class="col-sm-6">
						<img src="img/men.jpg" align="men" class="rounded-circle mx-auto d-block img-fluid" style="width: 25%;min-height: 114px;" />
						<br>
						<p class="text-center" style="font-size: 20px; color: gray;">"Well, it's nice in here and the food are awesome<br>great service. Love it!"</p>
						
						<center>
							<span class="fa fa-star" style="color: orange;"></span>
							<span class="fa fa-star" style="color: orange;"></span>
							<span class="fa fa-star" style="color: orange;"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							<br><br>
							<h5><b><i>-Erwin Hayag</i></b></h5>
						</center>
					</div>
					
				</div>
				
				<center>
					<i class="fa fa-glass fa-3x" style="margin-top: 200px;"></i>
					<br><br>
					<h3><b>Explore our Wonderful Hotel</b></h3>
					<br><br>
					<h5 style="font-size: 30px;">Swimming Pool</h5>
					<p style="font-size: 20px;color: gray;">Experience our awesome Pools.</p>
					
					<div class="row">
						
						<div class="col-lg-3">
							<img src="img/swim1.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
						
						<div class="col-lg-3">
							<img src="img/swim2.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
						
						<div class="col-lg-3">
							<img src="img/swim3.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
						
						<div class="col-lg-3">
							<img src="img/swim4.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
					
					</div>
					
					<br><br><br>
					
					<h5 style="font-size: 30px;">Bed Rooms & Restaurants</h5>
					<p style="font-size: 20px;color: gray;">Experience our relaxing Bed Rooms and Restaurant.</p>
					
					<div class="row">
						
						<div class="col-lg-3">
							<img src="img/bedroom1.png" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
						
						<div class="col-lg-3">
							<img src="img/bedroom2.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
						
						<div class="col-lg-3">
							<img src="img/bedroom3.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
						
						<div class="col-lg-3">
							<img src="img/bedroom4.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
					
					</div>
					
					<br><br><br>
					
					<h5 style="font-size: 30px;">Facilites and More!</h5>
					<p style="font-size: 20px;color: gray;">Experience our beautiful Facilites.</p>
					
					<div class="row">
						
						<div class="col-lg-3">
							<img src="img/fact1.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
						
						<div class="col-lg-3">
							<img src="img/fact2.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
						
						<div class="col-lg-3">
							<img src="img/fact3.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
						
						<div class="col-lg-3">
							<img src="img/fact4.jpg" alt="swim" style="width: 100%;height: 250px;border: 5px solid white;">
						</div>
					
					</div>
					
					<br><br><br>
					
					<i class="fa fa-user fa-5x"></i>
					<br><br>
					<h5 style="font-size: 30px;color: orange;"><b>ABOUT US</b></h5>
					<br>
					<img src="img/house.jpg" class="rounded-circle" style="width: 25%;min-height: 114px;">
					<br><br>
					<p style="color: gray;font-size: 20px;">Ideally the hotel is located at Lot 2A,B, & C, Biluso, Silang, 4118 Cavita, Philippines, Phil Oasis promises a relaxing and wonderful visit. Both bussiness travelers and toursit can enjoy the hotel facilities and services. Facilites like 24-Hours front-desk, 24 hours room service, luggage storage, Wi-Fi in public areas, car park are readily availiable for you to enjoy.Comfortable guest rooms ensure a good night sleep with some featuring facilities such as internet access, air conditioning, heating, desk, and mini bar.</p>
					<br><br><br>
					<i class="fa fa-mobile fa-5x" aria-hidden="true"></i>
					<br><br>
					<h5 style="font-size: 30px;color: orange;"><b>CONTACT US</b></h5>
					<br>
					<h5>Message us Now!</h5>
					<br><br>
				</center>
				
				<div class="row">
					
					<div class="col-lg-6">
		
						<c:set var="data" value="${DATA_INSERTED}" />
					
						<c:if test="${data eq false}">
							
							<div class="alert alert-success alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
	    						<p>We will surly be connected with you!</p>
	 						</div>
						</c:if>
						
						<c:set var="message_validation" value="${MESSAGE_VALIDATION}" />
						<c:if test="${message_validation eq true}">
						
							<div class="alert alert-warning alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
	    						<p>The message content should be more than 30 character</p>
	 						</div>
	 						
						</c:if>
						
						<form method="post" action="HotelServletController">
							<input type="hidden" name="command" value="REGISTER QUERY" />
				
							<div class="input-group mb-3">
								
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-user"></i></span>
								</div>
								<input type="email" name="email" class="form-control" placeholder="Email Address" required>
							</div>
				
							<div class="input-group mb-3">
								
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-envelope"></i></span>
								</div>
								<input type="text" name="message" class="form-control" placeholder="Message" required>
							</div>
							<button class="btn btn-success btn-block" name="submit">Send Now</button>
						</form>
						
					</div>
					
					<div class="col-lg-6">
						<strong style="color: orange;font-family: Courier New">Phone:</strong> <font name="Verdana">+63 930 7191308</font><br>
						<strong style="color: orange;font-family: Courier New">Landline:</strong> <font name="Verdana">(046) 414 3201</font><br>
						<strong style="color: orange;font-family: Courier New">Address:</strong> <font name="Verdana">Biluso, Silang, 4118 Cavita, Philippines.</font><br>
						<strong style="color: orange;font-family: Courier New">Email:</strong> <font name="Verdana">phil_oasis@gmail.com</font>
						<br><br>
			
						<i class="fa fa-facebook fa-2x" style="color: gray;"></i>
						<i class="fa fa-instagram fa-2x" style="color: gray;margin-left: 25px;"></i>
						<i class="fa fa-google-plus fa-2x" aria-hidden="true" style="color: gray;margin-left: 30px;"></i>	
					</div>
				</div>
			</div>
<jsp:include page="footer.jsp"></jsp:include>