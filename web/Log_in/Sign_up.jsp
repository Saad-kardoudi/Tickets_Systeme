<%-- 
    Document   : Log_in
    Created on : 25 mai 2020, 15:05:52
    Author     : LEGION
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <%@include  file="../Utils/Libs.jsp" %>
        <link rel="shortcut icon" href="../Utils/Shot_cut-1.png">
        <title>Sign up</title>
    </head>
    <body>
       
        <div class="row"style="margin: 0px;">
            
            <div class="col-6"style="height:100vh;width: 50vh">
                <div style="text-align: center">
                    <img src="../Utils/logo-1.png" height="420px" style="margin-top: 15vh;margin-bottom: 5vh;"/>
                    
                    <h6 >If there is a problem, it was solved before you think about it</h6>
                </div>
            </div>
            <div class="col-6  "style="height: 100vh;margin: 0px;background: rgb(209,62,99);background: linear-gradient(145deg, rgba(209,62,99,1) 00%, rgba(255,239,0,1) 100%);">
                <div class="row" style="margin-top: 15vh;">
                    <div class="col-1"></div>
                    <div class="col-5">
                        <form id="insert_client">
                <div class="form-group" >
                    <label style="color: ">First Name : </label>
                    <input class="form-control" type="text" name="first_name" required="" placeholder="First Name"/>
                </div>
                <div class="form-group" >
                    <label style="color: ">Last Name : </label>
                    <input class="form-control" type="text" name="last_name" required="" placeholder="Last Name"/>
                </div>  
                <div class="form-group" >
                    <label style="color: ">CIN : </label>
                    <input class="form-control" type="text" name="cin" required="" placeholder="CIN"/>
                </div> 
                            <div class="form-group" >
                            <label style="color: ">Job : </label>
                <select class="form-control"name="job">
                    
                        <option selected="" disabled="">Select job type</option>
                        <%
                            ResultSet rs =CNX.CNX.Select_requwest("SELECT * FROM TICKER.EQUIPE");
                            while (rs.next()) {                                    
                        %><option value="<%=rs.getString(1)%>" ><%=rs.getString(2)%></option><%
                                }
                        %>
		</select></div>     
                <div class="form-group" >
                    <label style="color: ">Phone : </label>
                    <input class="form-control" type="text" name="phone" required="" placeholder="Phone"type="text"/>
                </div>             
                            
                 <div class="form-group" >
                    <label style="color: ">User Name : </label>
                    <input class="form-control" type="text" name="user" required="" placeholder="User Name"/>
                </div>           
                <div class="form-group" >
                    <label>Password : </label>
                    <input class="form-control" type="password" name="password" required="" placeholder="Password"/>
                </div>
                            <button type="button" id="insert_client_save" class="btn">Sign up</button>
                            <a href="Log_in.jsp"  class="btn">i have an acount</a>
            </form>
                     <div id="res">
                                   </div>   
                    </div>
                    <div class="col-6">
                                   </div>
                   
            </div>
             </div>         
        
    </body>
    <script>
        $(document).ready(function() {
            $('#insert_client_save').click(function() {
                var data = $('#insert_client').serialize();
                     $.ajax(
                             {
                               url:"../User/Insert_User.jsp",
                               
                               data:data,
                                   
                               
                               success:function(result){
                                   
                                   $("#res").html(result);
                               }
                                       
                             }
                             );  
            });
        });
    </script>
</html>
