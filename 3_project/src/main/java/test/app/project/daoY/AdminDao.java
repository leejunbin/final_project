package test.app.project.daoY;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	public AdminDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate=sqlSessionTemplate;
	}
	public HashMap<String,Object> login(HashMap<String,Object> map){
		System.out.println("admindao");
		return 
		sqlSessionTemplate.selectOne("test.app.mybatis.mapperY.AdminMapper.login",map);
	}
	
}








