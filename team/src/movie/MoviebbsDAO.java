package movie;

import java.sql.*;

import java.util.Vector;

public class MoviebbsDAO {
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //localhost대신 ip주소가 들어갈수도
    String id = "system";
    String pw = "1234";

	Connection con = null;
	PreparedStatement pstm =null;
	ResultSet rs;
	
	//db접속메소드
	public void getCon() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,id,pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//insert 메소드
	//자바빈을 이용해 IMPORT시킨후 빈즈의 속성들을 메소드에 넘겨준후 DB에저장
/*	public void insertMember(MoviebbsDAO joinbean) {
		try {
			getCon();
			String sql = "insert into JSPBBS values(?,?,?,?,?,?,?)";
			pstm = con.prepareStatement(sql);
			
			pstm.setString(1,joinbean.getName());
			pstm.setString(2,joinbean.getId());
			pstm.setString(3,joinbean.getPwd1());
			pstm.setString(4,joinbean.getGender());
			pstm.setString(5,joinbean.getEmail());
			pstm.setString(6,joinbean.getTel());
			pstm.setString(7,joinbean.getGenre());
			
			pstm.executeUpdate();
			con.close();//연결끊음
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	*/
	
	//모든 맴버들을 보여준다
	/*
	public Vector<MemberDTO> allSelect(){  
		Vector<MemberDTO> v  = new Vector<>();  //보여줄 데이터를 위해 백터생성 후 벡터에 담는다
		
		try {
			getCon();
			String sql = "select * from JSPBBS";
			pstm = con.prepareStatement(sql);	
			rs = pstm.executeQuery();
			
			while(rs.next()) { //rs에 저장된 멤버들을 출력
				MemberDTO DTO = new MemberDTO(); //칼럼으로 나뉘어진 데이터를 자바 빈즈 dto클래스에 저장하기 위해 객체를 생성
				DTO.setName(rs.getString(1));  //rs에 저장된 데이터들을 자바빈즈 class set메서드를 이용해저장
				DTO.setId(rs.getString(2));
				DTO.setPwd1(rs.getString(3));
				DTO.setGender(rs.getString(4));
				DTO.setEmail(rs.getString(5));
				DTO.setTel(rs.getString(6));
				DTO.setGenre(rs.getString(7));
				v.add(DTO); //DTO객체에 담겨진값들을 순서대로 백터에 저장
			}
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		//벡터를 반납
		return v;
	}
	*/
	//한영화의 정보만 가져오는 메소드
	public MoviebbsDTO infoSelect(String MovieName) {
		MoviebbsDTO dto = new MoviebbsDTO();	
		
		try {
			getCon();
		/*	
			String sql = "select  * from Moviebbs where Movie_name1 like '% "+ MovieName+
			  "%'";
		*/	 
			
			 String sql = "select * from Moviebbs where  movie_name1= ?"; 
			
			pstm = con.prepareStatement(sql);		
			pstm.setString(1, MovieName);  // DB쿼리문의 ?값을 받음

			rs = pstm.executeQuery();
			if(rs.next()) {
				dto.setMovie_no(rs.getInt(1));	
				dto.setMovie_name1(rs.getString(2));
				dto.setMovie_name2(rs.getString(3));
				dto.setMovie_foster(rs.getString(4));
				dto.setMovie_realfoster(rs.getString(5));
				dto.setMovie_year(rs.getString(6));
				dto.setMovie_time(rs.getString(7));
				dto.setMovie_contents(rs.getString(8));
				
			}
			con.close();
		}catch(Exception e) {
			e.printStackTrace();			
		}
		return dto;
		//객체를 한사람의 정보가 저장되는 객체반납
		
	}
	
	
	
	
	/*
	public boolean checkMember(String name, String ssn1, String ssn2) 
			throws SQLException {
		try { 
			getCon();
			String sql = "select name from jspbbs_member where ssn1=? and ssn2=?";
			pstm = con.prepareStatement(sql);
			pstm.setString(1, ssn1);
			pstm.setString(2, ssn2);
			rs = pstm.executeQuery();
			if (rs.next()) { 
				return true; 
			}else {
				return false;
			}
		}finally {
			if (rs != null) rs.close();
			if (pstm != null) pstm.close();
			if (con != null) con.close();
		}
	}
/*
	//로그인메소드
	public int login(String userID,String userPassword) {	  //로그인
		System.out.println(userID);   
		
		try {
			getCon();
			String SQL = "SELECT pwd1 FROM jspbbs WHERE id = ?";    
			pstm = con.prepareStatement(SQL);
			pstm.setString(1,userID);
			rs = pstm.executeQuery();  //아이디가 있다면 여기서의 테이블의 id는 프라이머리키값이다. 아이디가 있을 경우 1이나온다
			
			if(rs.next()) {
			
				if(rs.getString(1).equals(userPassword)) {
					return 1; //login 페이지 form 에서받은 아이디 비밀번호가 login action으로가고  로그인펭지에서 입력한 비밀번호와 jspbbs테이브르이 pwd1이 같은경우 리턴1
					//loginaction에서 userdao객체로 result에 값을넣어줌
 				}else { 
					return 0;    //아니면2
					}
			}
			return -1; // 아이디가없음  rs객체에 정보가없음> 아이디가없음
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return -2; //데이터 베이스오류
	}
	*/
}
