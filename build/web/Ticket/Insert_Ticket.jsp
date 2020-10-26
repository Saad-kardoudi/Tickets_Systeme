<%-- 
    Document   : Insert_Ticket
    Created on : 27 mai 2020, 15:31:46
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  String team=null,decription=null,iduser=null;
     team=request.getParameter("team");
     decription= request.getParameter("decription");
     iduser=session.getAttribute("id").toString();
    if(team.isEmpty()==false){
       if(decription.isEmpty()==false){
           boolean rs =CNX.CNX.AMS_requwest("INSERT INTO TICKET VALUES((SELECT max(ID_TICKET)+1 FROM TICKET),'"+decription+"',sysdate,null,'Opened','non Attribue','"+team+"','"+iduser+"',null,null)");
           if (rs) {
               out.print(CNX.CNX.error("success","<strong>Well done !</strong> Your Ticket was added successfully"));    
               } else {
               out.print(CNX.CNX.error("warning","<strong>Sorry !</strong>we had a problem, please try again "));    
               }           
        }else{
           out.print(CNX.CNX.error("danger","<strong>Please</strong> check that you have given a desciption"));
        } 
    }else{
       out.print(CNX.CNX.error("danger","<strong>Please</strong> check that you have chosen a team"));
    }
    
%>
