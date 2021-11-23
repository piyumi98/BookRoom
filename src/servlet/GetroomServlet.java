package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Roombooking;
import service.IRoomService;
import service.RoomServiceImpl;

/**
 * Servlet implementation class GetroomServlet
 */
@WebServlet("/GetroomServlet")
public class GetroomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetroomServlet() {
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

 		String RoomID = request.getParameter("roomID");			
		IRoomService iRoomService = new RoomServiceImpl();
		Roombooking roombooking = iRoomService.getRoomByID(RoomID);

		request.setAttribute("roombooking", roombooking);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Getroom.jsp");
		dispatcher.forward(request, response);
	}


}
