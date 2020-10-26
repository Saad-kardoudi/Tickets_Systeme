<%-- 
    Document   : Index_Tech
    Created on : 28 mai 2020, 18:27:47
    Author     : LEGION
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@include file="../Utils/check_connextion.jsp" %>
<%if(session.getAttribute("team").toString().equals("4")==true||session.getAttribute("team").toString().equals("5")==true){
%><%@include file="../Utils/to_index.jsp" %><%
}%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

        <%@include file="../Utils/Menu_Bar.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body style="background: rgb(209,62,99);background: linear-gradient(145deg, rgba(209,62,99,1) 00%, rgba(255,239,0,1) 100%);background-repeat: no-repeat;height: 100vh;">
      <div  class="container " style="margin-top: 5vh;display: grid;grid-template-columns: auto auto ;padding: 0px;">
            <div class=""id="curve_chart" style="width: 100% ; height: 250px">
                
            </div>
            
        </div>
        
    <script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Tickets", "Count", { role: "style" } ],
        <% String team = session.getAttribute("team").toString();
            ResultSet rs1=CNX.CNX.Select_requwest("SELECT count(ID_TICKET) FROM TICKET WHERE ID_EQUIPE="+team+" and ETAT='Opened'");
            rs1.next();
        %>
        ["Opend",<%=rs1.getString(1)%>, "#dc3545"],
                <%rs1=CNX.CNX.Select_requwest("SELECT count(ID_TICKET) FROM TICKET WHERE ID_EQUIPE="+team+" and ETAT='Waiting'");
            rs1.next();%>
        ["Waiting",<%=rs1.getString(1)%>, "#ffc107"],
                <%rs1=CNX.CNX.Select_requwest("SELECT count(ID_TICKET) FROM TICKET WHERE ID_EQUIPE="+team+" and ETAT='Resolute'");
            rs1.next();%>
        ["Resolute",<%=rs1.getString(1)%>, "#28a745"]
        
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Tickets",       
        bar: {groupWidth: "95%"},
        legend: { position: "none" }
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("curve_chart"));
      chart.draw(view, options);
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
                                    ResultSet rs2 =CNX.CNX.Select_requwest("SELECT * FROM TICKER.EQUIPE");
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
</html>
