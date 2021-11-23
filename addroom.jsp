<%@page import="model.Roombooking"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Add Room Profile</title>
    <link rel="stylesheet" href="style/addroom/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/addroom/css/Bootstrap-Image-Uploader.css">
    <link rel="stylesheet" href="style/addroom/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="style/addroom/css/styles.css">
</head>

<body>
    <div class="register-photo">
        <div class="form-container">
            <div class="image-holder" style="background: url(&quot;images/pexels-valeria-boltneva-827528.jpg&quot;);background-size: cover;"></div>
            <form method="post"  action = "AddroomServlet">
			<h2 class="text-center"><strong>&nbsp;Add&nbsp; Room Profile</strong></h2>
			<div class="form-group">
				<input type="file" accept="image/*" name="Image" id="Image"
					onchange="loadFile(event)" style="display: none;">
				</div>
				<div class="form-group">
					<label class="btn btn-primary" for="Image" style="cursor: pointer;">Upload Image</label>
					<img id="output" width="200" />
				</div>
                
                <label>Facilities</label><div class="form-group"><input class="form-control" type="text" name="facilities" id="Facilities" ></div>
                <label>Price</label><div class="form-group"><input class="form-control" type="text" name="price" id="Price" ></div>
                <label>Category</label>
				
				<select class="form-control" style="width: 150px; text-align: left;"
				id="Category" name="Type">
				
				<option value="Single" selected="">Single</option>
				<option value="Double">Double</option>
				<option value="Triple">Triple</option></select>
                <div class="form-group"><button class="btn btn-primary " type="submit" style="background: rgb(20, 40, 219);">ADD</button></div>
            </form>
        </div>
    </div>
    <script src="style/addroom/js/jquery.min.js"></script>
    <script src="style/addroom/bootstrap/js/bootstrap.min.js"></script>
    <script src="style/addroom/js/Bootstrap-Image-Uploader.js"></script>
    
    <script>
		var loadFile = function(event) {
			var image = document.getElementById('output');
			image.src = URL.createObjectURL(event.target.files[0]);
		};
	</script>
    
</body>

</html>