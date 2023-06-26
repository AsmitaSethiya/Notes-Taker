<%@page import="com.entities.Note"%>
<%@page import="com.helper.factoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit your Note</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<h1>Edit Your Note</h1>
		<br />

		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = factoryProvider.getFactory().openSession();
			Note note = (Note) s.get(Note.class, noteId);
		%>
		<!-- add form -->
		<form action="UpdateServlet" method="post">
		
		<input value="<%= note.getId() %>" name="noteId" type="hidden"/>
		
			<div class="form-group">
				<label for="title">Note Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=note.getTitle()%>">
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required name="content" class="form-control" id="content"
					placeholder="Enter your content here" style="height: 300px"><%= note.getContent() %>
				</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your note</button>
			</div>


		</form>

	</div>
	>
</body>
</html>