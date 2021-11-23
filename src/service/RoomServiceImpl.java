package service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import model.Roombooking;
import util.CommonConstants;
import util.CommonUtil;
import util.DBConnectionUtil;
import util.QueryUtil;

public class RoomServiceImpl implements IRoomService  {
	

	public static final Logger log = Logger.getLogger(RoomServiceImpl.class.getName());

	private static Connection connection;

	private static Statement statement;

	static{
		
		createaddroomTable();
	}

	private PreparedStatement preparedStatement;

	
	public static void createaddroomTable() {

		try {
			connection = DBConnectionUtil.getDBConnection();
			statement = connection.createStatement();

			statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_DROP_TABLE));

			statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_CREATE_ROOM_TABLE));

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}


	@Override
	public void addRoom(Roombooking roombooking) {

		String roomID = CommonUtil.generateIDs(getRoomIDs());
		
		try {
			connection = DBConnectionUtil.getDBConnection();
		
			preparedStatement = connection
					.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_INSERT_ROOM));
			connection.setAutoCommit(false);
			
			
			roombooking.setRoomID(roomID);
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, roombooking.getRoomID());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, roombooking.getRImage());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, roombooking.getFacilities());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, roombooking.getPrice());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, roombooking.getCategory());

			

			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
		
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}

	@Override
	public Roombooking getRoomByID(String RoomID) {

		return actionOnRoomId(RoomID).get(0);
	}
	

	@Override
	public ArrayList<Roombooking> getRooms() {
		
		return actionOnRoomId(null);
	}

	@Override
	public void removeRoom(String roomID) {

		
		if (roomID != null && !roomID.isEmpty()) {
			
			try {
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_REMOVE_ROOM));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, roomID);
				preparedStatement.executeUpdate();
			} catch (SQLException | SAXException | IOException | ParserConfigurationException
					| ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				/*
				 * Close prepared statement and database connectivity at the end
				 * of transaction
				 */
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
	}


	private ArrayList<Roombooking> actionOnRoomId(String roomID) {

		ArrayList<Roombooking> RoomList = new ArrayList<Roombooking>();
		try {
			connection = DBConnectionUtil.getDBConnection();
			
			if (roomID != null && !roomID.isEmpty()) {
				/*
				 * Get employee by ID query will be retrieved from
				 * EmployeeQuery.xml
				 */
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_ROOM));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, roomID);
			}
			
			else {
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_ALL_ROOMS));
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				Roombooking roombooking = new Roombooking();
				Roombooking.setRoomID(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
				Roombooking.setRImage(resultSet.getString(CommonConstants.COLUMN_INDEX_TWO));
				Roombooking.setFacilities(resultSet.getString(CommonConstants.COLUMN_INDEX_THREE));
				Roombooking.setPrice(resultSet.getString(CommonConstants.COLUMN_INDEX_FOUR));
				Roombooking.setCategory(resultSet.getString(CommonConstants.COLUMN_INDEX_FIVE));
				RoomList.add(roombooking);
			}

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return RoomList;
	}


	@Override
	public Roombooking updateRoom(String roomID,Roombooking roombooking) {

		
		if (roomID != null && !roomID.isEmpty()) {
			
			try {
				connection = DBConnectionUtil.getDBConnection();
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_UPDATE_ROOM));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, roombooking.getRImage());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, roombooking.getFacilities());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, roombooking.getPrice());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, roombooking.getCategory());
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, roombooking.getRoomID());

				preparedStatement.executeUpdate();

			} catch (SQLException | SAXException | IOException | ParserConfigurationException
					| ClassNotFoundException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				/*
				 * Close prepared statement and database connectivity at the end
				 * of transaction
				 */
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
		// Get the updated employee
		return getRoomByID(roomID);
	}
	
	
	private ArrayList<String> getRoomIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		
		try {
			connection = DBConnectionUtil.getDBConnection();
			preparedStatement = connection
					.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_ROOM_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
			}
		} catch (SQLException | SAXException | IOException | ParserConfigurationException
				| ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}
}



