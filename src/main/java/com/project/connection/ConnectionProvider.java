package com.project.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionProvider {

	public static Connection getConnection() throws ClassNotFoundException
	{
		Connection con = null;
         try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/sushant", "root", "root");
			System.out.println("Connection created successfully");
			return con;
			
		} catch (SQLException e) {
			
			con=null;
			e.printStackTrace();
		}
		return con;
	}
	public static void main(String[] args) {
		try {
			Connection c = getConnection();
			System.out.println(c.hashCode());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
