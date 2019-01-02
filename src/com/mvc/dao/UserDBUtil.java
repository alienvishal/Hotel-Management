package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.hotel.EncryptionDecryption;
import com.mvc.bean.ReservationBean;
import com.mvc.bean.UserBean;

public class UserDBUtil {

	private DataSource dataSource;
	
	public UserDBUtil(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	public boolean insertData(UserBean maintainQuery) throws SQLException {
		Connection myConn = null;
		PreparedStatement stmt = null;
		boolean n;
		try {
			myConn = dataSource.getConnection();
			String sql = "insert query(email, message) values (?, ?)";
			stmt = myConn.prepareStatement(sql);
			stmt.setString(1, maintainQuery.getEmail());
			stmt.setString(2, maintainQuery.getMessage());
			
			n= stmt.execute();
			
			if(n == true) {
				return n;
			}
			return n;
		}
		finally {
			closeConnection(myConn, stmt, null);
		}
		
	}

	private void closeConnection(Connection myConn, PreparedStatement stmt, ResultSet rs) throws SQLException {
		
		if(myConn != null) {
			myConn.close();
		}
		if(stmt != null) {
			stmt.close();
		}
		if(rs != null) {
			rs.close();
		}
		
	}

	public boolean registerUser(UserBean user) throws SQLException {
		
		Connection myConn = null;
		PreparedStatement stmt = null;
		boolean n;
		try {
			myConn = dataSource.getConnection();
			String sql = "insert registration(firstname, lastname, email, password, phone_number, country) values (?, ?, ?, ?, ?, ?)";
			stmt = myConn.prepareStatement(sql);
			stmt.setString(1, user.getFirstName());
			stmt.setString(2, user.getLastName());
			stmt.setString(3, user.getEmail());
			stmt.setString(4, user.getPassword());
			stmt.setString(5, user.getPhone_number());
			stmt.setString(6, user.getCountry());
			
			n= stmt.execute();
			
			if(n == true) {
				return n;
			}
			return n;
		}
		finally {
			closeConnection(myConn, stmt, null);
		}

				
	}

	public List<UserBean> login_user(String email, String password) throws Exception {
		
		EncryptionDecryption encrypt = new EncryptionDecryption();
		UserBean user = new UserBean();
		List<UserBean> list = new ArrayList<UserBean>();
		Connection myConn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			myConn = dataSource.getConnection();
			String sql = "select id, firstname, lastname, email, password from registration where email=?";
			stmt = myConn.prepareStatement(sql);
			
			stmt.setString(1, email);
			
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				int id = rs.getInt("id");
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String EncryptPassword = rs.getString("password");

				if( encrypt.decrypt(EncryptPassword).equals(password) ) {
					user.setFirstName(firstname);
					user.setLastName(lastname);
					user.setId(id);
					list.add(user);
				}
				
			}
			return list;
		}
					
		finally {
			closeConnection(myConn, stmt, rs);
		}
	
		
	}

	public boolean hotel_reservation(int reg_id) throws SQLException {
		
		ReservationBean hotelReservation = new ReservationBean();
		Connection myConn = null;
		PreparedStatement stmt = null;
		boolean result = false;
		
		try {
			myConn = dataSource.getConnection();
			String sql = "INSERT INTO reservation(room_type, checkin, checkout, reg_id) VALUES (?,?,?,?)";
			stmt = myConn.prepareStatement(sql);
			
			stmt.setString(1, hotelReservation.getRoom_type());
			stmt.setDate(2, hotelReservation.getCheckin());
			stmt.setDate(3, hotelReservation.getCheckout());
			stmt.setInt(4, reg_id);
			
			result = stmt.execute();
			
			return result;
		}
		finally {
			closeConnection(myConn, stmt, null);
		}
	}
	
}
