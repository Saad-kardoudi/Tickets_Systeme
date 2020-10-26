package org.apache.jsp.Log_005fin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Sign_005fup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Log_in/../Utils/Libs.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">       \n");
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
      out.write("        <link rel=\"shortcut icon\" href=\"../Utils/Shot_cut-1.png\">\n");
      out.write("        <title>Sign up</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        <div class=\"row\"style=\"margin: 0px;\">\n");
      out.write("            \n");
      out.write("            <div class=\"col-6\"style=\"height:100vh;width: 50vh\">\n");
      out.write("                <div style=\"text-align: center\">\n");
      out.write("                    <img src=\"../Utils/logo-1.png\" height=\"420px\" style=\"margin-top: 15vh;margin-bottom: 5vh;\"/>\n");
      out.write("                    \n");
      out.write("                    <h6 >If there is a problem, it was solved before you think about it</h6>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-6  \"style=\"height: 100vh;margin: 0px;background: rgb(209,62,99);background: linear-gradient(145deg, rgba(209,62,99,1) 00%, rgba(255,239,0,1) 100%);\">\n");
      out.write("                <div class=\"row\" style=\"margin-top: 15vh;\">\n");
      out.write("                    <div class=\"col-1\"></div>\n");
      out.write("                    <div class=\"col-5\">\n");
      out.write("                        <form id=\"insert_client\">\n");
      out.write("                <div class=\"form-group\" >\n");
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

                            ResultSet rs =CNX.CNX.Select_requwest("SELECT * FROM TICKER.EQUIPE");
                            while (rs.next()) {                                    
                        
      out.write("<option value=\"");
      out.print(rs.getString(1));
      out.write("\" >");
      out.print(rs.getString(2));
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
      out.write("                            <button type=\"button\" id=\"insert_client_save\" class=\"btn\">Sign up</button>\n");
      out.write("                            <a href=\"Log_in.jsp\"  class=\"btn\">i have an acount</a>\n");
      out.write("            </form>\n");
      out.write("                     <div id=\"res\">\n");
      out.write("                                   </div>   \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-6\">\n");
      out.write("                                   </div>\n");
      out.write("                   \n");
      out.write("            </div>\n");
      out.write("             </div>         \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function() {\n");
      out.write("            $('#insert_client_save').click(function() {\n");
      out.write("                var data = $('#insert_client').serialize();\n");
      out.write("                     $.ajax(\n");
      out.write("                             {\n");
      out.write("                               url:\"../User/Insert_User.jsp\",\n");
      out.write("                               \n");
      out.write("                               data:data,\n");
      out.write("                                   \n");
      out.write("                               \n");
      out.write("                               success:function(result){\n");
      out.write("                                   \n");
      out.write("                                   $(\"#res\").html(result);\n");
      out.write("                               }\n");
      out.write("                                       \n");
      out.write("                             }\n");
      out.write("                             );  \n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("    </script>\n");
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
