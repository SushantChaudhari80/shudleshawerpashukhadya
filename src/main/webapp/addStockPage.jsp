<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
 <script type="text/javascript">
		function addStock(){
			console.log("form javascript meth");
		    // Get elements by name
            var nameElement = document.getElementsByName('pname')[0];
            var mobileElement = document.getElementsByName('qty')[0];
          
            var pname = nameElement.value;
            var qty = mobileElement.value;
            
            $.ajax({
                url: 'http://angelic-perception-production.up.railway.app/addStock', // Replace with your server endpoint
                type: 'POST',
                data: {
                    pname: pname,
                    qty: qty,
                    
                },
                success: function(response) {
                    // Handle the response from the server
                    alert('Form submitted successfully: ' + response);
                    window.location.href = 'stockDetials.jsp';
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    // Handle any errors that occurred during the AJAX request
                    alert('Error submitting form: ' + textStatus);
                }
            });
	      }
		 
		
		</script>
</head>
<body>
<div class="row">
		<div class="col-md-2"></div>
			<div class="col-md-8" align="center">
				<div class="table-responsive">
					<form method="POST" name="ureg">
						<table class="table">
							<tr>
								<th>Product Name</th>
								<td><input type="text" class="form-control" name="pname" required></td>
							</tr>							
							
							<tr>
								<th>Quantity</th>
								<td><input type="text" class="form-control" name="qty" onblur="return Validate()" required></td>
							</tr>
							<tr>
								<th></th>
								<td><button type="button" class="btn btn-success" onclick="addStock()">Add Stock</button></td>
							</tr>
							
							
						</table>
					</form>
				</div>
			</div>
		</div>
</body>
</html>