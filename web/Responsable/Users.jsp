<%-- 
    Document   : Users
    Created on : 1 juin 2020, 15:01:35
    Author     : LEGION
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="CNX.CNX"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Utils/Menu_Bar.jsp" %>
<%if(session.getAttribute("team").toString().equals("5")==false){
%><%@include file="../Utils/to_index.jsp" %><%
}%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
    </head>
    <body style="background: rgb(209,62,99);background: linear-gradient(145deg, rgba(209,62,99,1) 00%, rgba(255,239,0,1) 100%);background-repeat: no-repeat;height: 100vh;">
        <div class="container jumbotron">
            <table class="table table-hover" id="table">
                <thead class="thead-light">
                  <tr>
                     <th scope="col">ID</th>
                     <th scope="col">First name</th>
                     <th scope="col">Last name</th>
                     <th scope="col">CIN</th>
                     <th scope="col">Team</th>
                     <th scope="col">Validation</th>
                     <th scope="col">User name</th>
                     
                     <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody >
                  <%    
                      ResultSet rs = CNX.Select_requwest("SELECT ID_USER,PRENOM,NOM,CIN,LIBELLE,VALIDATION,USER_NAME,MOT_PASSE,UTILISATEUR.ID_EQUIPE,TELEPHONE_PRO FROM TICKER.UTILISATEUR join TICKER.EQUIPE on EQUIPE.ID_EQUIPE=UTILISATEUR.ID_EQUIPE ");
                      while (rs.next()) {
                  %>  
                  <tr>                    
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#Edit_modal"
                                    data-id="<%=rs.getString(1)%>"data-prenom="<%=rs.getString(2)%>"data-nom="<%=rs.getString(3)%>"data-cin="<%=rs.getString(4)%>"data-user="<%=rs.getString(7)%>"data-password="<%=rs.getString(8)%>"data-team="<%=rs.getString(9)%>"data-phone="<%=rs.getString(10)%>"><img src="../Utils/icons8_edit_50px.png" alt="" width="20px"height="20px"/></button>                           
                            <button type="button" class="btn btn-danger"
                                    data-toggle="modal" data-target="#Delete_modal" data-id="<%=rs.getString(1)%>"><img src="../Utils/icons8_trash_can_50px_1.png" alt="" width="20px"height="20px"/></button>
                          </div></td>
                  </tr>
                  <%}%>
                </tbody>
              </table>
        </div>
              
                <!--Edit Modal-->  
             <div class="modal fade" id="Edit_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Edit</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                        <form id="Edit">
                            <input type="text" class="form-control"value="" required="" name="id" id="id" placeholder="CIN" hidden="">
                            <div class="form-group" >
                    <label style="color: ">First Name : </label>
                    <input class="form-control" type="text" name="first_name"id="first_name" required="" placeholder="First Name"/>
                </div>
                <div class="form-group" >
                    <label style="color: ">Last Name : </label>
                    <input class="form-control" type="text" name="last_name"id="last_name" required="" placeholder="Last Name"/>
                </div>  
                <div class="form-group" >
                    <label style="color: ">CIN : </label>
                    <input class="form-control" type="text" name="cin"id="cin" required="" placeholder="CIN"/>
                </div> 
                            <div class="form-group" >
                            <label style="color: ">Job : </label>
                <select class="form-control"name="job"id="job">
                    
                        <option selected="" disabled="">Select job type</option>
                        <%
                            ResultSet rs3 =CNX.Select_requwest("SELECT * FROM TICKER.EQUIPE");
                            while (rs3.next()) {                                    
                        %><option value="<%=rs3.getString(1)%>" ><%=rs3.getString(2)%></option><%
                                }
                        %>
		</select></div>     
                <div class="form-group" >
                    <label style="color: ">Phone : </label>
                    <input class="form-control" type="text" name="phone"id="phone" required="" placeholder="Phone"type="text"/>
                </div>             
                            
                 <div class="form-group" >
                    <label style="color: ">User Name : </label>
                    <input class="form-control" type="text" name="user"id="user" required="" placeholder="User Name"/>
                </div> 
                <label>Password : </label>
                <div class="input-group mb-3">
                    <input type="password"id="password_add" class="form-control" placeholder="Password" name="password"  aria-describedby="button-addon2">
                  <div class="input-group-append">
                      <button class="btn btn-secondary" type="button" id="password_button_add"><img src="../Utils/icons8_eye_50px.png" id="eye_add"  alt="see"width="15px"height="15px"/></button>

                  </div>
                </div> 
                            <div id="Edit_repons"></div>                           
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-primary" id="Edit_save">Save changes</button>
                    </div>
                  </form>
                  </div>
                </div>
              </div>
                <!-- Delete Modal -->
                <div class="modal fade" id="Delete_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">InValide</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                          <form id="Delete">
                              <h5>Are you sure that you want to Do this User?</h5> 
                            <input type="text" class="form-control"value="" required="" name="id" id="id_del" placeholder="CIN" hidden="">
                            <select class="form-control" name="valid">
                                <option>Invalid</option>
                                <option>Valide</option>
                            </select>
                          </form>
                          <div id="Delete_repons"></div>
                      </div>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal"onclick="$('#Delete_repons').attr('style', 'display:none;');">Close</button>
                        <button type="button" class="btn btn-danger"id="Delete_yes">Yes</button>
                      </div>
                    </div>
                  </div>
                </div>
                
    </body>
    
    <script>        
        $('#Edit_modal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget); 
            var prenom = button.data('prenom');
            var nom    = button.data('nom');
            var cin     = button.data('cin');            
            var sexe    = button.data('team');
            var phone    = button.data('phone');
            var user    = button.data('user');
            var password = button.data('password');
            $('#first_name').val(prenom);
            $('#last_name').val(nom);
            $('#cin').val(cin);            
            $('#job').val(sexe);
            $('#user').val(user); 
            $('#phone').val(phone);
            $('#password_add').val(password);                       
          });
        $('#Edit_modal').on('hide.bs.modal',function (){            
           $('#Edit_repons').attr('style', 'display:none;'); 
        });
        $('#Delete_modal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget);
            var id     = button.data('id');            
            $('#id_del').val(id);
        });
        $('#Delete_modal').on('hide.bs.modal',function (){
            $('#Delete_repons').attr('style', 'display:none;'); 
        });
        $('#password_button_add').click(function (){
               var input = $('#password_add');
               var img=$('#eye_add');
                if (input.attr("type") == "password") {
                  input.attr("type", "text");
                  img.attr("src","../Utils/icons8_hide_50px.png");
                } else {
                  input.attr("type", "password");
                  img.attr("src","../Utils/icons8_eye_50px.png");
                }              
          });
          $(document).ready(function (){
               $("#Edit_save").click(function(){
               var data = $('#Edit').serialize();
                     $.ajax(
                             {
                               url:"../User/Edit_User.jsp",
                               
                               data:data,
                                   
                               
                               success:function(result){
                                   
                                   $("#Edit_repons").html(result);
                               }
                                       
                             }
                             );
                     $('#Edit_repons').attr('style', 'display:block;');
                     
                     
                 }
                  );
               $("#Delete_yes").click(function(){
               var data = $('#Delete').serialize();
                     $.ajax(
                             {
                               url:"../User/Valid_User.jsp",
                               
                               data:data,
                                   
                               
                               success:function(result){
                                   
                                   $("#Delete_repons").html(result);
                               }
                                       
                             }
                             );
                     $('#Delete_repons').attr('style', 'display:block;');
                     
                     
                 }
                  );
      });          
    </script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">  
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
        <script>
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
