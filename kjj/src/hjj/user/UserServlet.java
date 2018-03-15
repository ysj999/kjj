package hjj.user;
import hjj.user.User;
import hjj.user.UserDao;

import javax.servlet.http.*;
import javax.servlet.*;

import java.io.*; 
@SuppressWarnings("serial")
public class UserServlet extends HttpServlet{
	  HttpServletRequest requ = null;
	  HttpServletResponse resp = null;
	  HttpSession session = null;
	  String sql = null;
	  String status = null;
	  UserDao udao = new UserDao();
	  String path = "login.jsp";
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
    	    this.requ.getRequestDispatcher(this.path).forward(this.requ, this.resp);
      }
      public void manage() {
    	    if (this.status.equals("prelogin")) {
    	    	
    	    	this.path = "WEB-INF/user/login.jsp";
    	    }
    	    if (this.status.equals("login")) {
    	      login();
    	    }
    	    if (this.status.equals("changePass")) {
    	 	    	
    	 	    this.path = "WEB-INF/user/password.jsp";
    	 	    }
    	    if(this.status.equals("pass")){
    	    	updatePass();
    	    }
    	 	if (this.status.equals("changeEmail")) {
    	 	        this.path ="WEB-INF/user/email.jsp";
    	 	    }
    	 	if(this.status.equals("email")){
    	 		   updateEmail();
    	 	}
    	 	
    	  }
      public void login(){
    	  String rand = null;
    	    String rand1 = null;
    	    if (this.requ.getParameter("urand") != null) {
    	      rand = this.requ.getParameter("urand");
    	      rand1 = (String)this.requ.getSession().getAttribute("rand");
    	      }
    	    try {
    	        User u = buildVO();
    	        if ((udao.login(u)) && (rand.equals(rand1))) {
    	        	this.session.setAttribute("id", Integer.valueOf(u.getId()));
    	            this.session.setAttribute("name", u.getName());
    	            this.session.setAttribute("password", u.getPassword());
    	            this.session.setAttribute("email", u.getEmail());
    	            this.session.setAttribute("user", u);
    	          this.path = "base/index.jsp";
    	        } else {
    	        	 String mes = rand1.equals(rand) ? "错误的用户名或密码" : "验证码错误";
    	             this.requ.setAttribute("meslogin", mes);
    	          this.path = "WEB-INF/user/login.jsp";
    	        }
    	      }
    	      catch (Exception e) {
    	        e.printStackTrace();
    	      }
      }
      public void updatePass(){
    	 
    	  String i=(String)this.session.getAttribute("password");
    	  String j=this.requ.getParameter("cpassword");
    	  String k=this.requ.getParameter("npassword");
    	  String l=this.requ.getParameter("rpassword");
    	  if(i.equals(j)&&(k.equals(l))){
    		   try {
    			   User u = buildVO();
    			   int id = (Integer) this.session.getAttribute("id");
    			   String email=(String) this.session.getAttribute("email");
    			   u.setId(id);
    			   u.setPassword(k);
    			   u.setEmail(email);
    			   this.udao.update(u);
    		       this.session.setAttribute("password", k);
    		       this.requ.setAttribute("mp", "密码修改成功");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	  }else{
    		  
    		  String msg = k.equals(l) ? "原密码输入错误！" : "确认密码与新密码不一致";
    	      this.requ.setAttribute("misp", msg);
    	  }
      }
      public void updateEmail(){
    	  
    	  String a=(String)this.session.getAttribute("email");
    	  String b=(String) this.session.getAttribute("password");
    	  String c=this.requ.getParameter("cemail");
    	  String d=this.requ.getParameter("ypassword");
    	  String e=this.requ.getParameter("nemail");
    	  if(a.equals(c)&&(b.equals(d))){
    		   try {
    			   
    			   User u = buildVO();
    			   int id = (Integer) this.session.getAttribute("id");
    			   System.out.println(id);
    			   u.setId(id);
    			   u.setPassword(d);
    			   u.setEmail(e);
    			   this.udao.update(u);
    		       this.session.setAttribute("email", e);
    		       this.requ.setAttribute("me", "邮箱修改成功");
			} catch (Exception ce) {
				// TODO Auto-generated catch block
			}
    	  }else{
    		  String msg = a.equals(c) ? "登陆密码错误" : "当前邮箱地址错误！";
    	      this.requ.setAttribute("mise", msg);
    		  
    	  }
      }
      
    
      
      public User buildVO() {
    	    User user = new User();
    	    String id = this.requ.getParameter("id");
    	    String name = this.requ.getParameter("uname");
    	    String password = this.requ.getParameter("upassword");
    	    String email = this.requ.getParameter("email");
    	    if (id != null) {
    	        user.setId(Integer.parseInt(id));
    	    }
    	    if (name != null) {
    	      user.setName(name);
    	    }
    	    if (password != null) {
    	      user.setPassword(password);
    	    }
    	    if (email != null) {
      	      user.setEmail(email);
      	    }
    	    return user;
    	  }
      public void destory(){}
}
