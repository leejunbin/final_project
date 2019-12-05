package test.app.project.controllerY;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import test.app.project.serviceY.AdminService;
import test.app.project.vo.EventVo;
import test.app.project.vo.HouseVo;
import test.app.project.vo.NoticeVo;

@Controller
public class EventController {
	@Autowired
	private AdminService service;
	public void setService(AdminService service) {
		this.service = service;
	}
	@RequestMapping(value = "/admin_view/eventboard", method = RequestMethod.GET)
	public ModelAndView applist() {
		List<EventVo> elist = service.elistAll();
		ModelAndView mv = new ModelAndView("admin_view/eventboard");
		mv.addObject("list2", elist);
		return mv;
	}
	/*
	@RequestMapping(value = "/admin_view/writenotice", method = RequestMethod.GET)
	public String lookwrite(){
		return "admin_view/writenotice";
	}
	@RequestMapping(value="/admin_view/writenoticeok",method=RequestMethod.GET)
	public String writenoticeok(String ntitle,String ncontent,HttpSession session){
		HashMap<String,Object> map=new HashMap<String, Object>();
		map.put("ntitle",ntitle);
		map.put("ncontent",ncontent);
		int n=service.wnotice(map);
		System.out.println(n);
		if(n>0){
			return "redirect:/admin_view/noticeboard";
		}else{
			return "admin_view/writenotice";
		}
	}
	@RequestMapping(value = "/admin_view/upnotice", method = RequestMethod.GET)
	public ModelAndView upnotice(int nnum){
		List<NoticeVo> nlist = service.nlist(nnum);
		ModelAndView mv = new ModelAndView("admin_view/updatenotice");
		mv.addObject("list", nlist);
		return mv;
	}
	@RequestMapping(value = "/admin_view/upnoticeok", method = RequestMethod.GET)
	public String upnotice(NoticeVo vo){
		int n=service.upnotice(vo);
		System.out.println(vo.getNcontent());
		System.out.println(vo.getNnum());
		System.out.println(vo.getNtitle());
		System.out.println(vo.getNregdate());
		if (n > 0) {
			return "redirect:/admin_view/noticeboard";
		} else {
			return "redirect:/admin_view/login";
		}
	}
	*/
	
	@RequestMapping(value = "/admin_view/delevent", method = RequestMethod.GET)
	public String delevent(int event_Num, HttpSession session) {
		int n = service.eventdelete(event_Num);
		if (n > 0) {
			return "redirect:/admin_view/eventboard";
		} else {
			return "redirect:/admin_view/eventboard";
		}
	}
	/*
	@RequestMapping(value = "/admin_view/selnotice", method = RequestMethod.GET)
	public ModelAndView selnotice(int nnum, HttpSession session) {
		List<NoticeVo> nlist = service.nlist(nnum);
		ModelAndView mv = new ModelAndView("admin_view/selnotice");
		mv.addObject("list", nlist);
		return mv;
	}
	*/
}
	
	