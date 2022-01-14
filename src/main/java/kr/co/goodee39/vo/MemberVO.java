package kr.co.goodee39.vo;

public class MemberVO {
	private int mnum;
	private String id;
	private String password;
	private String email;
	private String pwFindQuestion;
	private String pwFindAnswer;
	private String introduction;
	private String skinType;
	private String skinTone;
	private String isdelete;
	
	public MemberVO() {

	}

	public int getMnum() {
		return mnum;
	}

	public void setMnum(int mnum) {
		this.mnum = mnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwFindQuestion() {
		return pwFindQuestion;
	}

	public void setPwFindQuestion(String pwFindQuestion) {
		this.pwFindQuestion = pwFindQuestion;
	}

	public String getPwFindAnswer() {
		return pwFindAnswer;
	}

	public void setPwFindAnswer(String pwFindAnswer) {
		this.pwFindAnswer = pwFindAnswer;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getSkinType() {
		return skinType;
	}

	public void setSkinType(String skinType) {
		this.skinType = skinType;
	}

	public String getSkinTone() {
		return skinTone;
	}

	public void setSkinTone(String skinTone) {
		this.skinTone = skinTone;
	}

	public String getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(String isdelete) {
		this.isdelete = isdelete;
	}
	
	
}
