<%-- 
    Document   : Follow_Ticket
    Created on : 27 mai 2020, 17:47:37
    Author     : LEGION
--%>

                    

<%@page import="CNX.CNX"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store"); 
    response.setDateHeader("Expires", 0); 
    response.setHeader("Pragma","no-cache");
    if(session.getAttribute("user")==null){
        response.sendRedirect("../Log_in/Log_in.jsp");        
    }else{if(session.getAttribute("valid").equals("Invalid")){
        response.sendRedirect("../Log_in/Log_in.jsp");
    }        
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../Utils/Menu_Bar.jsp" %>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Follow Ticket</title>
    </head>
    <body style="background: rgb(209,62,99);background: linear-gradient(145deg, rgba(209,62,99,1) 00%, rgba(255,239,0,1) 100%);background-repeat: no-repeat;height: 100vh;">
        <div class="container jumbotron" style="margin-top: 30px">
            <table class="table" id="table">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">ID Ticket</th>
                    <th scope="col">Opning Date</th>
                    <th scope="col">State</th>
                    <th scope="col">Team</th>
                    <th scope="col">Technician</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                 <%
                     String id_user=session.getAttribute("id").toString();
                     ResultSet rs =CNX.Select_requwest("SELECT ID_TICKET,to_char(DATE_OVERTURE,'yyyy-MM-dd'),ETAT,LIBELLE,TICKET.ID_EQUIPE,DESCRIPTION,COMMENTAIRE,(SELECT PRENOM||' '||NOM FROM UTILISATEUR WHERE ID_USER=ID_TECH) "
                             + "FROM TICKER.TICKET join EQUIPE on TICKET.ID_EQUIPE=EQUIPE.ID_EQUIPE WHERE ID_USER="+id_user);
                     while (rs.next()) {%>                             
                     <tr>
                         <td><%=rs.getString(1)%></td>
                         <td><%=rs.getString(2)%></td>
                         <td><%=rs.getString(3)%></td>
                         <td><%=rs.getString(4)%></td>
                         <td><%=rs.getString(8)%></td>
                         <td><button type="button" class="btn"data-toggle="modal" data-target="#DetailTicket" 
                                     data-comment="<%=rs.getString(7)%>"data-description="<%=rs.getString(6)%>"data-team="<%=rs.getString(5)%>"<%if(rs.getString(3).equals("Resolute")==false){%>disabled=""<%}%> title="View Details">
                            <img src="../Utils/icons8_view_details_50px.png" alt="View Detail"height="30px"/></button>
                         </td>
                     </tr>                        
                 <%}%>
                </tbody>
              </table>
        </div>
                <!-- NewTicket Modal -->
            <div class="modal fade" id="DetailTicket" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ticket</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                      <form id="Ticket">
                    <div class="form-group" >
                        <label style="color: ">Destination Team : </label>
                        <select class="form-control"name="team" id="team" disabled="">

                            <option selected="" value="">Select Destination Team</option>
                                <%
                                    ResultSet rs1 =CNX.Select_requwest("SELECT * FROM TICKER.EQUIPE");
                                    while (rs1.next()) {
                                        if(rs1.getString(1).equals("4")==false &&rs1.getString(1).equals("5")==false){
                                 %><option value="<%=rs1.getString(1)%>" ><%=rs1.getString(2)%></option><%           
                                        }                               
                                        }
                                %>
                        </select>
                    </div>
                          <div class="form-group">
                            <label for="exampleFormControlTextarea1">Discription :</label>
                            <textarea class="form-control" name="decription"id="decription" maxlength="4000" rows="8" disabled=""></textarea>
                          </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Comment : </label>
                            <textarea class="form-control" name="comment"id="comment" maxlength="4000" rows="8" disabled=""></textarea>
                          </div>
                    </form>
                        <div id="Ticket_respond"></div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
    </body>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">    
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
        <script>
            $('#DetailTicket').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget); 
            var team       = button.data('team');
            var comment    = button.data('comment');            
            var description= button.data('description');           
            $('#team').val(team);
            $('#comment').val(comment);            
            $('#decription').val(description);                       
          });
            $(document).ready( function () {
                $('#table').dataTable();
               $('#table_length').attr('style', 'display:none;');
                $('#table_info').attr('style', 'display:none;');                
               $("#table_filter label ").attr("style","display: flex;");
                $("[type='search']").attr('class','form-control');
                $("[type='search']").attr('placeholder','Search');
                $("#table_paginate span a").attr('class','btn');
                } );
        </script>
</html>

