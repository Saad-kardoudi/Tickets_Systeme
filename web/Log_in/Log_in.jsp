<%-- 
    Document   : Log_in
    Created on : 25 mai 2020, 15:05:52
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../Utils/Libs.jsp" %>
         <%
      String user="",password="" ,dis="none";
      String error=request.getParameter("error");
      if(error!=null){        
         user=request.getParameter("user");
         password=request.getParameter("password");
         if(error.equals("1")){
             error="<strong>Sorry !</strong> please check your User name and Password .";
             dis="block";
         }
         if(error.equals("2")){
            error="<strong>Sorry !</strong> please check your  Password.";
            dis="block";
         } 
         if(error.equals("3")){
            error="<strong>Sorry !</strong> but you acount isn't validated by the Admin .";
            dis="block";
         } 
      }
    %>
        <title>Log in</title>
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
                <div class="row" style="margin-top: 30vh;">
                    <div class="col-1"></div>
                    <div class="col-5">
                        <form action="Log_inS.jsp">
                <div class="form-group" >
                    <label style="color: ">User Name : </label>
                    <input class="form-control" type="text"value="<%=user%>" name="user" required="" placeholder="User Name"/>
                </div>
                <div class="form-group" >
                    <label>Password : </label>
                    <input class="form-control" type="Password"value="<%=password%>" name="password" required="" placeholder="Password"/>
                </div>
                            <button type="submit" class="btn">Login</button>
                  <a href="Sign_up.jsp" class="btn">Create an acount</a>
            </form>
                        <div class="alert alert-danger alert-dismissible fade show"style="display: <%=dis%>;margin-top: 20px;"  role="alert">
                        <%=error%>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                    </div>
                    <div class="col-6">
                                   </div>
                   
            </div>
             </div>         
        
    </body>
</html>
