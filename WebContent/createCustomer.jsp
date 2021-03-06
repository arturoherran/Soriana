<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<title>Create entry</title>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
      <a class="navbar-brand" href="index.jsp" id="Soriana">Soriana</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="createCustomer.jsp">Create Customer <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">View Phone Number</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">View Id</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Verify age</a>
          </li>
        </ul>
      </div>
    </nav>

    <main role="main">
    
      <div class="container" style="margin-top: 32px; margin-bottom: 32px;">
      	
      	<form action="CreateCustomerServlet" method="post">
			<h1 class="h3 mb-3 font-weight-normal" style="text-align: center;">Create an entry</h1>

			<div class="form-group row">
				<label for="customerId" class="col-sm-3 col-form-label">ID</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="customerId" id="customerId" placeholder="Enter customer's Id">
				</div>
			</div>			
			<div class="form-group row">
				<label for="customerName" class="col-sm-3 col-form-label">Name</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="customerName" id="customerName" placeholder="Enter customer's name">
				</div>
			</div>      	
			<div class="form-group row">
				<label for="customerAge" class="col-sm-3 col-form-label">Age</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="customerAge" id="customerAge" placeholder="Enter customer's age">
				</div>
			</div>
			<div class="form-group row">
				<label for="customerNumber" class="col-sm-3 col-form-label">Phone number</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="customerNumber" id="customerNumber" placeholder="Enter customer's phone number">
				</div>
			</div>
			<div class="form-group row">
				<label for="customerEmail" class="col-sm-3 col-form-label">Email</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="customerEmail" id="customerEmail" placeholder="Enter customer's email">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-9 offset-sm-3">
					<button type="submit" class="btn btn-secondary btn-lg btn-block">Register new customer</button>
				</div>
				
			</div>

      	</form>
      	
   		<script type="text/javascript">

			String resultado = <%= request.getAttribute("newCustomer") %>	
			$(document).ready(function(){		
				if(!resultado)	
					break;
				else
					$('#successMsg').modal('show');
		    });
		</script>
      	
      	<div class="modal fade" id="successMsg" tabindex="-1" role="dialog" aria-labelledby="succesMsg" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="succesMsg">Modal title</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <p>${newCustomer} has been registered.</p>
		      </div>
		      <div class="modal-footer">
		        <a href="index.jsp"><button type="button" class="btn btn-primary">Go back to index</button></a>
		      </div>
		    </div>
		  </div>
		</div>
	
		</div> <!-- /container -->

   </main>

    <footer class="container">
      <p>&copy; TCS Assignment 5 - Java Academy 2020</p>
    </footer>
    

</body>
</html>