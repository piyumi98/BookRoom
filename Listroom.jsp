<%@page import="model.Roombooking"%>
<%@page import="java.util.ArrayList"%>
<%@page import="service.RoomServiceImpl"%>
<%@page import="service.IRoomService"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>List Rooms</title>
    <link rel="stylesheet" href="style/Listroom.jsp/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.css">
    <link rel="stylesheet" href="style/Listroom.jsp/css/styles.css">
        <link rel="stylesheet" href="style/SpecialService/Header-Blue.css">

     <link rel="stylesheet" href="Style/SpecialService/Footer-Dark.css">
     
     	<body 
     	<jsp:include page="/header.jsp"></jsp:include>>

     
     
      <h1 style="text-align: center;padding: 40px;">Room List</h1>
       <a class="add" href="AdminPanel.jsp">Admin Panel</a><br />
     <a class="add" href="addroom.jsp">Add Room</a>
    <div class="table-responsive" data-aos="fade-up"  style="background: #fff;">
        <table class="table">
            <thead>
                <tr>
                <th>RoomID</th>
                <th>Facilities</th>
                <th>Price</th>
                <th>Category</th>
                
            </tr>
           </thead>
            <tbody>
            <%
            IRoomService iRoomService = new RoomServiceImpl();
			ArrayList<Roombooking> arrayList = iRoomService.getRooms();
			
			for(Roombooking roombooking : arrayList){
			%>
		
		
			 <tr>
			    <td> <%=roombooking.getRoomID() %> </td>
				<td><img src="<%=roombooking.getRImage() %>" width="100px" height=auto></td>
				<td> <%=roombooking.getFacilities() %> </td>
				<td> <%=roombooking.getPrice() %> </td>
				<td> <%=roombooking.getCategory() %> </td>
				<td><form method="POST" action="GetroomServlet">
												<input type="hidden" name="RoomID"
													value="<%=roombooking.getRoomID()%>" /> <input class="btn btn-primary" type="submit"
													value="View" />
											</form></td>
			
			<%
			}
			%> 
			</tr>
		   </tbody>
		</table>
		</div>
		
			<script src="style/Listroom/js/jquery.min.js"></script>
    <script src="style/Listroom/bootstrap/js/bootstrap.min.js"></script>
    <script src="style/Listroom/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.2.0/aos.js"></script>
		

 <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>JOIN WITH US AND&nbsp;ENJOY YOUR FREEDOM&nbsp;</h3>
                        <ul>
                            <li><a href="#"></a></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
                <p class="copyright">HOTEL GOD'S LITTLE ACRE</p>
            </div>
        </footer>
    </div>
		
</body>


 
</html>