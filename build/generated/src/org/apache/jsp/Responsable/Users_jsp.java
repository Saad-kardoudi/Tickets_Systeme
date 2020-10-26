package org.apache.jsp.Responsable;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import CNX.CNX;

public final class Users_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/Responsable/../Utils/Menu_Bar.jsp");
    _jspx_dependants.add("/Responsable/../Utils/../Utils/Libs.jsp");
    _jspx_dependants.add("/Responsable/../Utils/../Utils/check_connextion.jsp");
    _jspx_dependants.add("/Responsable/../Utils/to_index.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\" integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"../Utils/jquery-3.5.0.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\" integrity=\"sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../Utils/Shot_cut-1.png\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store"); 
    response.setDateHeader("Expires", 0); 
    response.setHeader("Pragma","no-cache");
    if(session.getAttribute("user")==null){
        response.sendRedirect("../Log_in/Log_in.jsp");
        return;
    }else{
        if(session.getAttribute("valid").equals("Invalid")){
        response.sendRedirect("../Log_in/Log_in.jsp");
        return;
    }        
    }

      out.write('\n');
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                    <img src=\"../Utils/Shot_cut-1.png\" width=\"30\" height=\"30\" class=\"d-inline-block align-top\" alt=\"\" loading=\"lazy\">\n");
      out.write("                    icket\n");
      out.write("                  </a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                  <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                  <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../Utils/to_index.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    ");
