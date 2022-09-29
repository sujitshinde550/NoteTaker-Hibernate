<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container" method="post">
		<%@include file="Navbar.jsp"%>
		<br>
		<h1>Please Add Your Notes</h1>
		<!-- This is add note form -->
		<form action="SaveNoteServlet" method="post">

			<div class="form-group">
				<label for="title">Note Title</label>
				 <input required type="text"
					name="title" 
					class="form-control" 
					id="title"
					aria-describedby="emailHelp" 
					placeholder="Enter Here" />
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required 
				id="content" 
				name="content"
				type="content"
					placeholder="Enter your content here" 
					class="form-control"
					style="height:300px;"
					></textarea>
			</div>
				<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
				</div>
		
		</form>
	</div>
</body>
</html>