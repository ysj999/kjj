package hjj.document;


import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class DocumentServlet extends HttpServlet{
	HttpServletRequest requ = null;
	  HttpServletResponse resp = null;
	  HttpSession session = null;
	  String sql = null;
	  String status = null;
	  String flag = "base/main.jsp";
  public void init(ServletConfig config)throws ServletException{}
  public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
	  this.doPost(req, res);
  }
  public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
	    res.setContentType("text/html");
	    req.setCharacterEncoding("utf-8");
	    this.requ = req;
	    this.resp = res;
	    this.session = req.getSession();
	    this.status = req.getParameter("status");
	    if (this.status != null) {
	      manage();
	    }
	    this.requ.getRequestDispatcher(this.flag).forward(this.requ, this.resp);
  }
  public void manage() {
	    if (this.status.equals("predo")) {
	        this.flag="WEB-INF/document/filesupload.jsp";
	    }
	    if (this.status.equals("premanagedo")) {
	    	this.flag="WEB-INF/document/management-files.jsp";
	    }
	    if(this.status.equals("precode")){
	    	this.flag="WEB-INF/document/management-code.jsp";
	    }
	    if(this.status.equals("pres")){
	    	this.flag="WEB-INF/document/filesstructure.jsp";
	    }
	  }
}
