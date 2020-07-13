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
	
//한 개의 영화 정보를 가져오는 메소드
public ManagerBean getOneList(int movie_no){
	
	getCon();
	
	ManagerBean rbean = null;
	try {
		
		String sql = "select * from moviebbs where movie_no =?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, movie_no);
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
			
			
		}
		con.close();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return rbean;
	}


//매니저 page 에서 검색한 리스트를 가져오는 메소드 
public Vector<ManagerBean> getMovieList(String movie_name1){
	
	getCon();
	Vector<ManagerBean> v = new Vector<ManagerBean>();
	ManagerBean rbean = null;
	try {
		
		String sql = "select * from moviebbs where movie_name1 like ?||'%'";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, movie_name1);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			rbean = new ManagerBean();
			rbean.setMovie_no(rs.getInt(1));
			rbean.setMovie_name1(rs.getString(2));
			rbean.setMovie_name2(rs.getString(3));
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


//관리자 페이지에서 영화 정보를 수정하는 메소드
public void managerUpdate(ManagerBean rbean){
	
	getCon();
	
	try {
		
		String sql = "update moviebbs set movie_name1=?,movie_name2=?,movie_year=?,movie_time=?,movie_content=? where movie_no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, rbean.getMovie_name1());
		pstmt.setString(2, rbean.getMovie_name2());
		pstmt.setString(3, rbean.getMovie_year());
		pstmt.setString(4, rbean.getMovie_time());
		pstmt.setString(5, rbean.getMovie_content());
		pstmt.setInt(6, rbean.getMovie_no());
		pstmt.executeUpdate();
		
		  
			
		con.close();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	}

//관리자가 영화 정보를 삭제하는 메소드
public void managerDelete(int Movie_no){
	
	getCon();
	
	
	try {
		
		String sql = "delete from moviebbs where movie_no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, Movie_no);
		
		pstmt.executeUpdate();
		
		
			
		con.close();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
	
	}	

//관리자가 영화 정보를 등록하는 메소드
public void fileUpload(String movie_name1, String movie_name2, String fileName,
					   String fileRealName, String movie_year, String movie_time, String movie_content){
	
	getCon();
	
	
	try {
		
		String sql = "insert into moviebbs values (moviebbs_seq.nextval, ?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, movie_name1);
		pstmt.setString(2, movie_name2);
		pstmt.setString(3, fileName);
		pstmt.setString(4, fileRealName);
		pstmt.setString(5, movie_year);
		pstmt.setString(6, movie_time);
		pstmt.setString(7, movie_content);
		pstmt.executeUpdate();
		
		
			
		con.close();
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
	
	}	

//관리자가 영화 사진을 수정하는 메소드
public void editMovieImg(int movie_no , String fileName , String fileRealName) {
	getCon();
	
	try {
		String sql = "update moviebbs set movie_foster=? , movie_realfoster=? where movie_no=? ";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, fileName);
		pstmt.setString(2, fileRealName);
		pstmt.setInt(3, movie_no);
		pstmt.executeUpdate();
		
		con.close();
	} catch (Exception e) {
		
	}
}


//delete 를 눌렀을 경우 사진이 기본화면으로 바뀌는 메소드 
public void deleteMovieImg(int movie_no, String fileName, String fileRealName) {
getCon();
	
	try {
		String sql = "update moviebbs set movie_foster=? , movie_realfoster=? where movie_no=? ";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, fileName);
		pstmt.setString(2, fileRealName);
		pstmt.setInt(3, movie_no);
		pstmt.executeUpdate();
		
		con.close();
	} catch (Exception e) {
		
	}
}

}
