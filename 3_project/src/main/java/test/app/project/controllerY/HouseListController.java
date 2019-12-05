package test.app.project.controllerY;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import test.app.project.serviceY.AdminService;

@Controller
public class HouseListController {
	@RequestMapping(value="/admin_view/table",method=RequestMethod.GET)
	public String loginForm(){
		return ".table";
	}

}
	
	