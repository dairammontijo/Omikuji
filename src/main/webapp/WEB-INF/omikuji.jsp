<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Omikuji Form</title>
</head>
<body>
	
	<div class="container-sm">
		<div class="row m-auto p-4 mt-4">
			<div class="col-md-4 jumbotron offset-md-4 text-center">
		
				<h1>Send an Omikuji!</h1>
				
				<form action="/submitForm" method="post" class="form-group bg-dark text-center text-light">
					<label for="">Pick a number from 5 to 25</label>
					<input type="number" name="number" class="form-control" />
					<label for="">Enter the name of a city</label>
					<input type="text" name="city" class="form-control"/>
					<label for="">Enter the name of any real person.</label>
					<input type="text" name="personName" class="form-control"/>
					<label for="">Enter professional endeavor or hobby:</label>
					<input type="text" name="profession" class="form-control"/>
					<label for="">Enter any kind of living thing</label>
					<input type="text" name="livingThing" class="form-control"/>
					<label for="">Say something nice to someone:</label>
					<input type="text" name="textArea" class="form-control"/>
		
					<h2>Send and show a friend</h2>
					<button class="btn btn-warning w-20">Submit</button>
	
	
				</form>
			</div>
		</div>
	</div>
</body>
</html>