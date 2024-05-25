<%@page import="com.project.Config"%>
<%@page import="com.project.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
 <script type="text/javascript">
		function updateStock(type){
			console.log("form javascript meth");
		    // Get elements by name
            var nameElement = document.getElementsByName('pname')[0];
            var mobileElement = document.getElementsByName('qty')[0];
          
            var pname = nameElement.value;
            var qty = mobileElement.value;
            
            console.log("values are : " + pname + qty + type);
            
            $.ajax({
                url: 'http://angelic-perception-production.up.railway.app/updateStock', // Replace with your server endpoint
                type: 'POST',
                data: {
                    pid: pname,
                    qty: qty,
                    type: type,
                    
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
										<%
												Connection con = ConnectionProvider.getConnection();
												PreparedStatement ps = con.prepareStatement("SELECT * FROM stock");
												ResultSet rs = ps.executeQuery();
												int i = 0;
									      %>
										
								<td >
									 <select class="form-control" name="pname" required>
					                        <option value="">Select a product</option>
					                        <%while (rs.next()) 
											{
												i++; 
											%>
					                        <option value="<%=rs.getString("pid") %>"><%=rs.getString("pname") %></option>
					                       <%
												}
											%>
					                    </select>
								
								
										
							</td>
							</tr>							
							
							<tr>
								<th>Quantity</th>
								<td><input type="text" class="form-control" name="qty" onblur="return Validate()" required></td>
							</tr>
							<tr>
								<th></th>
								<td><button type="button" class="btn btn-success" onclick="updateStock(1)">Purches</button></td>
								<td><button type="button" class="btn btn-success" onclick="updateStock(2)">Sell</button></td>
							</tr>
							
						</table>
					</form>
				</div>
			</div>
		</div>
</body>
</html>