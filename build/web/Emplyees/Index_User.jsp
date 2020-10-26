<%-- 
    Document   : Index
    Created on : 26 mai 2020, 13:41:21
    Author     : LEGION
--%>

<%@page import="CNX.CNX"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Utils/Menu_Bar.jsp" %>
<%if(session.getAttribute("team").toString().equals("4")==false){
%><%@include file="../Utils/to_index.jsp" %><%
}%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    <script type="text/javascript">
     /* google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses', 'Profit'],
          ['2014', 1000, 400, 200],
          ['2015', 1170, 460, 250],
          ['2016', 660, 1120, 300],
          ['2017', 1030, 540, 350]
        ]);

        var options = {
          chart: {
            title: 'Company Performance',
            subtitle: 'Sales, Expenses, and Profit: 2014-2017',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }*/
    </script>
  </head>
  <body style="background: rgb(209,62,99);background: linear-gradient(145deg, rgba(209,62,99,1) 00%, rgba(255,239,0,1) 100%);background-repeat: no-repeat;height: 100vh;">
      <div class="container jumbotron" style="margin-top: 10vh;" >
          <center>
                
              <div  style="display: inline-block;margin: 10vh 30px ;width: 300px;cursor: pointer;"
                         data-toggle="modal" data-target="#NewTicket">
                  <img src="../Utils/icons8_ticket_50px.png" alt=""height="50px"/>
                    <h3>New Ticket</h3>
                    <p>Create a ticket for current problem .</p>
                </div>
              <a href="../Ticket/Follow_Ticket.jsp" style="display: inline-block;margin: 10vh 30px ;width: 300px;text-decoration: none;color: #212529;">
                    <img src="../Utils/icons8_ticket_purchase_50px_1.png" alt=""height="50px"/>
                    <h3>Follow Ticket </h3>
                    <p>Consult the ticket already created.</p>
                </a>
                </center>
          
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
