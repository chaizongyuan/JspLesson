package cn.et.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MyDept;
import model.PageTools;

/**
 * Servlet是MVC设计模式的控制层 (Controller) 负责调度 （javabean的创建  服务调用）
 *  例子 
 *    1获取表单数据  调用javabean写入数据库库
 *    2调用javabean获取数据集合 将数据传递jsp视图中
 */
public class DeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    MyDept myDept=new MyDept();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        String name=request.getParameter("dname");
            String curPage=request.getParameter("curPage");
            Integer curPageInt=1;
            if(curPage!=null){
            	curPageInt=Integer.parseInt(curPage);
            }
	        PageTools tableList = myDept.getTablePager(name,curPageInt);
            request.setAttribute("tableList",tableList);
            request.getRequestDispatcher("lesson08/deptView.jsp").forward(request, response);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
