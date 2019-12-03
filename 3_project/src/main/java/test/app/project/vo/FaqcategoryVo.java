package test.app.project.vo;



public class FaqcategoryVo{


	/** 카테고리식별키. */
	private int fcnum;

	/** 카테고리명. */
	private String fctype;

	public FaqcategoryVo() {
		
	}

	public FaqcategoryVo(int fcnum, String fctype) {
		super();
		this.fcnum = fcnum;
		this.fctype = fctype;
	}

	public int getFcnum() {
		return fcnum;
	}

	public void setFcnum(int fcnum) {
		this.fcnum = fcnum;
	}

	public String getFctype() {
		return fctype;
	}

	public void setFctype(String fctype) {
		this.fctype = fctype;
	}
	
}
