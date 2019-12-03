package test.app.project.vo;



public class AdministratorVo{


	/** 관리자식별키. */
	private int anum;

	/** 관리자아이디. */
	private String aid;

	/** 관리자비밀번호. */
	private String apwd;

	/**
	 * 생성자.
	 */
	public AdministratorVo() {
	}

	public AdministratorVo(int anum, String aid, String apwd) {
		super();
		this.anum = anum;
		this.aid = aid;
		this.apwd = apwd;
	}
	
	
	public void setAnum(int anum) {
		this.anum = anum;
	}

	/**
	 * 관리자식별키을 가져옵니다..
	 * 
	 * @return 관리자식별키
	 */
	public int getAnum() {
		return this.anum;
	}

	/**
	 * 관리자아이디을 설정합니다..
	 * 
	 * @param aid
	 *            관리자아이디
	 */
	public void setAid(String aid) {
		this.aid = aid;
	}

	/**
	 * 관리자아이디을 가져옵니다..
	 * 
	 * @return 관리자아이디
	 */
	public String getAid() {
		return this.aid;
	}

	/**
	 * 관리자비밀번호을 설정합니다..
	 * 
	 * @param apwd
	 *            관리자비밀번호
	 */
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}

	/**
	 * 관리자비밀번호을 가져옵니다..
	 * 
	 * @return 관리자비밀번호
	 */
	public String getApwd() {
		return this.apwd;
	}

}
