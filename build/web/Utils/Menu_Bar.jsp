<%-- 
    Document   : Menu_Bar
    Created on : 26 mai 2020, 13:42:29
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../Utils/Libs.jsp" %>
        <%@include file="../Utils/check_connextion.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="../Utils/Shot_cut-1.png" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
                    icket
                  </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="../Utils/to_index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <%if(session.getAttribute("team").toString().equals("4")==false){%>
                    <li class="nav-item">
                        <a class="nav-link" href="../Technician/Tickets.jsp">Tickets</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Technician/MyTickets.jsp">My Tickets</a>
                    </li>
                        <%if(session.getAttribute("team").toString().equals("5")==true){%>
                        <li class="nav-item">
                            <a class="nav-link" href="../Responsable/Team_Tickets.jsp">Team Tickets</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../Responsable/Users.jsp">Users</a>
                        </li>
                        <%}%>
                    <%}%>
                  </ul>
                  <form class="form-inline my-2 my-lg-0">
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-outline-primary"><%=session.getAttribute("prenom")+" "+session.getAttribute("nom")%></button>                        
                        <a href="../Log_in/Log_out.jsp" class="btn btn-outline-primary">Log out</a>
                      </div>
                  </form>
                </div>
            </div>
          </nav>
    </body>
</html>
