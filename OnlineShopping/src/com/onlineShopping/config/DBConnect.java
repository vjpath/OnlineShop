  package com.onlineShopping.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DBConnect {

	public static Connection getConnect() {
		Connection con=null;
		try {
		Class.forName("org.h2.Driver");
		con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/vijay","sa","sa");


		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
}