if(session.getAttribute("team").toString().equals("4")==false){
      out.write("\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../Technician/Tickets.jsp\">Tickets</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../Technician/MyTickets.jsp\">My Tickets</a>\n");
      out.write("                    </li>\n");
      out.write("                        ");
if(session.getAttribute("team").toString().equals("5")==true){
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"../Responsable/Team_Tickets.jsp\">Team Tickets</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"../Responsable/Users.jsp\">Users</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                  </ul>\n");
      out.write("                  <form class=\"form-inline my-2 my-lg-0\">\n");
      out.write("                    <div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">\n");
      out.write("                        <button type=\"button\" class=\"btn btn-outline-primary\">");
      out.print(session.getAttribute("prenom")+" "+session.getAttribute("nom"));
      out.write("</button>                        \n");
      out.write("                        <a href=\"../Log_in/Log_out.jsp\" class=\"btn btn-outline-primary\">Log out</a>\n");
      out.write("                      </div>\n");
      out.write("                  </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("          </nav>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write('\n');
if(session.getAttribute("team").toString().equals("5")==false){

      out.write("\n");
      out.write("\n");
      out.write("\n");

   int team=Integer.parseInt(session.getAttribute("team").toString());
                   switch (team) {
                        case 1:
                          response.sendRedirect("../Technician/Index_Tech.jsp");
                          break;
                        case 2:
                          response.sendRedirect("../Technician/Index_Tech.jsp");
                          break;
                        case 3:
                          response.sendRedirect("../Technician/Index_Tech.jsp");
                          break;
                        case 4:
                          response.sendRedirect("../Emplyees/Index_User.jsp");
                          break;
                        case 5:
                          response.sendRedirect("../Responsable/Index_Respo.jsp");
                          break;  
                      }

      out.write('\n');

}
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Users</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background: rgb(209,62,99);background: linear-gradient(145deg, rgba(209,62,99,1) 00%, rgba(255,239,0,1) 100%);background-repeat: no-repeat;height: 100vh;\">\n");
      out.write("        <div class=\"container jumbotron\">\n");
      out.write("            <table class=\"table table-hover\" id=\"table\">\n");
      out.write("                <thead class=\"thead-light\">\n");
      out.write("                  <tr>\n");
      out.write("                     <th scope=\"col\">ID</th>\n");
      out.write("                     <th scope=\"col\">First name</th>\n");
      out.write("                     <th scope=\"col\">Last name</th>\n");
      out.write("                     <th scope=\"col\">CIN</th>\n");
      out.write("                     <th scope=\"col\">Team</th>\n");
      out.write("                     <th scope=\"col\">Validation</th>\n");
      out.write("                     <th scope=\"col\">User name</th>\n");
      out.write("                     \n");
      out.write("                     <th scope=\"col\">Action</th>\n");
      out.write("                  </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody >\n");
      out.write("                  ");
    
                      ResultSet rs = CNX.Select_requwest("SELECT ID_USER,PRENOM,NOM,CIN,LIBELLE,VALIDATION,USER_NAME,MOT_PASSE FROM TICKER.UTILISATEUR join TICKER.EQUIPE on EQUIPE.ID_EQUIPE=UTILISATEUR.ID_EQUIPE ");
                      while (rs.next()) {
                  
      out.write("  \n");
      out.write("                  <tr>                    \n");
      out.write("                    <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                    <td><div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">\n");
      out.write("                            <button type=\"button\" class=\"btn btn-info\" data-toggle=\"modal\" data-target=\"#Edit_modal\"\n");
      out.write("                                    data-id=\"");
      out.print(rs.getString(1));
      out.write("\"data-prenom=\"");
      out.print(rs.getString(2));
      out.write("\"data-nom=\"");
      out.print(rs.getString(3));
      out.write("\"data-cin=\"");
      out.print(rs.getString(4));
      out.write("\"data-team=\"");
      out.print(rs.getString(5));
      out.write("\"data-user=\"");
      out.print(rs.getString(5));
      out.write("\"data-password=\"");
      out.print(rs.getString(6));
      out.write("\"><img src=\"../Utile/icons8_edit_50px.png\" alt=\"\" width=\"20px\"height=\"20px\"/></button>                           \n");
      out.write("                            <button type=\"button\" class=\"btn btn-danger\"\n");
      out.write("                                    data-toggle=\"modal\" data-target=\"#Delete_modal\" data-id=\"");
      out.print(rs.getString(1));
      out.write("\"><img src=\"../Utile/icons8_trash_can_50px_1.png\" alt=\"\" width=\"20px\"height=\"20px\"/></button>\n");
      out.write("                          </div></td>\n");
      out.write("                  </tr>\n");
      out.write("                  ");
}
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("              </table>\n");
      out.write("        </div>\n");
      out.write("              \n");
      out.write("                <!--Edit Modal-->  \n");
      out.write("             <div class=\"modal fade\" id=\"Edit_modal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                <div class=\"modal-dialog\">\n");
      out.write("                  <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                      <h5 class=\"modal-title\" id=\"exampleModalLabel\">Edit</h5>\n");
      out.write("                      <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                        <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                      </button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <form id=\"Edit\">\n");
      out.write("                            <div class=\"form-group\" >\n");
      out.write("                    <label style=\"color: \">First Name : </label>\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"first_name\" required=\"\" placeholder=\"First Name\"/>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\" >\n");
      out.write("                    <label style=\"color: \">Last Name : </label>\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"last_name\" required=\"\" placeholder=\"Last Name\"/>\n");
      out.write("                </div>  \n");
      out.write("                <div class=\"form-group\" >\n");
      out.write("                    <label style=\"color: \">CIN : </label>\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"cin\" required=\"\" placeholder=\"CIN\"/>\n");
      out.write("                </div> \n");
      out.write("                            <div class=\"form-group\" >\n");
      out.write("                            <label style=\"color: \">Job : </label>\n");
      out.write("                <select class=\"form-control\"name=\"job\">\n");
      out.write("                    \n");
      out.write("                        <option selected=\"\" disabled=\"\">Select job type</option>\n");
      out.write("                        ");

                            ResultSet rs3 =CNX.Select_requwest("SELECT * FROM TICKER.EQUIPE");
                            while (rs3.next()) {                                    
                        
      out.write("<option value=\"");
      out.print(rs3.getString(1));
      out.write("\" >");
      out.print(rs3.getString(2));
      out.write("</option>");

                                }
                        
      out.write("\n");
      out.write("\t\t</select></div>     \n");
      out.write("                <div class=\"form-group\" >\n");
      out.write("                    <label style=\"color: \">Phone : </label>\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"phone\" required=\"\" placeholder=\"Phone\"type=\"text\"/>\n");
      out.write("                </div>             \n");
      out.write("                            \n");
      out.write("                 <div class=\"form-group\" >\n");
      out.write("                    <label style=\"color: \">User Name : </label>\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"user\" required=\"\" placeholder=\"User Name\"/>\n");
      out.write("                </div>           \n");
      out.write("                <div class=\"form-group\" >\n");
      out.write("                    <label>Password : </label>\n");
      out.write("                    <input class=\"form-control\" type=\"password\" name=\"password\" required=\"\" placeholder=\"Password\"/>\n");
      out.write("                </div>\n");
      out.write("                            <div id=\"Edit_repons\"></div>                           \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-footer\">\n");
      out.write("                        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                      <button type=\"button\" class=\"btn btn-primary\" id=\"Edit_save\">Save changes</button>\n");
      out.write("                    </div>\n");
      out.write("                  </form>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                <!-- Delete Modal -->\n");
      out.write("                <div class=\"modal fade\" id=\"Delete_modal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("                  <div class=\"modal-dialog\">\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("                      <div class=\"modal-header\">\n");
      out.write("                        <h5 class=\"modal-title\" id=\"exampleModalLabel\">InValide</h5>\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                        </button>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"modal-body\">\n");
      out.write("                          <form id=\"Delete\">\n");
      out.write("                              <h5>Are you sure that you want to Do this User?</h5> \n");
      out.write("                            <input type=\"text\" class=\"form-control\"value=\"\" required=\"\" name=\"id\" id=\"id_del\" placeholder=\"CIN\" hidden=\"\">\n");
      out.write("                            <select class=\"form-control\" name=\"valid\">\n");
      out.write("                                <option>Invalid</option>\n");
      out.write("                                <option>Valide</option>\n");
      out.write("                            </select>\n");
      out.write("                          </form>\n");
      out.write("                          <div id=\"Delete_repons\"></div>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"modal-footer\">\n");
      out.write("                          <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\"onclick=\"$('#Delete_repons').attr('style', 'display:none;');\">Close</button>\n");
      out.write("                        <button type=\"button\" class=\"btn btn-danger\"id=\"Delete_yes\">Yes</button>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("    <script>        \n");
      out.write("        $('#Edit_modal').on('show.bs.modal', function (event) {\n");
      out.write("            var button = $(event.relatedTarget); \n");
      out.write("            var prenom = button.data('prenom');\n");
      out.write("            var nom    = button.data('nom');\n");
      out.write("            var cin     = button.data('cin');            \n");
      out.write("            var sexe    = button.data('sexe');\n");
      out.write("            var user    = button.data('user');\n");
      out.write("            var password = button.data('password');\n");
      out.write("            $('#prenom').val(prenom);\n");
      out.write("            $('#nom').val(nom);\n");
      out.write("            $('#cin').val(cin);\n");
      out.write("            $('#cin0').val(cin);\n");
      out.write("            $('#sexe').val(sexe);\n");
      out.write("            $('#user').val(user);\n");
      out.write("            $('#user0').val(user);\n");
      out.write("            $('#password').val(password);                       \n");
      out.write("          });\n");
      out.write("        $('#Edit_modal').on('hide.bs.modal',function (){            \n");
      out.write("           $('#Edit_repons').attr('style', 'display:none;'); \n");
      out.write("        });\n");
      out.write("        $('#Delete_modal').on('show.bs.modal', function (event) {\n");
      out.write("            var button = $(event.relatedTarget);\n");
      out.write("            var id     = button.data('id');            \n");
      out.write("            $('#id_del').val(id);\n");
      out.write("        });\n");
      out.write("        $('#Delete_modal').on('hide.bs.modal',function (){\n");
      out.write("            $('#Delete_repons').attr('style', 'display:none;'); \n");
      out.write("        });\n");
      out.write("        $('#password_button').click(function (){\n");
      out.write("               var input = $('#password');\n");
      out.write("               var img=$('#eye');\n");
      out.write("                if (input.attr(\"type\") == \"password\") {\n");
      out.write("                  input.attr(\"type\", \"text\");\n");
      out.write("                  img.attr(\"src\",\"../Utils/icons8_hide_50px.png\");\n");
      out.write("                } else {\n");
      out.write("                  input.attr(\"type\", \"password\");\n");
      out.write("                  img.attr(\"src\",\"../Utils/icons8_eye_50px.png\");\n");
      out.write("                }              \n");
      out.write("          });\n");
      out.write("          $(document).ready(function (){\n");
      out.write("               $(\"#Edit_save\").click(function(){\n");
      out.write("               var data = $('#Edit').serialize();\n");
      out.write("                     $.ajax(\n");
      out.write("                             {\n");
      out.write("                               url:\"Edit_Client.jsp\",\n");
      out.write("                               \n");
      out.write("                               data:data,\n");
      out.write("                                   \n");
      out.write("                               \n");
      out.write("                               success:function(result){\n");
      out.write("                                   \n");
      out.write("                                   $(\"#Edit_repons\").html(result);\n");
      out.write("                               }\n");
      out.write("                                       \n");
      out.write("                             }\n");
      out.write("                             );\n");
      out.write("                     $('#Edit_repons').attr('style', 'display:block;');\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                 }\n");
      out.write("                  );\n");
      out.write("               $(\"#Delete_yes\").click(function(){\n");
      out.write("               var data = $('#Delete').serialize();\n");
      out.write("                     $.ajax(\n");
      out.write("                             {\n");
      out.write("                               url:\"../User/Valid_User.jsp.jsp\",\n");
      out.write("                               \n");
      out.write("                               data:data,\n");
      out.write("                                   \n");
      out.write("                               \n");
      out.write("                               success:function(result){\n");
      out.write("                                   \n");
      out.write("                                   $(\"#Delete_repons\").html(result);\n");
      out.write("                               }\n");
      out.write("                                       \n");
      out.write("                             }\n");
      out.write("                             );\n");
      out.write("                     $('#Delete_repons').attr('style', 'display:block;');\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                 }\n");
      out.write("                  );\n");
      out.write("      });          \n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css\">  \n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js\"></script>\n");
      out.write("        <script>\n");
      out.write("           $(document).ready( function () {\n");
      out.write("                $('#table').dataTable();\n");
      out.write("               $('#table_length').attr('style', 'display:none;');\n");
      out.write("                $('#table_info').attr('style', 'display:none;');                \n");
      out.write("               $(\"#table_filter label \").attr(\"style\",\"display: flex;\")\n");
      out.write("                $(\"[type='search']\").attr('class','form-control');\n");
      out.write("                $(\"[type='search']\").attr('placeholder','Search');\n");
      out.write("                $(\"#table_paginate span a\").attr('class','btn');\n");
      out.write("                } );\n");
      out.write("                \n");
      out.write("        </script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
