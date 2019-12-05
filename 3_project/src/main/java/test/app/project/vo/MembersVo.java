package test.app.project.vo;

/**
 * 회원테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class MembersVo {


	/** 회원아이디. */
	private String mid;

	/** 회원등급테이블. */
	private int gnum;

	/** 비밀번호. */
	private String mpwd;

	/** 이름. */
	private String mname;

	/** 전화번호. */
	private String mphone;

	/** 이메일. */
	private String memail;



	/** 가입일. */
	private java.sql.Date mregdate;

	/** 포인트. */
	private int mpoint;

	/**
	 * 생성자.
	 */
	public MembersVo() {

	}

	public MembersVo(String mid, int gnum, String mpwd, String mname, String mphone, String memail,
			java.sql.Date mregdate, int mpoint) {
		super();
		this.mid = mid;
		this.gnum = gnum;
		this.mpwd = mpwd;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
		this.mregdate = mregdate;
		this.mpoint = mpoint;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public int getGnum() {
		return gnum;
	}

	public void setGnum(int gnum) {
		this.gnum = gnum;
	}

	public String getMpwd() {
		return mpwd;
	}

	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public java.sql.Date getMregdate() {
		return mregdate;
	}

	public void setMregdate(java.sql.Date mregdate) {
		this.mregdate = mregdate;
	}

	public int getMpoint() {
		return mpoint;
	}

	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}

}
