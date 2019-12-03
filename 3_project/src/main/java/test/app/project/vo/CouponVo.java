package test.app.project.vo;

public class CouponVo {


	/** 쿠폰번호. */
	private int couponNum;

	/** 회원테이블. */
	private String mid;

	/** 쿠폰명. */
	private String couponName;

	/** 쿠폰유형. */
	private String couponType;

	/** 쿠폰사용여부. */
	private String couponStatus;

	/** 발행일. */
	private java.sql.Date makingDate;


	/**
	 * 생성자.
	 */
	public CouponVo() {

	}


	public CouponVo(int couponNum, String mid, String couponName, String couponType, String couponStatus,
			java.sql.Date makingDate) {
		super();
		this.couponNum = couponNum;
		this.mid = mid;
		this.couponName = couponName;
		this.couponType = couponType;
		this.couponStatus = couponStatus;
		this.makingDate = makingDate;
	}


	public int getCouponNum() {
		return couponNum;
	}


	public void setCouponNum(int couponNum) {
		this.couponNum = couponNum;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getCouponName() {
		return couponName;
	}


	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}


	public String getCouponType() {
		return couponType;
	}


	public void setCouponType(String couponType) {
		this.couponType = couponType;
	}


	public String getCouponStatus() {
		return couponStatus;
	}


	public void setCouponStatus(String couponStatus) {
		this.couponStatus = couponStatus;
	}


	public java.sql.Date getMakingDate() {
		return makingDate;
	}


	public void setMakingDate(java.sql.Date makingDate) {
		this.makingDate = makingDate;
	}

}
