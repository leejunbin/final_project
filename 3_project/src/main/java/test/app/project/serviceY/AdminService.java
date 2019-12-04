package test.app.project.serviceY;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import test.app.project.daoY.AdminDao;

@Service
public class AdminService {
	
	@Autowired 
	private AdminDao dao;
	public AdminService(AdminDao dao) {
		this.dao = dao;
	}
	public HashMap<String,Object> login(HashMap<String,Object> map){
		System.out.println(map);
		return dao.login(map);
	}
}






