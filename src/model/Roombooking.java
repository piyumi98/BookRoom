package model;

public class Roombooking {
	
	private static String RoomID;
	
	private static String RImage;

	private static String Facilities;

	private static String Price;

	private static String Category;

	
	
	public String getRoomID() {
		return RoomID;
	}

	
	public static void setRoomID(String roomID) {
		RoomID = roomID;
	}

	
	public String getRImage() {
		return RImage;
	}

	
	public static void setRImage(String rImage) {
		RImage = rImage;
	}

	
	public String getFacilities() {
		return Facilities;
	}


	public static void setFacilities(String facilities) {
		Facilities = facilities;
	}

	
	public String getPrice() {
		return Price;
	}

	
	public static void setPrice(String price) {
		Price = price;
	}

	
	public String getCategory() {
		return Category;
	}

	
	public static void setCategory(String category) {
		Category = category;
	}


	@Override
	public String toString() {
		
		return "Room ID = " + RoomID + "\n" + "RImage = " + RImage + "\n" + "Facilities = " + Facilities + "\n" 
				+ "Price = " + Price + "\n" + "Category = " + Category + "\n";
	}
}


