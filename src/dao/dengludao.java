package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import vo.denglu;

public class dengludao {
	private Connection conn = null;
	public void initConnection() throws Exception {
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		conn = DriverManager.getConnection("jdbc:odbc:jyptdl", "", "");
	}
	public denglu getUserByAccount(String account) throws Exception {
		denglu cus = null;
		initConnection();
		String sql = 
"SELECT ACCOUNT,PASSWORD,IDENTITY FROM USER WHERE ACCOUNT=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, account);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			cus = new denglu();
			cus.setAccount(rs.getString("ACCOUNT"));
			cus.setPassword(rs.getString("PASSWORD"));
			cus.setIdentity(rs.getString("IDENTITY"));
		}
		closeConnection();
		return cus;		
	}	
	public void closeConnection() throws Exception {
		conn.close();
	}
}