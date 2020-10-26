<%-- 
    Document   : Index_Respo
    Created on : 31 mai 2020, 12:37:00
    Author     : LEGION
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../Utils/Menu_Bar.jsp" %>
        <%if(session.getAttribute("team").toString().equals("5")==false){
        %><%@include file="../Utils/to_index.jsp" %><%
        }%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <body style="background: rgb(209,62,99);background: linear-gradient(145deg, rgba(209,62,99,1) 00%, rgba(255,239,0,1) 100%);background-repeat: no-repeat;height: 100vh;">
      <div  class="container jumbotron" style="margin-top: 5vh;background-color: #fff;">
          <center><div id="columnchart_material" style="width: 800px; height: 500px;"></div></center>
             
            
        </div>
        <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Technician','Resolute','Waiting'],
          <%  String id=session.getAttribute("id").toString();
            ResultSet rs3 =CNX.CNX.Select_requwest("SELECT u.prenom||' '||u.nom,(SELECT count(ID_TICKET) FROM TICKET WHERE id_tech=u.id_user and ETAT='Waiting')as Waiting,(SELECT count(ID_TICKET) FROM TICKET WHERE id_tech=u.id_user and ETAT='Resolute')as Resolute FROM utilisateur u where id_equipe=(SELECT id_equipe FROM equipe where id_manager="+id+")");
                while (rs3.next()) {                       
                %>['<%=rs3.getString(1)%>',<%=rs3.getString(3)%>,<%=rs3.getString(2)%>],<%                             
                }%>
          
        ]);

        var options = {
          chart: {
            title: 'Tickets / Tech',
            subtitle: 'count of Tickets for every member of the team ',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
   
        <div class="container jumbotron" style="margin-top: 5vh;display: grid;grid-template-columns: auto auto;padding-top: 30px;padding-bottom: 30px;" >
          
                
              <div  style="display: inline-block;margin: 0px 20px ;width: 300px;cursor: pointer;display: grid;grid-template-columns: auto auto;"
                         data-toggle="modal" data-target="#NewTicket">
                  <img src="../Utils/icons8_ticket_50px.png" alt=""height="50px"/>
                  <div style="margin-left: 20px;"><h4>New Ticket</h4>
                      <p>Create a ticket for current problem .</p></div>
                </div>
            <a href="../Ticket/Follow_Ticket.jsp" style="display: inline-block;margin: 0px 20px ;width: 300px;text-decoration: none;color: #212529;display: grid;grid-template-columns: auto auto;">
                    <img src="../Utils/icons8_ticket_purchase_50px_1.png" alt=""height="50px"/>
                    <div style="margin-left: 20px;"><h4>Follow Your Ticket </h4>
                        <p>Consult the ticket already created.</p></div>
                    
                </a>
                
          
      </div>        
          <!-- NewTicket Modal -->
            <div class="modal fade" id="NewTicket" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">New Ticket</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                      <form id="Ticket">
                    <div class="form-group" >
                        <label style="color: ">Destination Team : </label>
                        <select class="form-control"name="team">

                            <option selected="" value="">Select Destination Team</option>
                                <%  String id_team=session.getAttribute("team").toString();
                                    ResultSet rs2 =CNX.CNX.Select_requwest("SELECT * FROM TICKER.EQUIPE WHERE ID_EQUIPE not like (SELECT ID_EQUIPE FROM TICKER.EQUIPE WHERE ID_MANAGER ="+id+") ");
                                    while (rs2.next()) {
                                        if(rs2.getString(1).equals("4")==false &&rs2.getString(1).equals("5")==false&&rs2.getString(1).equals(id_team)==false){
                                 %><option value="<%=rs2.getString(1)%>" ><%=rs2.getString(2)%></option><%           
                                        }                               
                                        }
                                %>
                        </select>
                    </div>
                          <div class="form-group">
                            <label for="exampleFormControlTextarea1">Discription :</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1"name="decription" maxlength="4000" rows="15"></textarea>
                          </div>
                    </form>
                        <div id="Ticket_respond"></div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary"id="Ticket_save">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
  </body>
  <script>
      $(document).ready(function() {
            $('#Ticket_save').click(function() {
                var data = $('#Ticket').serialize();
                     $.ajax(
                             {
                               url:"../Ticket/Insert_Ticket.jsp",
                               
                               data:data,
                                   
                               
                               success:function(result){
                                   
                                   $("#Ticket_respond").html(result);
                               }
                                       
                             }
                             );
                     $('#Ticket_respond').attr('style', 'display:block;');
                     
            });
            $('#NewTicket').on('hide.bs.modal',function (){
                $('#Ticket').trigger('reset');
                $('#Ticket_respond').attr('style', 'display:none;');
            });
        });
  </script>
    </body>
</html>
