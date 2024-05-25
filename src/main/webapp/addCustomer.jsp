<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
 <script type="text/javascript">
		function addUser(){
			console.log("form javascript meth");
		    // Get elements by name
            var nameElement = document.getElementsByName('name')[0];
            var mobileElement = document.getElementsByName('mobile')[0];
            var addressElement = document.getElementsByName('address')[0];

            // Get values from the elements
            var cname = nameElement.value;
            var mobile = mobileElement.value;
            var address = addressElement.value;

            // Send AJAX request
            $.ajax({
                url: 'http://localhost:8080/addUser', // Replace with your server endpoint
                type: 'POST',
                data: {
                    cname: cname,
                    mobile: mobile,
                    address: address
                },
                success: function(response) {
                    // Handle the response from the server
                    alert('Form submitted successfully: ' + response);
                    window.location.href = 'customerList.jsp';
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    // Handle any errors that occurred during the AJAX request
                    alert('Error submitting form: ' + textStatus);
                }
            });
	      }
		 
		
		</script>
		<link rel="stylesheet" href="style.css">
		
		<!-- Title -->
		<title><jsp:include page="header/projectTitle.jsp"/></title>
		
		<!-- Favicon -->
		<link rel="icon" href="img/core-img/favicon.ico">
</head>
<body>
<jsp:include page="header\mainMenu.jsp"></jsp:include>

<div class="row">
		<div class="col-md-2"></div>
			<div class="col-md-8" align="center">
				<div class="table-responsive">
					<form method="POST" name="ureg">
						<table class="table">
							<tr>
								<th>Full Name</th>
								<td><input type="text" class="form-control" name="name" required></td>
							</tr>							
							
							<tr>
								<th>Mobile</th>
								<td><input type="text" class="form-control" name="mobile" onblur="return Validate()" required></td>
							</tr>
							<tr>
								<th>address</th>
								<td><input type="text" class="form-control" name="address" onblur="return validEmail()" required></td>
							</tr>

							<tr>
								<th></th>
								<td><button type="button" class="btn btn-success" onclick="addUser()">Add Account</button></td>
							</tr>
							
							
						</table>
					</form>
				</div>
			</div>
		</div>
</body>
</html>