package movie;

import java.sql.*;

import java.util.Vector;

public class MoviebbsDAO {
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //localhost��� ip�ּҰ� ������
    String id = "system";
    String pw = "1234";

	Connection con = null;
	PreparedStatement pstm =null;
	ResultSet rs;
	
	//db���Ӹ޼ҵ�
	public void getCon() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,id,pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//insert �޼ҵ�
	//�ڹٺ��� �̿��� IMPORT��Ų�� ������ �Ӽ����� �޼ҵ忡 �Ѱ����� DB������
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
			con.close();//�������
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	*/
	
	//��� �ɹ����� �����ش�
	/*
	public Vector<MemberDTO> allSelect(){  
		Vector<MemberDTO> v  = new Vector<>();  //������ �����͸� ���� ���ͻ��� �� ���Ϳ� ��´�
		
		try {
			getCon();
			String sql = "select * from JSPBBS";
			pstm = con.prepareStatement(sql);	
			rs = pstm.executeQuery();
			
			while(rs.next()) { //rs�� ����� ������� ���
				MemberDTO DTO = new MemberDTO(); //Į������ �������� �����͸� �ڹ� ���� dtoŬ������ �����ϱ� ���� ��ü�� ����
				DTO.setName(rs.getString(1));  //rs�� ����� �����͵��� �ڹٺ��� class set�޼��带 �̿�������
				DTO.setId(rs.getString(2));
				DTO.setPwd1(rs.getString(3));
				DTO.setGender(rs.getString(4));
				DTO.setEmail(rs.getString(5));
				DTO.setTel(rs.getString(6));
				DTO.setGenre(rs.getString(7));
				v.add(DTO); //DTO��ü�� ����������� ������� ���Ϳ� ����
			}
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		//���͸� �ݳ�
		return v;
	}
	*/
	//�ѿ�ȭ�� ������ �������� �޼ҵ�
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
			pstm.setString(1, MovieName);  // DB�������� ?���� ����

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
		//��ü�� �ѻ���� ������ ����Ǵ� ��ü�ݳ�
		
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
	//�α��θ޼ҵ�
	public int login(String userID,String userPassword) {	  //�α���
		System.out.println(userID);   
		
		try {
			getCon();
			String SQL = "SELECT pwd1 FROM jspbbs WHERE id = ?";    
			pstm = con.prepareStatement(SQL);
			pstm.setString(1,userID);
			rs = pstm.executeQuery();  //���̵� �ִٸ� ���⼭�� ���̺��� id�� �����̸Ӹ�Ű���̴�. ���̵� ���� ��� 1�̳��´�
			
			if(rs.next()) {
			
				if(rs.getString(1).equals(userPassword)) {
					return 1; //login ������ form �������� ���̵� ��й�ȣ�� login action���ΰ���  �α����������� �Է��� ��й�ȣ�� jspbbs���̺긣�� pwd1�� ������� ����1
					//loginaction���� userdao��ü�� result�� �����־���
 				}else { 
					return 0;    //�ƴϸ�2
					}
			}
			return -1; // ���̵𰡾���  rs��ü�� ����������> ���̵𰡾���
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return -2; //������ ���̽�����
	}
	*/
}
