package test.app.project.dao.p;

import java.util.HashMap;

import test.app.project.vo.MembersVo;

public interface MembersDao {
	
	public MembersVo isMember(MembersVo vo);
	
	public int join(MembersVo vo);
	
	public MembersVo idCheck(String mid);
	
	public MembersVo findPwd(HashMap<String, String> map);
	
	public int changePwd(MembersVo vo);
}
