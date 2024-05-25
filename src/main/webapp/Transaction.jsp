<%@page import="com.project.connection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdk.nashorn.internal.runtime.GlobalFunctions"%>
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
						      <%
						      String flag = request.getParameter("flag");
						      if(flag.equals("N")){
						    	 
						      }else{
						    	  %>
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
								<th>Comment</th>
								<td><input type="text" class="form-control" name="comment" onblur="return Validate()" required></td>
							</tr>
						    	  <%
						    	  
						      }
						      %>
								
							<tr>
								<th>Amount</th>
								<td><input type="text" class="form-control" name="amount" onblur="return Validate()" required></td>
							</tr>
							<tr>
								<th></th>
								<td><button type="button" class="btn btn-success" onclick="doTransaction()">Submit</button></td>
							</tr>
							
							
						</table>
					</form>
				</div>
			</div>
		</div>
</body>
</html>