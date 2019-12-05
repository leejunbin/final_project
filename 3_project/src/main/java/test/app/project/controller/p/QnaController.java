package test.app.project.controller.p;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import test.app.project.service.p.MembersService;
import test.app.project.vo.QnaboardVo;

@Controller
public class QnaController {
	@Autowired
	private MembersService membersService;
	
	@RequestMapping(value="/members/qna",method=RequestMethod.GET)
	public String qnaForm(){
		
		return ".members_p.qna";
		
	}
	@RequestMapping(value="/members/qna",method=RequestMethod.POST)
	public String qna(String qna_title, String qna_content, int qna_category_num,HttpSession session){
		
		System.out.println("qna_title:"+qna_title);
		System.out.println("qna_content:"+qna_content);
		System.out.println("qna_category_num:"+qna_category_num);
		
		String mid = (String) session.getAttribute("id");
		
		QnaboardVo vo = new QnaboardVo(0, mid, qna_category_num, qna_title, qna_content, null, null, null);
		
		int n = membersService.qnainsert(vo);
		
		if(n>0){
			return "redirect:/members/mypage";
		}else{
			return "redirect:/members/qna";
		}
	}
}
