package com.mvc.bean;

import java.sql.Date;

public class ReservationBean {
	String room_type;
	Date checkin, checkout;
	int id;
	
	public ReservationBean(String room_type, Date checkin, Date checkout, int id) {
		super();
		this.room_type = room_type;
		this.checkin = checkin;
		this.checkout = checkout;
		this.id = id;
	}
	
	public ReservationBean(String room_type, Date checkin, Date checkout) {
		super();
		this.room_type = room_type;
		this.checkin = checkin;
		this.checkout = checkout;
	}
	
	public String getRoom_type() {
		return room_type;
	}
	
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	
	public Date getCheckin() {
		return checkin;
	}
	
	public void setCheckin(Date checkin) {
		this.checkin = checkin;
	}
	
	public Date getCheckout() {
		return checkout;
	}
	
	public void setCheckout(Date checkout) {
		this.checkout = checkout;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	

}
