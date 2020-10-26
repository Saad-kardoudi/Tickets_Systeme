<%-- 
    Document   : Insert_Client
    Created on : 22 mai 2020, 18:26:34
    Author     : LEGION
--%>

<%@page import="CNX.Crud_User"%>
<%@page import="CNX.CNX"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String fist_name="",last_name="",cin="",user="",password="",job="",phone="";
    fist_name=request.getParameter("first_name");
    last_name=request.getParameter("last_name");
    cin=request.getParameter("cin");
    user=request.getParameter("user");
    password=request.getParameter("password");
    job=request.getParameter("job");
    phone=request.getParameter("phone");
    String[] msg_type=Crud_User.User_insert(fist_name, last_name, cin, user, password, job, phone);
    if(msg_type[0].equals("success")){
        out.print(CNX.error(msg_type[0],msg_type[1]+" but you have to wit till the Admin valid it "));
    }else{
        out.print(CNX.error(msg_type[0],msg_type[1]));
    }
    

%>
