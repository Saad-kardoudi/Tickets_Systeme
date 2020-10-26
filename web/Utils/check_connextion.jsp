<%-- 
    Document   : check_connextion
    Created on : 26 mai 2020, 06:39:02
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store"); 
    response.setDateHeader("Expires", 0); 
    response.setHeader("Pragma","no-cache");
    if(session.getAttribute("user")==null){
        response.sendRedirect("../Log_in/Log_in.jsp");
        return;
    }else{
        if(session.getAttribute("valid").equals("Invalid")){
        response.sendRedirect("../Log_in/Log_in.jsp");
        return;
    }        
    }
%>
