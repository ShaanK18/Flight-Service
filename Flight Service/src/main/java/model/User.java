package model;

public class User {
	private int userId;
	private String userName;
	private String passWord;
	private long phone;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	
//	@Override
//	public String toString() {
//		return "User [userId=" + userId + ", userName=" + userName + ", passWord=" + passWord + ", phone=" + phone
//				+ "]";
//	}

}
