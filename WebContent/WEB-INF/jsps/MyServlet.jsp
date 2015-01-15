<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Servlet JSP Project</title>
</head>
<%! 
	
/* public void jspInit(){
		String defaultUser = getServletConfig().getInitParameter("defaultUser");
		ServletContext context = getServletContext();
		context.setAttribute("defaultUser", defaultUser);
	} */
%>
<body>
	<% 
		String requestUsername = request.getParameter("username");
	
		if(requestUsername != null){
			pageContext.setAttribute("pageUsername", requestUsername, PageContext.PAGE_SCOPE);
			pageContext.setAttribute("sessionUsername", requestUsername, PageContext.SESSION_SCOPE);
			pageContext.setAttribute("applicationUsername", requestUsername, PageContext.APPLICATION_SCOPE);
		}
	
	%>
	Reqest Username is: <%= requestUsername %>
	Page Username is: <%= pageContext.getAttribute("pageUsername") %>
	Session Username is: <%= pageContext.getAttribute("sessionUsername") %>
	Application Username is: <%= pageContext.getAttribute("applicationUsername") %>
</body>

</html>