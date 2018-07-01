package pc.DTO;

public class SeatDTO {
	private int seatNo;
	private	String userId;
	private String userName;
	private int userTime;
	
	public int getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserTime() {
		return userTime;
	}
	public void setUserTime(int userTime) {
		this.userTime = userTime;
	}
}
