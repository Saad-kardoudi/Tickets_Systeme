<%-- 
    Document   : add_comment
    Created on : 29 mai 2020, 17:16:58
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String comment=request.getParameter("comment");
    String id_ticket=request.getParameter("id_ticket1");
    String etat=request.getParameter("etat");
    if(comment.isEmpty()==false){
        boolean rs=CNX.CNX.AMS_requwest("UPDATE TICKET SET ETAT='"+etat+"',COMMENTAIRE='"+comment+"',DATE_RESOLUTION=sysdate WHERE ID_TICKET="+id_ticket+"");
            if(rs){
                out.print(CNX.CNX.error("success","<strong>Well done !</strong> Your comment was added successfully"));
            }else{
                out.print(CNX.CNX.error("warning","<strong>Sorry !</strong>we had a problem, please try again ")); 
            }
    }else{
        out.print(CNX.CNX.error("danger","<strong>Sorry !</strong>you have to give a comment ")); 
    }
    
%>
