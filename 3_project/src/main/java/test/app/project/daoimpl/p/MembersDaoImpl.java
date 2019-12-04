package test.app.project.daoimpl.p;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.app.project.dao.p.MembersDao;
import test.app.project.vo.MembersVo;

@Repository
public class MembersDaoImpl implements MembersDao{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private final String NAMESPACE = "test.app.mybatis.mapper.p.MembersMapper";
	
	// 로그인시 회원인지 체크
	@Override
	public MembersVo isMember(MembersVo vo) {
		
		return sqlSessionTemplate.selectOne(NAMESPACE+".isMember", vo);
		
		
	}
	
	// 회원가입
	@Override
	public int join(MembersVo vo) {
		
		return sqlSessionTemplate.insert(NAMESPACE+".join", vo);
	}
	
	//아이디 중복검사
	@Override
	public MembersVo idCheck(String mid) {
		
		return sqlSessionTemplate.selectOne(NAMESPACE+".idCheck",mid);
		
	}
	
}
