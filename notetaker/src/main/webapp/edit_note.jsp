<%@page import="notebar.Note"%>
<%@page import="helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
  <div class="container ">
    <%@include file="Navbar.jsp" %>
    
    <h1>Edit Your Notes</h1>
    <%
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	Session s=FactoryProvider.getFactory().openSession();

	Note note= (Note)s.get(Note.class, noteId);
    
    
    %>
    <form action="UpdateServlet" method="post">

<input value="<%= note.getId() %> "name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title">Note Title</label>
				 <input required type="text"
					name="title" 
					class="form-control" 
					id="title"
					value="<%= note.getTitle() %>"
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
					><%= note.getContent() %></textarea>
			</div>
				<div class="container text-center"> 
				<button type="submit" class="btn btn-success">Save</button>
				</div>
		
		</form>
    </div>
    
 
</body>
</html>