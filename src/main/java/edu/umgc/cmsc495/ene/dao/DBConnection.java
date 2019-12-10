package edu.umgc.cmsc495.ene.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	static Connection con = null;
	public static String connectinInfo = null;

	public static Connection makeConnection() {
		if (con == null) {
			con = getConnection();
		}
		return con;
	}

	public static Connection getConnection() {
		con = null;
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalcensus", "root", "mysql");

			if (con != null) {
				System.out.println("Connection Created");
				connectinInfo = null;
			}
		} catch (Exception e) {
			System.out.println("Connecton error");
			e.printStackTrace();
		}
		return con;
	}

}
