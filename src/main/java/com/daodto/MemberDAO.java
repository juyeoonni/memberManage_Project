package com.daodto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDAO {

	private String url = "jdbc:oracle:thin:@192.168.119.119:1521/dink18";
	private String uid = "C##scott";
	private String upw = "tiger";

	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 전체 회원 조회 (Select All)
	public ArrayList<MemberDTO> memberAllSelect() {
		ArrayList<MemberDTO> mdtos = new ArrayList<MemberDTO>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from users");

			while (rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String status = rs.getString("status");
				String role = rs.getString("role");

				MemberDTO dto = new MemberDTO(name, id, pw, phone, email);
				mdtos.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 데이터베이스 관련 자원인 ResultSet, Statement, Connection을 해제하는 역할
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mdtos;
	}

	// 회원 조회 (Select)
	public MemberDTO memberSelect(String uId) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		MemberDTO dto = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from users where id = '" + uId + "'");

			while (rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String status = rs.getString("status");
				String role = rs.getString("role");

				dto = new MemberDTO(name, id, pw, phone, email);
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dto;
	}

	// 회원 가입 (Insert)
	public void memberInsert(MemberDTO memberDTO) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String name = memberDTO.getName();
		String id = memberDTO.getId();
		String pw = memberDTO.getPw();
		String phone = memberDTO.getPhone();
		String email = memberDTO.getEmail();
		String status = memberDTO.getStatus();
		String role = memberDTO.getRole();
		String query = "INSERT INTO USERS (name, id, pw, phone, email, status, role) VALUES (?,?,?,?,?,?,?)";

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, pw);
			pstmt.setString(4, phone);
			pstmt.setString(5, email);
			pstmt.setString(6, status);
			pstmt.setString(7, role);

			int iResult = pstmt.executeUpdate();

			if (iResult >= 1) {
				System.out.println("insert success");
			} else {
				System.out.println("insert fail");
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	// 회원 수정 (Update)
	public void memberUpdate(MemberDTO memberDTO) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String name = memberDTO.getName();
		String id = memberDTO.getId();
		String pw = memberDTO.getPw();
		String phone = memberDTO.getPhone();
		String email = memberDTO.getEmail();
		String query = "update users set name = ?, pw = ? , phone = ? , email = ? where id = ?";

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3, phone);
			pstmt.setString(4, email);

			int iResult = pstmt.executeUpdate();

			if (iResult >= 1) {
				System.out.println("update success");

			} else {
				System.out.println("update fail");
			}
		} catch (Exception e) {

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 회원 탈퇴 (Delete)
	public void memberDelete(String memberId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String query = "DELETE FROM users WHERE id = ?";

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);

			int iResult = pstmt.executeUpdate();

			if (iResult >= 1) {
				System.out.println("delete success");
			} else {
			}
			System.out.println("delete fail");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 로그인 체크
	public boolean loginCheck(String loginId, String loginPw) {
		boolean status = false;

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		MemberDTO dto = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM USERS WHERE id = '" + loginId + "'");

			while (rs.next()) {
				String id = rs.getString("ID");
				String pw = rs.getString("PW");
				String name = rs.getString("NAME");

				if (loginPw.equals(pw)) {
					status = true;
					System.out.println("login success");
				} else {
					System.out.println("login fail");
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return status;
	}

	// 회원 가입 상태 조회 (Select)
	public ArrayList<MemberDTO> statusSelect() {
		ArrayList<MemberDTO> mdtos = new ArrayList<MemberDTO>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from users where status = 'pending'");

			while (rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String phone = rs.getString("phone");
				String email = rs.getString("email");

				MemberDTO dto = new MemberDTO(name, id, pw, phone, email);
				mdtos.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mdtos;
	}

	// 회원 탈퇴 상태 조회 (Select)
	public ArrayList<MemberDTO> pauseSelect() {
		ArrayList<MemberDTO> mdtos = new ArrayList<MemberDTO>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from users where status = 'pause'");

			while (rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String phone = rs.getString("phone");
				String email = rs.getString("email");

				MemberDTO dto = new MemberDTO(name, id, pw, phone, email);
				mdtos.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mdtos;
	}

	// 회원 가입 승인
	public void memberApproval(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			String query = "UPDATE users SET status = 'normal' WHERE id = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 회원 탈퇴 요청 변경
	public void withdralApproval(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			String query = "UPDATE users SET status = 'pause' WHERE id = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 회원 탈퇴 요청 승인
	public void deleteMember(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			String query = "delete from users where WHERE id = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 관리자 회원 조회
	public ArrayList<MemberDTO> adminAllSelect() {
		ArrayList<MemberDTO> mdtos = new ArrayList<MemberDTO>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from users where role = 'user'");

			while (rs.next()) {
				String name = rs.getString("name");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String status = rs.getString("status");
				String role = rs.getString("role");

				MemberDTO dto = new MemberDTO(name, id, pw, phone, email, status, role);
				mdtos.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 데이터베이스 관련 자원인 ResultSet, Statement, Connection을 해제하는 역할
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mdtos;
	}

	// 관리자 회원 수정 (Update)
	public void adminUpdate(MemberDTO memberDTO) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String id = memberDTO.getId(); 
		String name = memberDTO.getName();
		String pw = memberDTO.getPw();
		String email = memberDTO.getEmail();
		String query = "update users set name = ?, pw = ?, email = ? where id = ?";

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3, email);
			pstmt.setString(4, id);

			int iResult = pstmt.executeUpdate();

			System.out.println(iResult);
			if (iResult >= 1) {
				System.out.println("update success");

			} else {
				System.out.println("update fail");
			}
		} catch (Exception e) {

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	// 관리자 회원 상태 수정 (Update)
	public void adminStatusUpdate(MemberDTO memberDTO) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String id = memberDTO.getId(); 
		String name = memberDTO.getName();
		String pw = memberDTO.getPw();
		String email = memberDTO.getEmail();
		String query = "update users set name = ?, pw = ?, email = ? where id = ?";

		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3, email);
			pstmt.setString(4, id);

			int iResult = pstmt.executeUpdate();

			if (iResult >= 1) {
				System.out.println("update success");

			} else {
				System.out.println("update fail");
			}
		} catch (Exception e) {

		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
