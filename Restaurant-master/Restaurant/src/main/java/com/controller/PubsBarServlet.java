package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.PubsBarDao;
import com.model.Restaurant;

/**
 * Servlet implementation class PubsBarServlet
 */
@WebServlet("/PubsBar.do")
public class PubsBarServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;
	//private LoginService service = new LoginService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		PubsBarDao restro=new PubsBarDao();
		List<Restaurant> restaurantList = restro.GetRestaurantList();
		
		
		
		request.setAttribute("RestaurantList", restaurantList);
		
		System.out.println(restaurantList);
		
		request.getRequestDispatcher("PubsBar.jsp").forward(request, response);
	}

}
