<%-- 
    Document   : Edit_User
    Created on : 1 juin 2020, 19:49:01
    Author     : LEGION
--%>

<%@page import="CNX.CNX"%>
<%@page import="CNX.Crud_User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id="",fist_name="",last_name="",cin="",user="",password="",job="",phone="";
    id=request.getParameter("id");
    fist_name=request.getParameter("first_name");
    last_name=request.getParameter("last_name");
    cin=request.getParameter("cin");
    user=request.getParameter("user");
    password=request.getParameter("password");
    job=request.getParameter("job");
    phone=request.getParameter("phone");
    String[] msg_type=Crud_User.User_edit(id,fist_name, last_name, cin, user, password, job, phone);    
    out.print(CNX.error(msg_type[0],msg_type[1]));
    
%>
