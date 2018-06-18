package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.MysteryDao;
import com.dao.SuspenceDao;
import com.model.Book;

/**
 * Servlet implementation class SuspenceServlet
 */
@WebServlet("/suspense.do")
public class SuspenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private LoginService service = new LoginService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		SuspenceDao book=new SuspenceDao();
		List<Book> bookList = book.GetBookList();
		
		
		
		request.setAttribute("BookList", bookList);
		
		System.out.println(bookList);
		
		request.getRequestDispatcher("Suspense.jsp").forward(request, response);
	}
}
