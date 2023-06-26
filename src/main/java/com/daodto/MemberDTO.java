package com.daodto;

public class MemberDTO {
	private String name;
	private String id;
	private String pw;
	private String phone;
	private String email;
	private String status;
	private String role;
	
	public MemberDTO(String name, String id, String pw, String phone, String email) {
		super();
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.phone = phone;
		this.email = email;
		this.status = "pending";
		this.role = "user";
	}
	
	
	
	public MemberDTO(String name, String id, String pw, String phone, String email, String status, String role) {
		super();
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.phone = phone;
		this.email = email;
		this.status = status;
		this.role = role;
	}
	
	public MemberDTO(String id, String name, String pw, String email) {
		super();
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.email = email;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
}
