package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Roombooking;
import service.RoomServiceImpl;
import service.IRoomService;


/**
 * Servlet implementation class UpdateRoomServlet
 */
@WebServlet("/UpdateRoomServlet")
public class UpdateRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateRoomServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		Roombooking roombooking = new Roombooking();
		String RoomID = request.getParameter("Room ID");	
		Roombooking.setRoomID(RoomID);
		Roombooking.setRImage(request.getParameter("Room Image"));
		Roombooking.setFacilities(request.getParameter("Facilities"));
		Roombooking.setPrice(request.getParameter("Price"));
		Roombooking.setCategory(request.getParameter("Category"));
		
		IRoomService iRoomService = new RoomServiceImpl();
		iRoomService.updateRoom(RoomID, roombooking);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/BookingView.jsp");
		dispatcher.forward(request, response);
	}


}
