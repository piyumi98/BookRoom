package service;

import model.Roombooking;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactoryConfigurationError;

public interface IRoomService {

	/** Initialize logger */
	public static final Logger log = Logger.getLogger(IRoomService.class.getName());


	public void addRoom(Roombooking roombooking);

	public Roombooking getRoomByID(String RoomID);
	
	public ArrayList<Roombooking> getRooms();
	

	public Roombooking updateRoom(String roomID, Roombooking roombooking);

	
	public void removeRoom(String roomID);

}

