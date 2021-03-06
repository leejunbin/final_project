package test.app.project.vo;


/**
 * Q&A카테고리 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class QnaCategoryVo {


	/** qna카테고리식별키. */
	private int qnaCategoryNum;

	/** qna카테고리명. */
	private String qnaCategoryName;


	/**
	 * 생성자.
	 */
	public QnaCategoryVo() {
		
	}


	public QnaCategoryVo(int qnaCategoryNum, String qnaCategoryName) {
		super();
		this.qnaCategoryNum = qnaCategoryNum;
		this.qnaCategoryName = qnaCategoryName;
	}


	public int getQnaCategoryNum() {
		return qnaCategoryNum;
	}


	public void setQnaCategoryNum(int qnaCategoryNum) {
		this.qnaCategoryNum = qnaCategoryNum;
	}


	public String getQnaCategoryName() {
		return qnaCategoryName;
	}


	public void setQnaCategoryName(String qnaCategoryName) {
		this.qnaCategoryName = qnaCategoryName;
	}

}
