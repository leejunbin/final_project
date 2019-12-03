package test.app.project.vo;


public class HouseImgVo {


	/** 기본식별키. */
	private int houseImgNum;

	/** 업소테이블. */
	private int house_num;

	/** 업소이미지원본명. */
	private String houseOrgName;

	/** 업소이미지저장명. */
	private String houseSaveName;

	/**
	 * 생성자.
	 */
	public HouseImgVo() {
	}

	public HouseImgVo(int houseImgNum, int house_num, String houseOrgName, String houseSaveName) {
		super();
		this.houseImgNum = houseImgNum;
		this.house_num = house_num;
		this.houseOrgName = houseOrgName;
		this.houseSaveName = houseSaveName;
	}

	public int getHouseImgNum() {
		return houseImgNum;
	}

	public void setHouseImgNum(int houseImgNum) {
		this.houseImgNum = houseImgNum;
	}

	public int getHouse_num() {
		return house_num;
	}

	public void setHouse_num(int house_num) {
		this.house_num = house_num;
	}

	public String getHouseOrgName() {
		return houseOrgName;
	}

	public void setHouseOrgName(String houseOrgName) {
		this.houseOrgName = houseOrgName;
	}

	public String getHouseSaveName() {
		return houseSaveName;
	}

	public void setHouseSaveName(String houseSaveName) {
		this.houseSaveName = houseSaveName;
	}

}
