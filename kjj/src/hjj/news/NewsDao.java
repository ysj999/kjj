package hjj.news;
import hjj.common.*;
import hjj.user.User;

import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpSession;


public class NewsDao {
       DataBaseConnection dbc=null;
       PreparedStatement pstmt=null;
       String sql=null;
       public void insert(News n)throws Exception{
    	   sql="insert into news(id,title,l1,l2,author,message) values(?,?,?,?,?,?)";
    	   try {
			dbc=new DataBaseConnection();
			   pstmt=dbc.getConnection().prepareStatement(sql);
			   pstmt.setInt(1,n.getId());
			   pstmt.setString(2,n.getTitle());
			   pstmt.setString(3,n.getL1());
			   pstmt.setString(4,n.getL2());
			   pstmt.setString(5,n.getAuthor());
			   pstmt.setString(6,n.getMessage());
			   pstmt.executeUpdate();
			   pstmt.close();
		} catch (Exception e) {
			System.out.println("添加内容异常");
		}finally{
			dbc.close();
		}
       }
       public void update(News n)throws Exception{
    	   sql="updata news set title=?,l1=?,l2=?,author=?,message=? where id=?";
    	   try {
			dbc=new DataBaseConnection();
			   pstmt=dbc.getConnection().prepareStatement(sql);
			   pstmt.setString(1, n.getTitle());
			   pstmt.setString(2,n.getL1());
			   pstmt.setString(3,n.getL2());
			   pstmt.setString(4,n.getAuthor());
			   pstmt.setString(5, n.getMessage());
			   pstmt.executeUpdate();
			   pstmt.close();
		} catch (Exception e) {
			System.out.println("更新失败");
			e.printStackTrace();
		}finally{
			dbc.close();
		}
       }
     
 
       public void delete(News n)throws Exception{
    	   sql="delete from news where id=?";
    	   try {
			   dbc=new DataBaseConnection();
			   pstmt=dbc.getConnection().prepareStatement(sql);
			   pstmt.setInt(1, n.getId());
			   pstmt.executeUpdate();
			   pstmt.close();
		} catch (Exception e) {
			System.out.println("删除功能异常");
		}finally{
			dbc.close();
		}
      }  

       public List<News> queryAll()throws Exception {
   		 dbc = new DataBaseConnection();
   		List<News> list = new ArrayList<News>();
   		sql ="select id,title,author,l1,l2,message from news";
   		try {
   			this.pstmt = dbc.getConnection().prepareStatement(sql);
   			ResultSet rs = this.pstmt.executeQuery();
   			while (rs.next()) {
   				News n = new News();
   				n.setId(rs.getInt(1));
   				n.setTitle(rs.getString(2));
   				n.setAuthor(rs.getString(3));
   				n.setL1(rs.getString(4));
   				n.setL2(rs.getString(5));
   				n.setMessage(rs.getString(6));
   				list.add(n);
   			}
   			rs.close();
   			this.pstmt.close();
   		} catch (Exception e) {
   		
   		} finally {
   			dbc.close();
   		}
   		return list;
   	}
       
}

