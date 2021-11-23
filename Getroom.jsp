<%@page import="model.Roombooking"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Get Room</title>
<link rel="stylesheet"
	href="style/Getroom/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="style/Getroom/css/Contact-Form-Clean.css">

</head>
          
<body 

style="background: url(images/ffwallpaper.jpg) no-repeat, rgb(5, 32, 55); background-size: cover;">
	<div class="contact-clean">

  <a style="display:inline-block;
	padding:.75rem;
	background-color:#ff7979;
	color:white;
	margin-bottom:8px;
	margin-left:16px;" href="Listroom.jsp">Back</a>



	

	<form method="POST" action = "/UpdateRoomServlet">
	<div class="form-group">
	<%
		Roombooking roombooking = (Roombooking) request.getAttribute("roombooking");
	%>

	<h1 class="text-center"><%=roombooking.getCategory()%>
	</h1>

	<img src="<%=roombooking.getRImage()%>" width="300px" align="middle">
				<input type="file" accept="image/*" name="Image" id="Image"
					onchange="loadFile(event)" style="display: none;">
				</div>
				<div class="form-group">
					<label class="btn btn-primary" for="Image" style="cursor: pointer;">Change Image</label>
					<img id="output" width="200" />
				</div>
		

		
				<label>Room ID</label>
				<input class="form-control" type="text" name="Room ID" disabled="disabled"
					value="<%=roombooking.getRoomID()%>" />
			<label>Facilities</label>
				<input class="form-control" type="text" name="Facilities"
					value="<%=roombooking.getFacilities()%>" />
			<label>Price</label>
				<input class="form-control" type="text" name="Price"
					value="<%=roombooking.getPrice()%>" />
			<label>Category</label>
				<input class="form-control" type="text" name="Category"
					value="<%=roombooking.getCategory()%>" />
				
				
		<input type="hidden" name="Image"
				value="<%=roombooking.getRImage()%>" />

		<input type="hidden" name="RoomID"
			value="<%=roombooking.getRoomID()%>" /> <input class="btn btn-primary" type="submit"
			value="Update Room Profile" class="submit" onclick="updatemsg(); callUpdateServlet();" />
			
			
			</form>
			<form method = "POST" action = "DeleteroomServlet">
			
			<input type="hidden" name="RoomID"
			value="<%=roombooking.getRoomID()%>" /> 
			
			<input class=" btn-danger" type="submit"
			value="Delete Room Profile" onclick="deletemsg(); callDeleteServlet();" />
	

	</form>
	
		


</div>

	<script>
		function deletemsg() {
			alert("The room profile was successfully deleted!");
		}
	</script>
	<script>
		function updatemsg() {
			alert("This room profile has been updated successfully!");
		}
	</script>
	
	
	<script>
		var loadFile = function(event) {
			var image = document.getElementById('output');
			image.src = URL.createObjectURL(event.target.files[0]);
		};
	</script>
	 <script type="text/javascript">
            function callDeleteServlet() {
                document.forms[0].action = "DeleteroomServlet";
                document.forms[0].submit();
            }
            function callUpdateServlet() {
                document.forms[0].action = "UpdateRoomServlet";
                document.forms[0].submit();
            }
        </script>
	

</body>

</html>
