package test.app.project.vo;


/**
 * 업소테이블 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class HouseVo {


	/** 업체식별키. */
	private int house_Num;

	/** 종목(종류). */
	private int bnum;

	/** 업소소개. */
	private String intro;

	/** 입실시간. */
	private java.sql.Date checkintime;

	/** 퇴실시간. */
	private java.sql.Date checkouttime;

	/** 업체명. */
	private String conpany;

	/** 사업자등록번호. */
	private String license;

	/** 대표자명. */
	private String ceo;

	/** 본점소재지. */
	private String orgaddr;

	/** 사업장소재지. */
	private String workplace;

	/** 사업장전화번호. */
	private String com_Tel;

	/** 승인여부. */
	private String approval;


	public HouseVo() {

	}


	public HouseVo(int house_Num, int bnum, String intro, java.sql.Date checkintime, java.sql.Date checkouttime,
			String conpany, String license, String ceo, String orgaddr, String workplace, String com_Tel,
			String approval) {
		super();
		this.house_Num = house_Num;
		this.bnum = bnum;
		this.intro = intro;
		this.checkintime = checkintime;
		this.checkouttime = checkouttime;
		this.conpany = conpany;
		this.license = license;
		this.ceo = ceo;
		this.orgaddr = orgaddr;
		this.workplace = workplace;
		this.com_Tel = com_Tel;
		this.approval = approval;
	}


	public int getHouse_Num() {
		return house_Num;
	}


	public void setHouse_Num(int house_Num) {
		this.house_Num = house_Num;
	}


	public int getBnum() {
		return bnum;
	}


	public void setBnum(int bnum) {
		this.bnum = bnum;
	}


	public String getIntro() {
		return intro;
	}


	public void setIntro(String intro) {
		this.intro = intro;
	}


	public java.sql.Date getCheckintime() {
		return checkintime;
	}


	public void setCheckintime(java.sql.Date checkintime) {
		this.checkintime = checkintime;
	}


	public java.sql.Date getCheckouttime() {
		return checkouttime;
	}


	public void setCheckouttime(java.sql.Date checkouttime) {
		this.checkouttime = checkouttime;
	}


	public String getConpany() {
		return conpany;
	}


	public void setConpany(String conpany) {
		this.conpany = conpany;
	}


	public String getLicense() {
		return license;
	}


	public void setLicense(String license) {
		this.license = license;
	}


	public String getCeo() {
		return ceo;
	}


	public void setCeo(String ceo) {
		this.ceo = ceo;
	}


	public String getOrgaddr() {
		return orgaddr;
	}


	public void setOrgaddr(String orgaddr) {
		this.orgaddr = orgaddr;
	}


	public String getWorkplace() {
		return workplace;
	}


	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}


	public String getCom_Tel() {
		return com_Tel;
	}


	public void setComTel(String com_Tel) {
		this.com_Tel = com_Tel;
	}


	public String getApproval() {
		return approval;
	}


	public void setApproval(String approval) {
		this.approval = approval;
	}
	
}
