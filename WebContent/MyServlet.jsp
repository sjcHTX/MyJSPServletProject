<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Servlet JSP Project</title>
</head>
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
	<br>
	Page Username is: <%= pageContext.getAttribute("pageUsername") %>
	<br>
	Session Username is: <%= pageContext.getAttribute("sessionUsername") %>
	<br>
	Session Username is: <%= request.getSession().getAttribute("sessionUsername") %>
	<br>
	Application Username is: <%= pageContext.getAttribute("applicationUsername") %>
	<br>
	Application Username is: <%= request.getServletContext().getAttribute("applicationUsername") %>
	<br>
	<% 
/* 		Enumeration<String> parameterNames = getServletConfig().getInitParameterNames(); 
		while(parameterNames.hasMoreElements()){
			out.println("ServletConfig Parameter name = " + parameterNames.nextElement());
		}
		
		Enumeration<String> parameterNames2 = getServletContext().getInitParameterNames(); 
		while(parameterNames2.hasMoreElements()){
			out.println("ServletContext Parameter name = " + parameterNames2.nextElement());
		} */
		
		Enumeration<String> sessionAttributeNames = pageContext.getAttributeNamesInScope(PageContext.SESSION_SCOPE); 
		while(sessionAttributeNames.hasMoreElements()){
			out.println("Session Attribute name = " + sessionAttributeNames.nextElement());
		}
		
		Enumeration<String> applicationAttributeNames = pageContext.getAttributeNamesInScope(PageContext.APPLICATION_SCOPE); 
		while(applicationAttributeNames.hasMoreElements()){
			out.println("Application Attribute name = " + applicationAttributeNames.nextElement());
		}
	%>	
</body>

</html>