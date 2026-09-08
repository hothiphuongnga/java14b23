package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.KhoaHoc;
import connection.JDBCConnection;

@WebServlet({
	"/khoa-hoc",
	"/khoa-hoc/add",
	"/khoa-hoc/update",
	"/khoa-hoc/delete"
	})
public class KhoaHocServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = req.getServletPath();
		switch (path) {
		case "/khoa-hoc": {
			// goi ham getList
			getList(req,resp);
			req.getRequestDispatcher("/khoaHoc/index.jsp").forward(req, resp);
			break;
		}
		case "/khoa-hoc/add":{
			req.getRequestDispatcher("/khoaHoc/add.jsp").forward(req, resp);
			break;
		}
		default:
			throw new IllegalArgumentException("Unexpected value: " + path);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		switch (path) {
		case "/khoa-hoc/add":{
			// can lay ra ten KH vaf code
			String tenKH = req.getParameter("tenKH");
			String code = req.getParameter("code");
			
			// query
			String query = "Insert into khoa_hoc (tenKH, code) values (? ,?)";
			try (
					Connection con = JDBCConnection.getConnection();
					PreparedStatement statement = con.prepareStatement(query);
				) 
			{
				statement.setString(1, tenKH);
				statement.setString(2, code);
				
				// thuc thi insert
				statement.executeUpdate();
				
				resp.sendRedirect(req.getContextPath() +"/khoa-hoc");
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			break;
		}
		default:
			throw new IllegalArgumentException("Unexpected value: " + path);
		}
	}
	
	
	
	
	
	
	
//	GET LIST KHOAHOC
	private void getList(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		List<KhoaHoc> khoaHocs = new ArrayList<KhoaHoc>();
		String query = "SELECT * FROM khoa_hoc";
		Connection con=null;
		try {
			 con = JDBCConnection.getConnection();
			// chuaarn bi cua sql de guiw bd
			PreparedStatement statement = con.prepareStatement(query);
			// thuc thi cau sql va nhan ket qua tra ve trong ResultSet
			// SELECT 
			ResultSet rs = statement.executeQuery();
			// rs con gia tri thi chay vong lap
			while(rs.next()) {
				System.out.println(rs.getString("tenKH"));
				// trien luu ds vao khoahocs
				KhoaHoc newKH = new KhoaHoc();
				newKH.setTenKH(rs.getString("tenKH"));
				newKH.setCode(rs.getString("code"));
				newKH.setId(rs.getInt("id"));
				khoaHocs.add(newKH);
			}
			rs.close();
			statement.close();

			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		} 
		req.setAttribute("khoaHocs", khoaHocs);
	}
}
