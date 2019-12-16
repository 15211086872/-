package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//获取数据
		String username = request.getParameter("use");
		String password = request.getParameter("pwd");
		String username1 = request.getParameter("use1");
		String password1 = request.getParameter("pwd1");
	 	User user = new User();
	 	//把数据装载到user模型中
	 	user.setName(username);
	 	user.setPass(password);
	 	user.setName1(username1);
	 	user.setPass1(password1);
	 	PrintWriter out = response.getWriter();
	 	//调用方法
	 //	ServiceDao serviceDao= new ServiceDaoImpl(); //加上业务逻辑层
	 //	boolean flag=serviceDao.selectUser(user);
	  	UserDao userDao = new UserDaoImpl();
	 	boolean flag=userDao.selectUser(user);
		//用session保存user对象信息
		HttpSession session = request.getSession();//获得session对象
		session.setAttribute("user", user);
		session.setAttribute("user1", user);
		
		if(flag){
			response.sendRedirect("index.jsp");
		}else{
//			response.sendRedirect("login.jsp");
			out.print("<html><script> alert('账户或密码错误');</script> <a href='login.jsp'>返回</a></html>");
		    
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}}
