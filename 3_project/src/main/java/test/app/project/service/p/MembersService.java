package test.app.project.service.p;

import java.util.HashMap;

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
	
	// 임시비밀번호 발송
	public MembersVo findPwd(HashMap<String, String> map){
		
		return membersDaoImpl.findPwd(map);
		
	}
	
	// 임시비밀번호로 변경
	public int changePwd(MembersVo vo){
		return membersDaoImpl.changePwd(vo);
	}
}
