package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Products;

@WebServlet("/products")
public class ProductServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Products> listProduct = new ArrayList<Products>();
		
		listProduct.add(new Products(1, "IP 11",10000000,"https://i.pravatar.cc/150?img=1"));
		listProduct.add(new Products(2, "IP 12",10000000,"https://i.pravatar.cc/150?img=2"));
		listProduct.add(new Products(3, "IP 13",10000000,"https://i.pravatar.cc/150?img=3"));
		listProduct.add(new Products(4, "IP 14",10000000,"https://i.pravatar.cc/150?img=4"));
		
		// request và dữ liệu atrribute vào cho jsp 
		
		req.setAttribute("products", listProduct);
		req.getRequestDispatcher("products.jsp")
			.forward(req, resp);
	}
}
