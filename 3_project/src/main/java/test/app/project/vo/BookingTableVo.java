package test.app.project.vo;

/**
 * 예약테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class BookingTableVo {


	/** 예약번호. */
	private int bookingNum;

	/** 객실정보. */
	private int rooms;

	/** 회원테이블. */
	private String mid;

	/** 결제금액. */
	private int payMoney;

	/** 예약신청날짜. */
	private java.sql.Date booksDate;

	/** 숙박시작일. */
	private java.sql.Date startDate;

	/** 숙박종료일. */
	private java.sql.Date endDate;

	/** 예약상태. */
	private String bookStatus;



	public BookingTableVo() {
		
	}



	public BookingTableVo(int bookingNum, int rooms, String mid, int payMoney, java.sql.Date booksDate,
			java.sql.Date startDate, java.sql.Date endDate, String bookStatus) {
		super();
		this.bookingNum = bookingNum;
		this.rooms = rooms;
		this.mid = mid;
		this.payMoney = payMoney;
		this.booksDate = booksDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.bookStatus = bookStatus;
	}



	public int getBookingNum() {
		return bookingNum;
	}



	public void setBookingNum(int bookingNum) {
		this.bookingNum = bookingNum;
	}



	public int getRooms() {
		return rooms;
	}



	public void setRooms(int rooms) {
		this.rooms = rooms;
	}



	public String getMid() {
		return mid;
	}



	public void setMid(String mid) {
		this.mid = mid;
	}



	public int getPayMoney() {
		return payMoney;
	}



	public void setPayMoney(int payMoney) {
		this.payMoney = payMoney;
	}



	public java.sql.Date getBooksDate() {
		return booksDate;
	}



	public void setBooksDate(java.sql.Date booksDate) {
		this.booksDate = booksDate;
	}



	public java.sql.Date getStartDate() {
		return startDate;
	}



	public void setStartDate(java.sql.Date startDate) {
		this.startDate = startDate;
	}



	public java.sql.Date getEndDate() {
		return endDate;
	}



	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}



	public String getBookStatus() {
		return bookStatus;
	}



	public void setBookStatus(String bookStatus) {
		this.bookStatus = bookStatus;
	}

	
}
