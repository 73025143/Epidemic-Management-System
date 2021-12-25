package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.po.UserDaily;
import com.dao.dailyDao;

 
public class submitDaily extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		
//		String name = "ssl";
//		String fever=request.getParameter("fever");
//		String headache = request.getParameter("headache");
//		String temperature = request.getParameter("temperature");
//		dailyDao d=new dailyDao();
//		UserDaily UserDaily=new UserDaily();
//		boolean f=fever=="true"? true:false;
//		boolean h=headache=="true"? true:false;
//		double t=Double.valueOf(temperature);
//		UserDaily.setFever(f);
//		UserDaily.setHeadache(h);
//		UserDaily.setTemperature(t);
//		
//		try {
//			d.submit(UserDaily);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		request.getRequestDispatcher("/index.jsp").forward(request, response);//转发到成功页面

		

	}
}


