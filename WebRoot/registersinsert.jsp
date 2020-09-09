<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<%@page import="javax.swing.JOptionPane"%>
<html>
	<body>
		<%
			request.setCharacterEncoding("gb2312");
			String account = request.getParameter("account");
			String password = request.getParameter("password");
			String identity = request.getParameter("identity");
    		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection conn = DriverManager.getConnection("jdbc:odbc:jyptdl");
			String sql = "INSERT INTO USER(ACCOUNT,PASSWORD,IDENTITY) VALUES(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,account);
			ps.setString(2,password);
			ps.setString(3,identity);
			int i = ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"×¢²á³É¹¦!ÇëµÇÂ¼ÄúµÄÕËºÅ");
			ps.close();
			conn.close();		
    %>
     <jsp:forward page="registerform.jsp"></jsp:forward>
	</body>
</html>