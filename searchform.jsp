<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Searchform</title>
    <link rel="stylesheet" href="style/searchform/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/searchform/css/Article-List.css">
    <link rel="stylesheet" href="style/searchform/css/Newsletter-Subscription-Form.css">
    <link rel="stylesheet" href="style/searchform/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="style/searchform/css/styles.css">
</head>

<body>

	<jsp:include page="/header.jsp"></jsp:include>

    <div class="register-photo">
        <div class="form-container">
            <div class="image-holder" style="background: url(&quot;images/pexels-la-miko-3754595.jpg&quot;) left / cover;"></div>
            <form method="post">
                <h2 class="text-center"></h2>
                <div class="form-group"><label>Check-In :</label><input class="form-control" type="date" name="checkin" required=""><label>Check-Out :</label><input class="form-control" type="date" name="checkout" required=""><label>Category</label>
				
				<select class="form-control" 
				id="Type" name="Type" >
				
				<option value="Single" selected="">Single</option>
				<option value="Double">Double</option>
				<option value="Triple">Triple</option></select>
                        <label>No Of Rooms :</label><input class="form-control" type="number" name="noofrooms" required=""><label>Adult :</label><input class="form-control" type="number" name="adult" required=""><label>Kids :</label><input class="form-control" type="number" name="kids"
                        required=""></div>
                <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="background: rgb(91,125,213);">Search Availability</button></div><a class="already" href="/Booknow.jsp"></a></form>
        </div>
    </div>
    <div class="article-list">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Rooms</h2>
                <p class="text-center"></p>
            </div>
            <div class="row articles">
                <div class="col-sm-6 col-md-4 item"><a href="#"><img src="images/Sroom%203.jpg" style="width: 246px;height: 205px;"></a>
                    <h3 class="name">Single Room</h3>
                    <p class="description">A room with the facility of single bed.It is meant for single occupancy.It has an attached bathroom,a small dressing table,a small bedside table and a small writing table.</p><a class="action" href="#"></a></div>
                <div class="col-sm-6 col-md-4 item"><img src="images/room5.jpg" style="width: 246px;height: 205px;"><a href="#"></a>
                    <h3 class="name">Double Room</h3>
                    <p class="description">A room assigned to two people .It has an attached bathroom,a small dressing table a small bedside table and a small writing table .</p><a class="action" href="#"></a></div>
                <div class="col-sm-6 col-md-4 item"><a href="#"><img src="images/room1.jpg" style="width: 246px;height: 205px;"></a>
                    <h3 class="name">Triple Room</h3>
                    <p class="description">A room assigned to three people.It has an attached bathroom,a small dressing table , a small bedside table and a small writing table.</p><a class="action" href="#"></a></div>
            </div>
        </div>
    </div>
    <script src="style/searchform/js/jquery.min.js"></script>
    <script src="style/searchform/bootstrap/js/bootstrap.min.js"></script>
    <script src="style/searchform/js/Sample---How-to-change-text-based-on-dropdown.js"></script>
    
    <jsp:include page="/footer.jsp"></jsp:include>
    
</body>

</html>