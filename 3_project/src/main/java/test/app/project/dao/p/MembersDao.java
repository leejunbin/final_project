package test.app.project.dao.p;

import test.app.project.vo.MembersVo;

public interface MembersDao {
	
	public MembersVo isMember(MembersVo vo);
	
	public int join(MembersVo vo);
	
	public MembersVo idCheck(String mid);
}
