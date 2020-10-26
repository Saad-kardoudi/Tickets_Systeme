<%-- 
    Document   : Attribue_ticket
    Created on : 29 mai 2020, 16:18:59
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id_ticket,id_tech;
    id_ticket=request.getParameter("id_ticket0");
    id_tech=session.getAttribute("id").toString();
    boolean rs =CNX.CNX.AMS_requwest("UPDATE TICKET SET ETAT='Waiting' ,ATTRIBUTION='Attribue',ID_TECH="+id_tech+" WHERE ID_TICKET="+id_ticket+"");
    if(rs==true){
        %>        
        <form id='comment'>
          <div class="form-group">
                            <label for="exampleFormControlTextarea1">Comment :</label>
                            <textarea class="form-control" name="comment"id="comment_add" maxlength="4000" rows="8" ></textarea>
                            <input type="text" hidden=""name="id_ticket1" value="<%=id_ticket%>"/>
          </div>
            <div class="form-group">
                <select id="Etat"name="etat" class="form-control">
                    <option selected=""value="Waiting">Waiting</option>
                    <option value="Resolute">Resolute</option>
                </select>
            </div>
          <div class="form-group"style="float: right">
                <button type="button" id="save_comment"class="btn btn-primary">confirm</button>
            </div>          
        </form>
          <div id='Ticket_respond2' style="display: none"></div>
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
          });
        </script>
<%
    }else{
        out.print(CNX.CNX.error("warning","<strong>Sorry !</strong>we had a problem, please try again ")); 
    }
%>
