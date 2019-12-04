package test.app.project.service.p;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import test.app.project.daoimpl.p.MembersDaoImpl;
import test.app.project.vo.MembersVo;

@Service
public class MembersService {
	@Autowired
	private MembersDaoImpl membersDaoImpl;
	
	// 로그인
	public MembersVo isMember(MembersVo vo){
		return membersDaoImpl.isMember(vo);
	}
	
	//회원가입
	public int join(MembersVo vo){
		return membersDaoImpl.join(vo);
	}
	
	//아이디 중복검사
	public MembersVo idCheck(String mid){
		
		return membersDaoImpl.idCheck(mid);
		
	}
}
