/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.84
 * Generated at: 2022-12-21 14:00:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class testdesign_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/all_Component/allCss.jsp", Long.valueOf(1671004990877L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css\"\r\n");
      out.write("	integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\"\r\n");
      out.write("	crossorigin=\"anonymous\">\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\"\r\n");
      out.write("	integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\"\r\n");
      out.write("	crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script\r\n");
      out.write("	src=\"https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js\"\r\n");
      out.write("	integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\"\r\n");
      out.write("	crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script\r\n");
      out.write("	src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js\"\r\n");
      out.write("	integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\"\r\n");
      out.write("	crossorigin=\"anonymous\"></script>\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\"\r\n");
      out.write("	integrity=\"sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==\"\r\n");
      out.write("	crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("	\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"all_Component/style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<section class=\"h-100 h-custom\" style=\"background-color: #eee;\">\r\n");
      out.write("  <div class=\"container py-5 h-100\">\r\n");
      out.write("    <div class=\"row d-flex justify-content-center align-items-center h-100\">\r\n");
      out.write("      <div class=\"col\">\r\n");
      out.write("        <div class=\"card\">\r\n");
      out.write("          <div class=\"card-body p-4\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("              <div class=\"col-lg-5\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"card bg-primary text-white rounded-3\">\r\n");
      out.write("                  <div class=\"card-body\">\r\n");
      out.write("                    <div class=\"d-flex justify-content-between align-items-center mb-4\">\r\n");
      out.write("                      <h5 class=\"mb-0\">Card details</h5>\r\n");
      out.write("                      <img src=\"https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-6.webp\"\r\n");
      out.write("                        class=\"img-fluid rounded-3\" style=\"width: 45px;\" alt=\"Avatar\">\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <p class=\"small mb-2\">Card type</p>\r\n");
      out.write("                    <a href=\"#!\" type=\"submit\" class=\"text-white\"><i\r\n");
      out.write("                        class=\"fab fa-cc-mastercard fa-2x me-2\"></i></a>\r\n");
      out.write("                    <a href=\"#!\" type=\"submit\" class=\"text-white\"><i\r\n");
      out.write("                        class=\"fab fa-cc-visa fa-2x me-2\"></i></a>\r\n");
      out.write("                    <a href=\"#!\" type=\"submit\" class=\"text-white\"><i\r\n");
      out.write("                        class=\"fab fa-cc-amex fa-2x me-2\"></i></a>\r\n");
      out.write("                    <a href=\"#!\" type=\"submit\" class=\"text-white\"><i class=\"fab fa-cc-paypal fa-2x\"></i></a>\r\n");
      out.write("\r\n");
      out.write("                    <form class=\"mt-4\">\r\n");
      out.write("                      <div class=\"form-outline form-white mb-4\">\r\n");
      out.write("                        <input type=\"text\" id=\"typeName\" class=\"form-control form-control-lg\" siez=\"17\"\r\n");
      out.write("                          placeholder=\"Cardholder's Name\" />\r\n");
      out.write("                        <label class=\"form-label\" for=\"typeName\">Cardholder's Name</label>\r\n");
      out.write("                      </div>\r\n");
      out.write("\r\n");
      out.write("                      <div class=\"form-outline form-white mb-4\">\r\n");
      out.write("                        <input type=\"text\" id=\"typeText\" class=\"form-control form-control-lg\" siez=\"17\"\r\n");
      out.write("                          placeholder=\"1234 5678 9012 3457\" minlength=\"19\" maxlength=\"19\" />\r\n");
      out.write("                        <label class=\"form-label\" for=\"typeText\">Card Number</label>\r\n");
      out.write("                      </div>\r\n");
      out.write("\r\n");
      out.write("                      <div class=\"row mb-4\">\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                          <div class=\"form-outline form-white\">\r\n");
      out.write("                            <input type=\"text\" id=\"typeExp\" class=\"form-control form-control-lg\"\r\n");
      out.write("                              placeholder=\"MM/YYYY\" size=\"7\" id=\"exp\" minlength=\"7\" maxlength=\"7\" />\r\n");
      out.write("                            <label class=\"form-label\" for=\"typeExp\">Expiration</label>\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                          <div class=\"form-outline form-white\">\r\n");
      out.write("                            <input type=\"password\" id=\"typeText\" class=\"form-control form-control-lg\"\r\n");
      out.write("                              placeholder=\"&#9679;&#9679;&#9679;\" size=\"1\" minlength=\"3\" maxlength=\"3\" />\r\n");
      out.write("                            <label class=\"form-label\" for=\"typeText\">Cvv</label>\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                      </div>\r\n");
      out.write("\r\n");
      out.write("                    </form>\r\n");
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</section>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
