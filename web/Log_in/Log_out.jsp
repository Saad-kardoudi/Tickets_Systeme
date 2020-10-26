<%-- 
    Document   : Log_out
    Created on : 26 mai 2020, 13:29:28
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    session.removeAttribute("user");
    session.removeAttribute("id");            
    session.removeAttribute("prenom");
    session.removeAttribute("nom");
    session.removeAttribute("job");
    session.removeAttribute("team");            
    session.removeAttribute("valid");
    session.invalidate();
    response.sendRedirect("Log_in.jsp");
%>
