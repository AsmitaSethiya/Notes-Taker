<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<br />

		<h1>Please fill your note details</h1>

		<!-- add form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here">
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required name="content" class="form-control" id="content"
					placeholder="Enter your content here" style="height: 300px">
				</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>


		</form>

	</div>


</body>
</html>