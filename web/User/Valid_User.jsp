<%-- 
    Document   : Valid_User
    Created on : 2 juin 2020, 12:12:23
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id=request.getParameter("id");
    String valid=request.getParameter("valid");
    boolean rs =CNX.CNX.AMS_requwest("UPDATE UTILISATEUR SET VALIDATION='"+valid+"' WHERE ID_USER="+id+"");
    if(rs){
       out.print(CNX.CNX.error("success","<strong>Well done !</strong>data were added successfully"));
    }else{
       out.print(CNX.CNX.error("warning","<strong>Sorry !</strong>we had a problem, please try again"));
    }
%>
