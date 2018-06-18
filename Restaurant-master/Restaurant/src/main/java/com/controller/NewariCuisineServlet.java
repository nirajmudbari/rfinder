package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.NewariCuisineDao;
import com.model.Restaurant;

/**
 * Servlet implementation class NewariCuisineServlet
 */
@WebServlet("/NewariCuisineServlet.do")
public class NewariCuisineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private LoginService service = new LoginService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		NewariCuisineDao restro=new 	NewariCuisineDao();
		List<Restaurant> restaurantList = restro.GetRestaurantList();
		
		
		
		request.setAttribute("RestaurantList", restaurantList);
		
		System.out.println(restaurantList);
		
		request.getRequestDispatcher("NewariCuisine.jsp").forward(request, response);
	}


}
