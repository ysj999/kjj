package hjj.web;
import hjj.common.DataBaseConnection;
import java.sql.*;
import java.util.*;
public class WebDao {
    DataBaseConnection dbc=null;
    PreparedStatement pstmt=null;
    String sql=null;
    public void insert(Web w)throws Exception{
 	   sql="insert into web(id,name,address) values(?,?,?)";
 	   try {
			dbc=new DataBaseConnection();
			   pstmt=dbc.getConnection().prepareStatement(sql);
			   pstmt.setInt(1,w.getId());
			   pstmt.setString(2,w.getName());
			   pstmt.setString(3,w.getAddress());
			   pstmt.executeUpdate();
			   pstmt.close();
		} catch (Exception e) {
			System.out.println("添加内容异常");
		}finally{
			dbc.close();
		}
    }
    public List<Web> queryAll()throws Exception {
  		 dbc = new DataBaseConnection();
  		List<Web> list = new ArrayList<Web>();
  		sql ="select id,name,address from web";
  		try {
  			this.pstmt = dbc.getConnection().prepareStatement(sql);
  			ResultSet rs = this.pstmt.executeQuery();
  			while (rs.next()) {
  				Web w=new Web();
  				w.setId(rs.getInt(1));
  				w.setName(rs.getString(2));
  				w.setAddress(rs.getString(3));
  				list.add(w);
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
