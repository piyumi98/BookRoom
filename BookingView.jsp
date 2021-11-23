<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Insert title here</title>
    <link rel="stylesheet" href="style/BookingView/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/BookingView/css/NZAttachmentGrid.css">
    <link rel="stylesheet" href="style/BookingView/css/styles.css">
</head>
<body>
 	
 	<jsp:include page="/header.jsp"></jsp:include>
				
				<div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th>RoomID</th>
                    <th>RImage</th>
                    <th>Facilities</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th>View</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width: 125px;">R001</td>
                    <td><img src="images/Sroom%201.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom</td>
                    <td>Rs.6000.00</td>
                    <td>Single</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
                <tr>
                    <td >R002</td>
                    <td><img src="images/Sroom%204.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom<br><br></td>
                    <td>Rs.8000.00</td>
                    <td style="width: 100px;">Single</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr></tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width: 125px;">R003</td>
                    <td><img src="images/Sroom%202.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom</td>
                    <td>Rs.10000.00</td>
                    <td>Single</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
                <tr>
                    <td>R004</td>
                    <td><img src="images/room5.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom<br><br></td>
                    <td>Rs.15000.00</td>
                    <td style="width: 100px;">Double</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr></tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width: 125px;">R005</td>
                    <td><img src="images/room6.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom</td>
                    <td>Rs.20000.00</td>
                    <td>Double</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
                <tr>
                    <td>R006</td>
                    <td><img src="images/room3.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom<br><br></td>
                    <td>Rs.23000.00</td>
                    <td style="width: 100px;">Double</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr></tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width: 125px;">R007</td>
                    <td><img src="images/room1.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom</td>
                    <td>Rs.25000.00</td>
                    <td>Double</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
                <tr>
                    <td>R008</td>
                    <td><img src="images/room2.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom<br><br></td>
                    <td>Rs.30000.00</td>
                    <td style="width: 100px;">Triple</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr></tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width: 125px;">R009</td>
                    <td><img src="images/Triple1.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom</td>
                    <td>Rs.25000.00</td>
                    <td>Triple</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
                <tr>
                    <td>R010</td>
                    <td><img src="images/Triple2.jpg" style="width: 100px;height: 60px;"></td>
                    <td>Free WiFi,Attach bathroom<br><br></td>
                    <td>Rs.30000.00</td>
                    <td style="width: 100px;">Triple</td>
                    <td><button class="btn btn-primary" type="button">View</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
				
	<jsp:include page="/footer.jsp"></jsp:include>			

</body>
</html>