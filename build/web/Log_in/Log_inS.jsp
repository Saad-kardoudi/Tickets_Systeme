<%-- 
    Document   : Log_inS
    Created on : 26 mai 2020, 06:17:25
    Author     : LEGION
--%>

<%@page import="CNX.CNX"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user=request.getParameter("user");
    String password=request.getParameter("password");
    String req="SELECT ID_USER,PRENOM,NOM,FONCTION,ID_EQUIPE,VALIDATION,MOT_PASSE FROM UTILISATEUR WHERE USER_NAME='"+user+"' ";
    ResultSet rs =CNX.Select_requwest(req);
    if(rs.next()){        
        if(password.equals(rs.getString(7))){
            if(rs.getString(6).equals("Valide")){
            session.setAttribute("user", user);
            session.setAttribute("id", rs.getString(1));            
            session.setAttribute("prenom", rs.getString(2));
            session.setAttribute("nom", rs.getString(3));
            session.setAttribute("job", rs.getString(4));
            session.setAttribute("team", rs.getString(5));            
            session.setAttribute("valid", rs.getString(6));
                response.sendRedirect("../Utils/to_index.jsp");            
            }else{
                RequestDispatcher dispatcher = request.getRequestDispatcher("Log_in.jsp?error=3");
               dispatcher.forward(request, response);
            }            
        }else{
           RequestDispatcher dispatcher = request.getRequestDispatcher("Log_in.jsp?error=2");
               dispatcher.forward(request, response); 
        }
    }else{        
          RequestDispatcher dispatcher = request.getRequestDispatcher("Log_in.jsp?error=1");
               dispatcher.forward(request, response);  
        }
%>
