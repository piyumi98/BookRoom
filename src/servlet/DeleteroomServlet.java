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
 * Servlet implementation class DeleteroomServlet
 */
@WebServlet("/DeleteroomServlet")
public class DeleteroomServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1871871796669342804L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteroomServlet() {
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
		iRoomService.removeRoom(RoomID);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Booknow.jsp");
		dispatcher.forward(request, response);
	}

}



