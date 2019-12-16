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
		//��ȡ����
		String username = request.getParameter("use");
		String password = request.getParameter("pwd");
		String username1 = request.getParameter("use1");
		String password1 = request.getParameter("pwd1");
	 	User user = new User();
	 	//������װ�ص�userģ����
	 	user.setName(username);
	 	user.setPass(password);
	 	user.setName1(username1);
	 	user.setPass1(password1);
	 	PrintWriter out = response.getWriter();
	 	//���÷���
	 //	ServiceDao serviceDao= new ServiceDaoImpl(); //����ҵ���߼���
	 //	boolean flag=serviceDao.selectUser(user);
	  	UserDao userDao = new UserDaoImpl();
	 	boolean flag=userDao.selectUser(user);
		//��session����user������Ϣ
		HttpSession session = request.getSession();//���session����
		session.setAttribute("user", user);
		session.setAttribute("user1", user);
		
		if(flag){
			response.sendRedirect("index.jsp");
		}else{
//			response.sendRedirect("login.jsp");
			out.print("<html><script> alert('�˻����������');</script> <a href='login.jsp'>����</a></html>");
		    
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}}
