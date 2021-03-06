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
	<title>Soriana</title>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4" style="margin-bottom: 0px !important">
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

      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron" style="margin-bottom: 32px;">
        <div class="container">
          <h1 class="display-4">Welcome!</h1>
          <p>Create a customer entry, validate its contact and Id, or sign them up for our newsletter. Below are the options</p>
          <p><a class="btn btn-primary btn-lg" href="createCustomer.jsp" role="button">Create an entry &raquo;</a></p>
        </div>
      </div>

      <div class="container">
        <!-- Example row of columns -->
        <div class="row">
          <div class="col-md-4">
            <h2>Create</h2>
            <p>Personal and contact information are important for us to provide a better service. </p>
            <p><a class="btn btn-secondary" href="createCustomer.jsp" role="button">Register &raquo;</a></p>
          </div>
          <div class="col-md-4">
            <h2>Inquiry</h2>
            <p>Do you have your customer's Id but not their phone number or email? This is it. </p>
	            <p><a class="btn btn-secondary" href="#" role="button">View Information &raquo;</a></p>
          </div>
          <div class="col-md-4">
            <h2>Gift List</h2>
            <p>Verify your customer's age and find our if they can get an extra discount.</p>
            <p><a class="btn btn-secondary" href="#" role="button">Verify &raquo;</a></p>
          </div>
        </div>

        <hr>

      </div> <!-- /container -->

    </main>

    <footer class="container">
      <p>&copy; TCS Assignment 5 - Java Academy 2020</p>
    </footer>
    

</body>
</html>