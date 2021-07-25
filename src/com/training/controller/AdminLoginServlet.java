package com.training.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.training.dao.AdminDao;
import com.training.controller.AdminLoginServlet;
import com.training.model.Student;



@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AdminDao loginDao;

    public void init() {
        loginDao = new AdminDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/AdminLogin.jsp");
		dispatcher.forward(request,response);
	}

    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Student loginBean = new Student();
        loginBean.setusername(username);
        loginBean.setpassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
            	RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/AdminLoginSuccess.jsp");
        		dispatcher.forward(request,response);
        		} else {
                //HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                response.sendRedirect("AdminLogin.jsp");
        		//System.out.println("wrong");
        		}
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}