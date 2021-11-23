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
 * Servlet implementation class AddroomServlet
 */
@WebServlet("/AddroomServlet")
public class AddroomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddroomServlet() {
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
		
		roombooking.setRImage(request.getParameter("Room Image"));
		roombooking.setFacilities(request.getParameter("Facilities"));
		roombooking.setPrice(request.getParameter("Price"));
		roombooking.setCategory(request.getParameter("Category"));


		IRoomService iRoomService = new RoomServiceImpl();
		iRoomService.addRoom(roombooking);

		request.setAttribute("roombooking", roombooking);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Listroom.jsp");
		dispatcher.forward(request, response);
	}

}



