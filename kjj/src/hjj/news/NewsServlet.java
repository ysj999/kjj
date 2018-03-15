package hjj.news;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class NewsServlet extends HttpServlet{
	HttpServletRequest requ = null;
	  HttpServletResponse resp = null;
	  HttpSession session = null;
	  String sql = null;
	  String status = null;
	  NewsDao ndao=new NewsDao();
	  String flag = "base/main.jsp";
	  int PageNum = 1;
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
  	    if ("prein".equals(this.status)) {
  	    	
  	        this.flag="WEB-INF/news/addcontent.jsp";
  	    }
  	    
  	    if ("in".equals(this.status)) {
  	        in();
  	    }
  	    
  	    if("premanage".equals(this.status)){
  	    	list();
  	    }
  	    
  	    if("project".equals(this.status)){
  	    	this.flag="WEB-INF/news/management-project.jsp";
  	    	project();
  	    }
  	    
  	    if("masg".equals(this.status)){
  	    	this.flag="WEB-INF/news/management-massage.jsp";
  	    	masg();
  	    }
  	    
  	    if ("delete".equals(this.status)) {
 	      delete();
 	     }
  	  
  	  }
    private void masg() {
    	try {
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	private void project() {
    	try {
    		
			this.flag="WEB-INF/news/management-project.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	public void in(){
    	
    	try {
			ndao.insert(buildVO());
			list();
		} catch (Exception e) {
			System.out.println("异常");
		}
    }
    
	public void list(){
		try {
			List<News> list = new ArrayList<News>();
			list = this.ndao.queryAll();
			this.requ.setAttribute("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.flag="WEB-INF/news/management-content.jsp";
    }
	
	  public void delete() {
  	    try {
  	      this.ndao.delete(buildVO());
  	      list();
  	    } catch (Exception e) {
  	      e.printStackTrace();
  	    }
  	  }
    public News buildVO() {
	    News n = new News();
	    String id = this.requ.getParameter("id");
	    String title=this.requ.getParameter("title");
    	String l1=this.requ.getParameter("l1");
    	String l2=this.requ.getParameter("l2");
    	String author=this.requ.getParameter("author");
    	String message=this.requ.getParameter("message");
	    if (id != null) {
	      n.setId(Integer.parseInt(id));
	    }
	    if (title != null) {
	      n.setTitle(title);
	    }
	    if (l1 != null) {
	      n.setL1(l1);
	    }
	    if (l2 != null) {
  	      n.setL2(l2);
  	    }
	    if(author !=null){
	    	n.setAuthor(author);
	    }
	    if(message !=null){
	    	n.setMessage(message);
	    }
	    return n;
	  }
    public void destory(){}
}
