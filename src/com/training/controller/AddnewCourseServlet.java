package com.training.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.training.dao.CourseDao;
import com.training.model.Course;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/AddnewCourse")
public class AddnewCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CourseDao cDao=new CourseDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddnewCourseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/AddCourse.jsp");
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  String c_name = request.getParameter("c_name");
	        String c_desp = request.getParameter("c_desp");
	        String c_fees = request.getParameter("c_fees");
	        
	        Course c = new Course();

	        c.setC_name(c_name);
	        c.setC_fees(c_fees);
	        c.setC_desp(c_desp);
	        try {
	            cDao.registerCourse(c);
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }

			RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/CourseCreateSuccess.jsp");
			dispatcher.forward(request,response);	}

}
