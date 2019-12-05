package test.app.project.daoimpl.p;

import java.util.HashMap;

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
	
	// 비밀번호 찾기 임시비밀번호 발송
	@Override
	public MembersVo findPwd(HashMap<String, String> map) {
		return sqlSessionTemplate.selectOne(NAMESPACE+".findPwd", map);
	}
	
	// 임시비밀번호로 비밀번호 변경
	@Override
	public int changePwd(MembersVo vo) {
		
		return sqlSessionTemplate.update(NAMESPACE+".changePwd", vo);
	
	}
	
	// 마이페이지에 담고갈 회원정보
	@Override
	public HashMap<String, Object> myinfo(String mid) {
		
		return sqlSessionTemplate.selectOne(NAMESPACE+".myinfo", mid);
		
	}
	
	// 회원의 쿠폰 갯수 구하기
	@Override
	public int cntCoupon(String mid) {
		return sqlSessionTemplate.selectOne(NAMESPACE+".cntCoupon",mid);
	}
	
	// 회원정보 수정
	@Override
	public int myinfoupdate(MembersVo vo) {
		return sqlSessionTemplate.update(NAMESPACE+".myinfoupdate", vo);
	}
	
}
