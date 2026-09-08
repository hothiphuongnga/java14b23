package Servlet;

import java.io.IOException;
import java.sql.Array;
import java.sql.Blob;
import java.sql.CallableStatement;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.NClob;
import java.sql.PreparedStatement;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.SQLXML;
import java.sql.Savepoint;
import java.sql.Statement;
import java.sql.Struct;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Executor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.ServerVersion;
import com.mysql.cj.Session;
import com.mysql.cj.exceptions.ExceptionInterceptor;
import com.mysql.cj.interceptors.QueryInterceptor;
import com.mysql.cj.jdbc.ClientInfoProvider;
import com.mysql.cj.jdbc.JdbcConnection;
import com.mysql.cj.jdbc.JdbcPreparedStatement;
import com.mysql.cj.jdbc.JdbcPropertySet;
import com.mysql.cj.jdbc.JdbcStatement;
import com.mysql.cj.jdbc.result.CachedResultSetMetaData;
import com.mysql.cj.jdbc.result.ResultSetInternalMethods;

import Models.Role;
import connection.JDBCConnection;

@WebServlet({ "/role", "/role/add"})// {}
public class RoleServlet extends HttpServlet {
	private static List<Role> roles = new ArrayList<Role>();
	static {
		roles.add(new Role(1, "Admin", "Quản trị viên"));
		roles.add(new Role(2, "User", "Người dùng"));
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// TEST KEET NOI DB
		Connection test = JDBCConnection.getConnection();
		System.out.println(test);
		
		
		String path = req.getServletPath(); // lấy ra path 
		switch (path) {
		case "/role": {
//			role.jsp
			// truyen roles vao cho jndex.jsp xu ly hien thi
			req.setAttribute("roles", roles);
			req.setAttribute("text", "Hellooo");
			req.getRequestDispatcher("/role/index.jsp").forward(req, resp);
			break;
		}
		case "/role/add":{
			req.getRequestDispatcher("/role/add.jsp").forward(req, resp);
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
		case "/role/add": {
			// req.getParameter("name") lay value tu <input name="name"/>
			String name = req.getParameter("name");
			
			// req.getParameter("description") lay value tu <input name="description"/>
			String description = req.getParameter("description");
			int id =roles.size() +1; // 
			Role newR = new Role(id, name, description);
			roles.add(newR);
			// dieu huong ve /role
			resp.sendRedirect(req.getContextPath() + "/role");
			break;
		}
		default:
			throw new IllegalArgumentException("Unexpected value: " + path);
		}
	}
}
