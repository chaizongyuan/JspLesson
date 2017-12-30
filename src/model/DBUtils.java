package model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class DBUtils {
	/**
	 * jdbc封装类
	 */
	static Properties p=new Properties();
	static{
		
		InputStream is=DBUtils.class.getResourceAsStream("jdbc.properties");
		try {
			p.load(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 获取连接
	 * @throws Exception 
	 */
	public static Connection getConnection() throws Exception{
		String url=p.getProperty("url");
		String driverClass=p.getProperty("driverClass");
		String uname=p.getProperty("username");
		String password=p.getProperty("password");
		Class.forName(driverClass);
		//登录成功
		Connection conn=DriverManager.getConnection(url, uname, password);
		return conn;
	}
	
	public static List<Map> query(String sql) throws Exception{
	    Connection conn=getConnection();
	    PreparedStatement pst=conn.prepareStatement(sql);
	    ResultSet rs=pst.executeQuery();
	    ResultSetMetaData rsmd=   rs.getMetaData();
	    List list=new ArrayList();
	    //获取列的个数
	    int columnCount=rsmd.getColumnCount();
	    while(rs.next()){
	        Map map=new HashMap();
	        for(int i=1;i<=columnCount;i++){
	            String colName=rsmd.getColumnName(i);
	            String colValue=rs.getString(i);
	            map.put(colName, colValue);
	        }
	        list.add(map);
	    }
	    return list;
	}
   
}
