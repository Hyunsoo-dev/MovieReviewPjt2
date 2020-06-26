package manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import movie.movieBean;

public class ManagerDAO {
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	public void getCon() {
		
		
	try {
	
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		 String id = "system";
	      String pw = "1234";
		String driver = "oracle.jdbc.driver.OracleDriver";
	
		Class.forName(driver);
		con = DriverManager.getConnection(url, id, pw);
				
	} catch (Exception e) {
		e.printStackTrace();
	}
		
	}
	
	//매니저 page 에서 모든 리스트를 가져오는 메소드 
public Vector<ManagerBean> getAllList(){
		
		getCon();
		Vector<ManagerBean> v = new Vector<ManagerBean>();
		ManagerBean rbean = null;
		try {
			
			String sql = "select * from moviebbs";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				rbean = new ManagerBean();
				rbean.setMovie_no(rs.getInt(1));
				rbean.setMovie_name1(rs.getString(2));
				rbean.setMovie_name2(rs.getNString(3));
				rbean.setMovie_foster(rs.getNString(4));
				rbean.setMovie_realfoster(rs.getString(5));
				rbean.setMovie_year(rs.getString(6));
				rbean.setMovie_time(rs.getString(7));
				rbean.setMovie_content(rs.getString(8));
				
				v.add(rbean);
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return v;
	}
	
}
