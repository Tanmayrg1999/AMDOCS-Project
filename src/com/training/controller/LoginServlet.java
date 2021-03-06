package com.training.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.training.dao.LoginDao;
import com.training.model.Student;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;
    String username;
    HttpSession session;
    
    public void init() {
        loginDao = new LoginDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/Login.jsp");
		dispatcher.forward(request,response);
	}
/*    public void infoMessage(String message, String title) {
    	JOptionPane.showMessageDialog(null, message,title,JOptionPane.INFORMATION_MESSAGE);
    }
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        username = request.getParameter("username");
        String password = request.getParameter("password");
        session=request.getSession();
        
        Student loginBean = new Student();
        loginBean.setusername(username);
        loginBean.setpassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                session.setAttribute("username",username);
            	//System.out.print(username);
            	RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/LoginSuccess.jsp");
        		dispatcher.forward(request,response);
        	
        		} else {
        		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/Login.jsp");
            	dispatcher.forward(request,response);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}