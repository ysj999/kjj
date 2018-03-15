package hjj.web;
import java.io.IOException;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
@SuppressWarnings("serial")
public class WebServlet extends HttpServlet{
	HttpServletRequest requ = null;
	  HttpServletResponse resp = null;
	  HttpSession session = null;
	  String sql = null;
	  String status = null;
	  WebDao wdao=new WebDao();
	  String flag = "base/index.jsp";
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
	    if (this.status.equals("preweb")) {
	        this.flag="WEB-INF/web/addlink.jsp";
	    }
	    if(this.status.equals("web")){
	    	webIn();
	    	list();
	    }
	    if (this.status.equals("premanage")) {
	    	list();
	    }
	    if(this.status.equals("pret")){
	    	this.flag="WEB-INF/web/linkteam.jsp";
	    }
	  }
  public void webIn(){
	  try {
			wdao.insert(buildVO());
			list();
		} catch (Exception e) {
			System.out.println("异常");
		}
  }
  public void list(){
	  try {
			List<Web> list = new ArrayList<Web>();
			list = this.wdao.queryAll();
			this.requ.setAttribute("vlist", list);
			this.flag="WEB-INF/web/management-link.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
  }
  public Web buildVO() {
	    Web w=new Web();
	    String id = this.requ.getParameter("id");
	    String name=this.requ.getParameter("name");
  	    String address=this.requ.getParameter("address");
  	  
	    if (id != null) {
	      w.setId(Integer.parseInt(id));
	    }
	    if (name != null) {
	      w.setName(name);
	    }
	    if (address != null) {
	      w.setAddress(address);
	    }
	    return w;
	  }
  public void destory(){}
}
