package hjj.front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hjj.news.NewsDao;

import hjj.web.WebDao;


@WebServlet("/front")

	public class FrontServlet extends HttpServlet
	{
	  HttpServletRequest req = null;
	  HttpServletResponse res = null;
	  HttpSession session = null;
	  String status = null;
	  String path = null;
	  NewsDao ndao = new NewsDao();
	  WebDao wdao = new WebDao();
	  int PageNum = 1;
	  final int front_size = 5;
	  
	  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    doPost(request, response);
		  }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
