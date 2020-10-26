<%-- 
    Document   : MyTickets
    Created on : 31 mai 2020, 01:30:16
    Author     : LEGION
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="CNX.CNX"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Utils/Menu_Bar.jsp" %>
<%if(session.getAttribute("team").toString().equals("4")==true){
%><%@include file="../Utils/to_index.jsp" %><%
}%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Tickets</title>
    </head>
        <body style="background: rgb(209,62,99);background: linear-gradient(145deg, rgba(209,62,99,1) 00%, rgba(255,239,0,1) 100%);background-repeat: no-repeat;height: 100vh;">
        <div class="container jumbotron" style="margin-top: 30px">
            <table class="table" id="table">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">ID Ticket</th>
                    <th scope="col">Team</th>
                    <th scope="col">Opning Date</th>                    
                    <th scope="col">Ticket's owner</th>
                    <th scope="col">State</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                  <%
                      String id_tech=session.getAttribute("id").toString();
                     ResultSet rs =CNX.Select_requwest("SELECT ID_TICKET ,LIBELLE,to_char(DATE_OVERTURE,'yyyy-MM-dd'),PRENOM,NOM ,ETAT,DESCRIPTION FROM TICKER.TICKET join UTILISATEUR ON UTILISATEUR.ID_USER=TICKET.ID_USER inner join EQUIPE on UTILISATEUR.ID_EQUIPE=EQUIPE.ID_EQUIPE WHERE TICKET.ID_TECH="+id_tech);                      
                       while (rs.next()) {
                  %>  
                  <tr>                    
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%> <%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td ><button type="button" class="btn"data-toggle="modal" data-target="#Attribue_Ticket" 
                    data-ticket="<%=rs.getString(1)%>"data-description="<%=rs.getString(7)%>" title="View Details"
                    <%if(rs.getString(6).equals("Resolute")){%>disabled=""<%}%>>
                            <img src="../Utils/icons8_view_details_50px.png" alt="View Detail"height="30px"/></button></td>
                
                  </tr>
                  <%}%>
                </tbody>
              </table>
        </div>
                <!-- NewTicket Modal -->
            <div class="modal fade" id="Attribue_Ticket" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ticket</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                      <form id='comment'>                    
                          <div class="form-group">
                            <label for="exampleFormControlTextarea1">Discription :</label>
                            <textarea class="form-control" name="decription"id="decription" maxlength="4000" rows="8" disabled=""></textarea>
                            <input type="text"hidden="" value=""name="id_ticket1" id="id_ticket"/>
                          </div>  
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Comment :</label>
                            <textarea class="form-control" name="comment"id="comment_add" maxlength="4000" rows="8" ></textarea>
                        </div>
                        <div class="form-group">
                            <select id="Etat"name="etat" class="form-control">
                                <option selected=""value="Waiting">Waiting</option>
                                <option value="Resolute">Resolute</option>
                            </select>
                        </div>                                  
                        </form>
                        <div id='Ticket_respond2' style="display: none"></div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary"id="save_comment">Attribue</button> 
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
    </body>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">    
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
        <script>
            $(document).ready(function (){ 
                $('#save_comment').click(function (){
               var data=$('#comment').serialize();
                  $.ajax(
                             {
                               url:"../Ticket/add_comment.jsp",
                               data:data,
                               success:function(result){                                   
                                   $("#Ticket_respond2").html(result);
                               }                                       
                             });
                $('#Ticket_respond2').attr('Style','display:block');
              }); 
              $('#Attribue_Ticket').on('hide.bs.modal',function (){                  
                  $('#Ticket_respond2').attr('Style','display:none');
              });
            });
            $('#Attribue_Ticket').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget); 
            var id_ticket  = button.data('ticket');            
            var description= button.data('description');           
            $('#id_ticket').val(id_ticket);            
            $('#decription').val(description);                       
          });
            $(document).ready( function () {
                $('#table').dataTable();
               $('#table_length').attr('style', 'display:none;');
                $('#table_info').attr('style', 'display:none;');                
               $("#table_filter label ").attr("style","display: flex;")
                $("[type='search']").attr('class','form-control');
                $("[type='search']").attr('placeholder','Search');
                $("#table_paginate span a").attr('class','btn');
                } );
        </script>
</html>
