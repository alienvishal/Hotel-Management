package com.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.hotel.EncryptionDecryption;
import com.mvc.bean.ReservationBean;
import com.mvc.bean.UserBean;
import com.mvc.dao.UserDBUtil;

/**
 * Servlet implementation class HotelServletController
 */
@WebServlet("/HotelServletController")
public class HotelServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Resource(name = "jdbc/HotelReservation")
	private DataSource dataSource;
	private UserDBUtil userDbUtil;
	private EncryptionDecryption encrypt;
	private UserBean user;
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		userDbUtil = new UserDBUtil(dataSource);
		user = new UserBean();
		encrypt = new EncryptionDecryption();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		try {
			String command = request.getParameter("command");
	
			switch(command) {
		
			case "REGISTER QUERY":
					register_query(request,response);
					break;
			case "REGISTER":
				register_user(request,response);
				break;
			case "LOGIN":
				login_user(request,response);
				break;
			case "Reservation":
				hotel_booking(request,response);
				break;
			default: out.println("Something Went Wrong");
		
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	private void hotel_booking(HttpServletRequest request, HttpServletResponse response)throws Exception {
		
		//Step1: Accept user inputs
		String room_type = request.getParameter("RoomType");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		
		DateFormat format = new SimpleDateFormat("mm-dd-yyyy", Locale.ENGLISH);
		Date checkindate = (Date) format.parse(checkin);
		Date checkoutdate = (Date) format.parse(checkout); 
		
		//Step2: Insert data to POJO class HotelReservation
		ReservationBean hotelReservation = new ReservationBean(room_type, checkindate, checkoutdate);
		
		//Step3: Perform Database operation
		boolean result = userDbUtil.hotel_reservation(hotelReservation);
		request.setAttribute("SEAT_RESERVED", result);
		
		//Step4: Send Result back to user
		RequestDispatcher rd = request.getRequestDispatcher("revervation.jsp");
		rd.forward(request, response);
		
	}

	private void login_user(HttpServletRequest request, HttpServletResponse response)throws Exception {
		
		//Step1: Accept Parameter from User
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		//Step2: Pass the value of POJO to DataBase Class
		List<UserBean> list = userDbUtil.login_user(email,password);
		
		//Step3: Check Condition if true send to welcome if false send to login itself
		if(list.size() > 0 ) {
			request.getSession().setAttribute("LOGIN_VALIDATE", list);
			RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("LOGIN_VALIDATE", true);
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		}
		
	}

	private void register_user(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//Step1:Accept parameters from user
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirm_password = request.getParameter("confirm_password");
		String phone_number = request.getParameter("phone");
		String country = request.getParameter("country");
		
		if(! password.equals(confirm_password)) {
			request.setAttribute("PASSWORD_VALIDATION", true);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		
		else if(phone_number.length() < 10 || phone_number.length() > 10) {
			request.setAttribute("PHONE_NUMBER_VALIDATION", true);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		
		else {
			String password_encrypt = encrypt.encrypt(password);
			// Step2:Register the source to POJO
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setEmail(email);
			user.setPassword(password_encrypt);
			user.setPhone_number(phone_number);
			user.setCountry(country);
			
			//Step3: Use the POJO to register to DataBase Utils
			boolean n = userDbUtil.registerUser(user);
			request.setAttribute("DATA_INSERTED", n);
		
			//step4:Forward result to JSP
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		
	}

	private void register_query(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//step1: Accept input from user;
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		if(message.length() <= 35) {
			request.setAttribute("MESSAGE_VALIDATION", true);
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}
		
		else {
			//step2:call the getter and setter method
			user.setEmail(email);
			user.setMessage(message);
		
			//step3:perform the database function
			boolean n = userDbUtil.insertData(user);
			request.setAttribute("DATA_INSERTED", n);
		
			//step4: Send to the jsp page
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}
	}

}
