package hjj.person;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class PersonServlet extends HttpServlet{
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
	    if (this.status.equals("premember")) {
	        this.flag="WEB-INF/person/addmember.jsp";
	    }
	    if (this.status.equals("in")) {
	       
	    }
	    if(this.status.equals("premembermanage")){
	    	this.flag="WEB-INF/person/management-member.jsp";
	    }
	    if(this.status.equals("manage")){}
	  }
}
