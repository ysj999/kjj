package hjj.user;

import hjj.common.DataBaseConnection;

import java.sql.*;

import javax.servlet.http.*;
public class UserDao {
	HttpSession session = null;
	DataBaseConnection dbc=null;
	  PreparedStatement pstmt = null;
	  String sql = null;  
	  public boolean login(User u)throws Exception{
		  boolean flag=false;
		  sql="select * from user WHERE name=? and password=?";
		  try {
			dbc = new DataBaseConnection();
			pstmt = dbc.getConnection().prepareStatement(sql);
			
			pstmt.setString(1, u.getName());
			pstmt.setString(2, u.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setPassword(rs.getString(3));
				u.setEmail(rs.getString(4));
				flag = true;
				rs.close();
				pstmt.close();
			}
			
		} catch (Exception e) {
			System.out.println("登陆操作出现异常");
		}finally{
			
			dbc.close();
		}
		return flag;
		 
	  }
	  public void update(User u)throws Exception{
		   sql="update user SET password=?,email=? WHERE id=?";
		   try {
			dbc=new DataBaseConnection();
			   pstmt=dbc.getConnection().prepareStatement(sql);
			   pstmt.setString(1,u.getPassword());
			   pstmt.setString(2, u.getEmail());
			   pstmt.setInt(3, u.getId());
			  // System.out.println(u.getId());
			   pstmt.executeUpdate();
			   pstmt.close();
		} catch (Exception e) {
			  System.out.println("更新错误");
		}finally{
			dbc.close();
		}
		   
	  }
	 
}
