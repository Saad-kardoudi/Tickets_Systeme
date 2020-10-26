<%-- 
    Document   : to_index
    Created on : 28 mai 2020, 17:02:34
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   int team=Integer.parseInt(session.getAttribute("team").toString());
                   switch (team) {
                        case 1:
                          response.sendRedirect("../Technician/Index_Tech.jsp");
                          break;
                        case 2:
                          response.sendRedirect("../Technician/Index_Tech.jsp");
                          break;
                        case 3:
                          response.sendRedirect("../Technician/Index_Tech.jsp");
                          break;
                        case 4:
                          response.sendRedirect("../Emplyees/Index_User.jsp");
                          break;
                        case 5:
                          response.sendRedirect("../Responsable/Index_Respo.jsp");
                          break;  
                      }
%>
