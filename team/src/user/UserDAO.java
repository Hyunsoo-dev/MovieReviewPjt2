package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class UserDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public UserDAO() {
	      
		   try {
		   
		      String url = "jdbc:oracle:thin:@localhost:1521:xe";
		      String id = "system";
		      String pw = "oracle";
		      String driver = "oracle.jdbc.driver.OracleDriver";
		   
		      Class.forName(driver);
		      conn = DriverManager.getConnection(url, id, pw);
		            
		   } catch (Exception e) {
		      e.printStackTrace();
		   }
		      
		   }
	
	
	public int join(User user) {
		String SQL = "INSERT INTO muser VALUES(?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setInt(1,getNext());
			pstmt.setString(2,user.getUserID());
			pstmt.setString(3,user.getUserName());
			pstmt.setString(4,user.getUserEmail());
			pstmt.setString(5,user.getUserPassword());
	
	

			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return -1;
	}
	
	
	public ArrayList<User> getList(int pageNumber)
	{
		String SQL = "SELECT * FROM muser WHERE userNum < ? AND userID !='ksw6136'  ORDER BY userID DESC LIMIT 10";
		
		ArrayList<User> list = new ArrayList<User>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				User us = new User();				
				us.setUserNum(rs.getInt(1));
				us.setUserID(rs.getString(2));
				us.setUserPassword(rs.getString(3));
				us.setUserName(rs.getString(4));
				us.setUserEmail(rs.getString(5));
				
				list.add(us);

			}
						
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int getNext() {
		String SQL = "SELECT userNum FROM muser ORDER BY userNum DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; 
						
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; 
	}
	public boolean nextPage(int pageNumber)
	{
		String SQL = "SELECT * FROM muser WHERE userNum <? and userID!='ksw6136'";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext() - (pageNumber -1) * 10);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				return true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false; 
	}
	public int delete(String userID) {
		String SQL = "delete from muser WHERE userID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  userID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; 
	}
	public int setulist(String ulist) {
		String SQL = "delete from muser WHERE userID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  ulist);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; 
	}

	public User getuser() {
		String SQL = "SELECT * FROM muser WHERE userID != 'ksw6136'";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs= pstmt.executeQuery();
			if(rs.next())
			{
				User us = new User();		
				us.setUserNum(rs.getInt(1));
				us.setUserID(rs.getString(2));
				us.setUserPassword(rs.getString(3));
				us.setUserName(rs.getString(4));
				us.setUserEmail(rs.getString(5));
				
				return us;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	public String fuserid(String userEmail,String userName) {
		String userID = null;
		String SQL = "SELECT userID,userEmail,userName from muser where userEmail = ? and userName =?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  userEmail);
			pstmt.setString(2,  userName);
			rs= pstmt.executeQuery();
			if(rs.next())
			{
				User us = new User();		
				us.setUserID(rs.getString(1));
				userID=(rs.getString(1));
				return userID;
			}
			
			return null; 
		} catch(Exception e) {
			e.printStackTrace();
		}
	
		return null;
	}
	
	public String fuserpass(String userEmail,String userName,String userID) {
		String userPassword = null;
		String SQL = "SELECT userPassword from muser where userEmail = ? and userName =? and userID=?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  userEmail);
			pstmt.setString(2,  userName);
			pstmt.setString(3,  userID);
			rs= pstmt.executeQuery();
			if(rs.next())
			{
				User us = new User();		
				us.setUserPassword(rs.getString(1));
				userPassword=(rs.getString(1));
				return userPassword;
			}
			
			return null; 
		} catch(Exception e) {
			e.printStackTrace();
		}
	
		return null;
	}
	public int login(String userID,String userPassword) {	
//		User us = new User();
//			us.setUserID(userID);
			String SQL = "SELECT userPassword FROM muser WHERE userID = ?";    
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1,userID);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
				
					if(rs.getString(1).equals(userPassword)) {
						return 1; 
					}else { 
						return 0;
						}
				}
				return -1;  
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			return -2; 
		}
	
}
