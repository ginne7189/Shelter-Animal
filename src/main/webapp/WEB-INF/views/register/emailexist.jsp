<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	try {
		String email = request.getParameter("email");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = (Connection) DriverManager.getConnection("jdbc:oracle:thin:@183.101.196.136:1521:xe",
				"shoppingbag", "shoppingbag");
		PreparedStatement ps = conn.prepareStatement("SELECT count(email) FROM member WHERE email = ?");

		ps.setString(1, email);
		ResultSet rs = ps.executeQuery();
		
		if (rs.next()) {
			int result = Integer.parseInt(rs.getString("count(email)"));			
			if (result == 1) {
				out.print("nope");
			} else {
				out.print("ok");
			}
		}		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>