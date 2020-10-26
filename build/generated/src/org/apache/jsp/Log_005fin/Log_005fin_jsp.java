package org.apache.jsp.Log_005fin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Log_005fin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
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
      out.write("         ");

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
    
      out.write("\n");
      out.write("        <title>Log in</title>\n");
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
      out.write("                <div class=\"row\" style=\"margin-top: 30vh;\">\n");
      out.write("                    <div class=\"col-1\"></div>\n");
      out.write("                    <div class=\"col-5\">\n");
      out.write("                        <form action=\"Log_inS.jsp\">\n");
      out.write("                <div class=\"form-group\" >\n");
      out.write("                    <label style=\"color: \">User Name : </label>\n");
      out.write("                    <input class=\"form-control\" type=\"text\"value=\"");
      out.print(user);
      out.write("\" name=\"user\" required=\"\" placeholder=\"User Name\"/>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\" >\n");
      out.write("                    <label>Password : </label>\n");
      out.write("                    <input class=\"form-control\" type=\"Password\"value=\"");
      out.print(password);
      out.write("\" name=\"password\" required=\"\" placeholder=\"Password\"/>\n");
      out.write("                </div>\n");
      out.write("                            <button type=\"submit\" class=\"btn\">Login</button>\n");
      out.write("                  <a href=\"Sign_up.jsp\" class=\"btn\">Create an acount</a>\n");
      out.write("            </form>\n");
      out.write("                        <div class=\"alert alert-danger alert-dismissible fade show\"style=\"display: ");
      out.print(dis);
      out.write(";margin-top: 20px;\"  role=\"alert\">\n");
      out.write("                        ");
      out.print(error);
      out.write("\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n");
      out.write("                          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                        </button>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-6\">\n");
      out.write("                                   </div>\n");
      out.write("                   \n");
      out.write("            </div>\n");
      out.write("             </div>         \n");
      out.write("        \n");
      out.write("    </body>\n");
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
