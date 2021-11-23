package model;
import java.sql.Connection;
import java.sql.SQLException;

import util.DBConnectionUtil;
public class test {
	
	 public static void main(String[] agrs) throws ClassNotFoundException, SQLException {
		 Connection connection;
		 connection = DBConnectionUtil.getDBConnection();
		 
		 if(connection == null) {
			 System.out.println("connection Error!");
		 }else {
			 System.out.println("Connection success!");
		 }
	 }
}
