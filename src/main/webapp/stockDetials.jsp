<%@page import="com.project.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title><jsp:include page="header/projectTitle.jsp" /></title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="style.css">
<style>
        /* CSS for modal dialog */
        .modal {
        margin-top:50px;
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 10% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
        }
    </style>
<script type="text/javascript">
function addStockPage(){
	  // Fetch content from popup.jsp using AJAX
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                // On success, show modal dialog with fetched content
                document.getElementById("modal-content").innerHTML = xhr.responseText;
                document.getElementById("myModal").style.display = "block";
            } else {
                // Handle errors
                console.error('Error fetching popup content:', xhr.status);
            }
        }
    };
    xhr.open('GET', 'addStockPage.jsp', true);
    xhr.send();
}
function addStock(){
	console.log("form javascript meth");
    // Get elements by name
    var nameElement = document.getElementsByName('pname')[0];
    var mobileElement = document.getElementsByName('qty')[0];
  
    var pname = nameElement.value;
    var qty = mobileElement.value;
    
    $.ajax({
        url: 'https://sudleshwarpashukhadya.up.railway.app/addStock', // Replace with your server endpoint
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
function updateStock(type){
	console.log("form javascript meth");
    // Get elements by name
    var nameElement = document.getElementsByName('pname')[0];
    var mobileElement = document.getElementsByName('qty')[0];
  
    var pname = nameElement.value;
    var qty = mobileElement.value;
    
    console.log("values are : " + pname + qty + type);
    
    $.ajax({
        url: 'https://sudleshwarpashukhadya.up.railway.app/updateStock', // Replace with your server endpoint
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
function updateStockpage(){
	 
          // Fetch content from popup.jsp using AJAX
          var xhr = new XMLHttpRequest();
          xhr.onreadystatechange = function() {
              if (xhr.readyState === XMLHttpRequest.DONE) {
                  if (xhr.status === 200) {
                      // On success, show modal dialog with fetched content
                      document.getElementById("modal-content").innerHTML = xhr.responseText;
                      document.getElementById("myModal").style.display = "block";
                  } else {
                      // Handle errors
                      console.error('Error fetching popup content:', xhr.status);
                  }
              }
          };
          xhr.open('GET', 'updateStock.jsp', true);
          xhr.send();
      }

      function closePopup() {
          document.getElementById("myModal").style.display = "none";
      }
</script>

</head>

<body>
	<!-- Preloader -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="lds-ellipsis">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<jsp:include page="header/mainMenu.jsp"></jsp:include>

	<section class="services-area section-padding-100-0">
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<h1 style="color: blue;">Stock Deatils</h1>
			</div>
		</div>
		<hr />
		<div class="row">
			<div class="col-md-12" align="center">
				<div class="table-responsive">
					<table class="table">
						<tr>
							<th>Product No</th>
							<th>Product Name</th>
							<th>QTY</th>
						</tr>
						<%
							Connection con = ConnectionProvider.getConnection();
							PreparedStatement ps = con.prepareStatement("SELECT * FROM stock");
							ResultSet rs = ps.executeQuery();
							int i = 0;
							while (rs.next()) 
							{
								i++;
						%>
						<tr>
							<td><%=rs.getString("pid") %></td>
							<td><%=rs.getString("pname") %></td>
							<td><%=rs.getString("qty") %></td>
						</tr>
						<%
						}
						%>
						<tr>
								<td>Total Bags In Shop</td>
								<td></td>
								<%
								PreparedStatement ps1 = con.prepareStatement("select sum(qty) as total from stock");
								ResultSet rs1 = ps1.executeQuery();
								rs1.next();
								%>
								<td><h4><%= rs1.getString("total") %></h4></td>
							</tr>
					</table>
				</div>


			</div>
		</div>
		<div>
		<button type="button" class="btn btn-success" onclick="addStockPage()">Add Product</button>
		<button type="button" class="btn btn-success" onclick="updateStockpage()">Update Stock</button>
		</div>
	</div>
	
	<!-- The Modal -->
	<div id="myModal" class="modal">
	
	  <!-- Modal content -->
	  <div class="modal-content">
	    <span class="close" onclick="closePopup()">&times;</span>
	    <div id="modal-content">
	        <!-- Content from popup.jsp will be loaded here -->
	    </div>
	  </div>
	
	</div>
	</section>
	<!-- ##### Services Area End ###### -->
	<br />
	<br />
	<br />


	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area section-padding-100-0"> <!-- Copywrite Area -->
	<div class="copywrite-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div
						class="copywrite-content d-flex flex-wrap justify-content-between align-items-center">
						<!-- Copywrite Text -->
						<p>Learning And Project Development Support</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!-- ##### Footer Area Start ##### -->

	<!-- ##### All Javascript Script ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>

</html>