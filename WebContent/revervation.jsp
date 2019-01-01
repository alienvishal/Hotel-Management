<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
	<br><br>
	<div class="col-lg-8">
		<div class="card">
			<div class="card-header" style="background: #007bff;color: #fff;"><i class="fa fa-ticket" aria-hidden="true"></i>&nbsp;&nbsp;Reservation Section</div>
				<div class="card-body">
					<div class="card">
						<div class="card-header">Room Information</div>
							<div class="card-body">
								<c:set var="isBooked" value="${SEAT_RESERVED}"></c:set>
								
								<c:if test="${isBooked eq false}">
									<div class="alert alert-success alert-dismissible">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
	    								<p>Thank you for booking!</p>
	 								</div>
								</c:if>
								
								<c:if test="${isBooked eq true}">
									<div class="alert alert-warning alert-dismissible">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
	    								<p>Something Went Wrong!</p>
	 								</div>
								</c:if>
								
								<form method="post" action="HotelServletController">
								
									<input type="hidden" name="command" value="Reservation" />
									
									<div class="form-group">
										<label for="RoomType">Room Type:</label>
										<select class="form-control" id="RoomType" name = "RoomType" required>
											<option>Single</option>
											<option>Double</option>
											<option>Twin</option>
											<option>Delux</option>
										</select>
									</div>
									<div class="form-group date" data-provide="datepicker">
										<label for="checkin">Check-in</label>
										<input type="text" name="checkin" class="form-control" id="checkin" placeholder="mm/dd/yyyy"required>
									</div>
									<div class="form-group">
										<label for="checkout">Check-out</label>
										<input type="text" name="checkout" class="form-control" id="checkout" placeholder="mm/dd/yyyy"required>
									</div>
									<br><br>
									<button class="btn btn-primary" name="submit" style="float: right;">submit</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>