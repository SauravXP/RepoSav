package org.apache.jsp.actkar;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class agtSuperiorsDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../agt/daterangepicker.css\">\r\n");
      out.write("        <script type=\"text/javascript\" src=\"..//js/jquery-1.11.2.min.js\"></script>      \r\n");
      out.write("        <script type=\"text/javascript\" src=\"../agt/moment.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"../agt/daterangepicker.js\"></script>   \r\n");
      out.write("        <script type=\"text/javascript\" src=\"../js/bootstrap-select.min.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap-select.min.css\">\r\n");
      out.write("        <style>\r\n");
      out.write("            #container1 {\r\n");
      out.write("                background-color: #e2dada;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .centered-form {\r\n");
      out.write("                margin-top: 120px;\r\n");
      out.write("                margin-bottom: 120px;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .centered-form .panel {\r\n");
      out.write("                background: rgba(255, 255, 255, 0.8);\r\n");
      out.write("                box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .form-group\r\n");
      out.write("            {\r\n");
      out.write("                margin-bottom: 0.01px !important; /* change it as per your requirment */\r\n");
      out.write("            } \r\n");
      out.write("\r\n");
      out.write("            .agtput input[type=\"text\"] {\r\n");
      out.write("                height: 10px;\r\n");
      out.write("                font-size: 10px;\r\n");
      out.write("                line-height: 12px;\r\n");
      out.write("                -webkit-border-radius: 4px;\r\n");
      out.write("\r\n");
      out.write("                -moz-border-radius: 4px ;\r\n");
      out.write("                border-radius: 4px ;\r\n");
      out.write("                border-width: 5px 0px 5px 0px;\r\n");
      out.write("                padding: 8px;\r\n");
      out.write("            }   \r\n");
      out.write("            .selt select[type=\"selected\"]{\r\n");
      out.write("                height: 25px;\r\n");
      out.write("                font-size: 12px;\r\n");
      out.write("                line-height: 25px;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("            .level font{\r\n");
      out.write("                font-size:12px;\r\n");
      out.write("                font:medium;\r\n");
      out.write("            }\r\n");
      out.write("        </style>      \r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container\" id=\"container1\">\r\n");
      out.write("            <div class=\"row centered-form\">\r\n");
      out.write("                <!--   <div class=\"col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4\">-->\r\n");
      out.write("                <div class=\"col-xs-12 col-sm-8 col-md-7 col-sm-offset-3\">\r\n");
      out.write("                    <div class=\"panel panel-default panel-success\">\r\n");
      out.write("                        <div class=\"panel-heading\">\r\n");
      out.write("                            <h3 class=\"panel-title text-center \"><strong>Agent Superiors Details</strong></h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"panel-body\">\r\n");
      out.write("                            <form role=\"form\" method=\"POST\" action=\"AgtSuperCont.gar\">\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"spcode\">Superiors Code:</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"spcode\" class=\"agtput\" id=\"spcode\" required=\"\" placeholder=\"Superiors Code\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                                \r\n");
      out.write("                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-2\" for=\"cat\">Category</label>\r\n");
      out.write("                                    <div class=\"form-group col-sm-3 col-md-offset-2  \">\r\n");
      out.write("                                        <select class=\"form-control  input-group\"  name=\"cat\" >\r\n");
      out.write("                                            <option value=\"\" selected=\"selected\"  class=\"selt\" >-:Category:-</option>\r\n");
      out.write("                                            <option value=\"OF\">Officer</option>\r\n");
      out.write("                                            <option value=\"MA\">Manager</option>\r\n");
      out.write("\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div> \r\n");
      out.write("                                </div>                 \r\n");
      out.write("                                \r\n");
      out.write("\r\n");
      out.write("                   <!--             <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-3 small\" for=\"Anchal\">Category</label>\r\n");
      out.write("                                    <div class=\"col-xs-8\">\r\n");
      out.write("                                        <select name=\"Catetory\" class=\"col-sm-8  show-tick\" data-live-search=\"true\" id=\"Anchal\" >\r\n");
      out.write("                                            <option  value=\"\" selected=\"selected\" id=\"anch\" class=\"selt\" >Category</option>\r\n");
      out.write("                                            <option  value=\"Of\"  id=\"anch\" class=\"selt\" >Officer</option>\r\n");
      out.write("                                            <option  value=\"Ma\"  id=\"anch\" class=\"selt\" >Manager</option>\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>     -->\r\n");
      out.write("                   \r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"brn\">Branch</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"brn\" class=\"agtput\" id=\"brn\" required=\"\" placeholder=\"Branch\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"sname\">Name</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"sname\" class=\"agtput\" id=\"sname\" required=\"\" placeholder=\"Superior Name\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"addres\">Address</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small \"><input type=\"text\" name=\"addres\" class=\"agtput\" id=\"addres\" required=\"\" placeholder=\"Address\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"pagtcode\">PersonalAgentCode</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"pagtcode\" class=\"agtput\" id=\"pagtcode\" required=\"\" placeholder=\"Personal Agent Code\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>                \r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"phno\">Phone</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"phno\" class=\"agtput\" id=\"phno\" required=\"\" placeholder=\"Phone.No\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div> \r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"mobil\">Mobile</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"mobil\" class=\"agtput\" id=\"mobil\" required=\"\" placeholder=\"MobileNo\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"agnamnp\">NameInNepali</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"agnamnp\" class=\"agtput\" id=\"agnamen\" required=\"\" placeholder=\"नेपाली नाम\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"sqfdt\">QualifyDate</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"sqfdt\" class=\"agtput\" id=\"sqfdt\" required=\"\" placeholder=\"01/01/2016\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div> \r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"srnldt\">Renewal Date</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"srnldt\" class=\"agtput\" id=\"srnldt\" required=\"\" placeholder=\"01/01/2016\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div> \r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12 small\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-2\" for=\"crrsts\">CurrentStatus</label>\r\n");
      out.write("                                    <div class=\"form-group col-sm-7 col-md-7 col-sm-offset-2 \">\r\n");
      out.write("                                        <select class=\"form-control selt input-group show-tick\" data-width=\"fit\" > \r\n");
      out.write("                                            <option  value=\"\" selected=\"selected\" name=\"crrsts\" class=\"selt\" >Status</option>\r\n");
      out.write("                                            <option value=\"Q\">Qualified</option>\r\n");
      out.write("                                            <option value=\"NQ\">Not Qualified</option>\r\n");
      out.write("                                            <option value=\"R\">Renewed</option>\r\n");
      out.write("                                            <option value=\"NR\">Not Renewed</option>\r\n");
      out.write("                                            <option value=\"D\">Death</option>\r\n");
      out.write("                                            <option value=\"S\">Suspended</option>\r\n");
      out.write("                                            <option value=\"E\">Expelled</option>\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div> \r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-2\" for=\"compty\">Comm.Pay.Type</label>\r\n");
      out.write("                                    <div class=\"form-group col-sm-7 col-md-7 col-sm-offset-2 \">\r\n");
      out.write("                                        <select class=\"form-control selt input-group\" name=\"compty\">\r\n");
      out.write("                                            <option value=\"\" selected=\"selected\" id=\"compty\" class=\"selt\" >Pay Type</option>\r\n");
      out.write("                                            <option value=\"M\">CASH</option>\r\n");
      out.write("                                            <option value=\"F\">BANK</option>\r\n");
      out.write("\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div> \r\n");
      out.write("                                </div>                      \r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group\">\r\n");
      out.write("                                    <input type=\"text\" name=\"remarks\" id=\"remarks\" class=\"form-control input-sm\" placeholder=\"Remarks\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <hr class=\"\">\r\n");
      out.write("                                Superior Manager\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"mgrcod\">ManagerCode</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"mgrcod\" class=\"agtput\" id=\"smgrcod\" required=\"\" placeholder=\"Manager Code\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group col-xs-12\">\r\n");
      out.write("                                    <label class=\"control-label col-sm-4 small\" for=\"smgrcode\">Senior Manager</label>\r\n");
      out.write("                                    <div class=\"col-sm-1 small\"><input type=\"text\" name=\"smgrcod\" class=\"agtput\" id=\"smgrcod\" required=\"\" placeholder=\"Manager Code\">\r\n");
      out.write("                                        <span class=\"help-block\"></span>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>                        \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <!--        <div class=\"row\">\r\n");
      out.write("                                            <div class=\"col-xs-6 col-sm-6 col-md-6\">\r\n");
      out.write("                                                <div class=\"form-group\">\r\n");
      out.write("                                                    <input type=\"password\" name=\"password\" id=\"password\" class=\"form-control input-sm\" placeholder=\"Password\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-xs-6 col-sm-6 col-md-6\">\r\n");
      out.write("                                                <div class=\"form-group\">\r\n");
      out.write("                                                    <input type=\"password\" name=\"password_confirmation\" id=\"password_confirmation\" class=\"form-control input-sm\" placeholder=\"Confirm Password\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div> -->\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"col-xs-6 col-sm-6 col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <input type=\"Submit\" name=\"save\" id=\"save\" Value=\"SAVE\" class=\"form-control btn-sm btn-success\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-xs-6 col-sm-6 col-md-6\">\r\n");
      out.write("                                        <div class=\"form-group\">\r\n");
      out.write("                                            <input type=\"reset\" name=\"cancel\" id=\"cancel\" Value=\"Cancel\" class=\"form-control btn-sm btn-danger\" >\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!--    <input type=\"submit\" value=\"Register\" class=\"btn btn-info btn-block\"> -->\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("            $(function () {\r\n");
      out.write("                $('input[name=\"sqfdt\"]').daterangepicker({\r\n");
      out.write("                    singleDatePicker: true,\r\n");
      out.write("                    showDropdowns: true\r\n");
      out.write("                }\r\n");
      out.write("                );\r\n");
      out.write("            });\r\n");
      out.write("            $(function () {\r\n");
      out.write("                $('input[name=\"srnldt\"]').daterangepicker({\r\n");
      out.write("                    singleDatePicker: true,\r\n");
      out.write("                    showDropdowns: true\r\n");
      out.write("                }\r\n");
      out.write("                );\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
