package hjj.common;
import java.sql.*;
public class DataBaseConnection {
       private final String DBDRIVER="com.mysql.jdbc.Driver";
       private final String DBURL="jdbc:mysql://localhost:3306/jy?user=root&password=root&useUnicode=true&characterEncoding=utf-8";
       private final String DBUSER="root";
       private final String DBPASSWORD="root";
       private Connection conn=null;
       
       public DataBaseConnection(){
    	   try{
    		   Class.forName(DBDRIVER);
    		   conn=DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
    	   }catch(Exception e){System.out.println("连接异常");}
       }
       public Connection getConnection(){
    	   return conn;
       }
       public void close(){
    	   try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       }
}
