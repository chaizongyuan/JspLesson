package model;

import java.util.List;
import java.util.Map;

import model.DBUtils;

/**
 * javabean java
 * @author Administrator
 * 2017年10月5日   下午4:05:27
 *  easytop samlinzhang 
 * MyCard.java
 */
public class MyDept {
    /**
     * 封装了get方法
     * @return
     * @throws Exception
     */
   public String getTable() throws Exception{
       StringBuffer sb=new StringBuffer();
       List<Map> result=DBUtils.query("select * from dept");
       sb.append("<table>");
       sb.append("<tr><th>deptno</th><th>dname</th></tr>");
       for(Map map:result){
           sb.append("<tr><th>"+map.get("deptno")+"</th><th>"+map.get("dname")+"</th></tr>");
       }
       sb.append("</table>");
       return sb.toString();
   }

   public  List<Map> getTables(String name) throws Exception{
	   StringBuffer sb = new StringBuffer();
       List<Map> result=DBUtils.query("select * from dept where dname like '%"+name+"%'");
       return result;
   }
   
   
   public Integer getTaleListCount(String name)throws Exception{
	   if(name==null){
		   name="";
	   }
	   String sql="select count(rowid) as cr from emp where ename like '%"+name+"%'";
	   List<Map> result=DBUtils.query(sql);
	   return Integer.parseInt(result.get(0).get("CR").toString());
   }
   
   
   public PageTools  getTablePager(String name,Integer curPage) throws Exception{
	   if(name==null){
		   name="";
	   }
	   Integer totalCount=getTaleListCount(name);
	   PageTools pt = new PageTools(curPage, totalCount, null);
	   StringBuffer sb = new StringBuffer();
       List<Map> result=DBUtils.query("select * from (select t.*,rownum rn from emp t where t.ename like '%"+name+"%') where rn>="+pt.getStartIndex()+" and rn<="+pt.getEndIndex());
       pt.setData(result);
       return pt;
   }
}
