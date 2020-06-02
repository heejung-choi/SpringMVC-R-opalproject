package model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.ContextConfiguration;

import model.vo.CustomCustomerDetails;

// DAO 클래스~~~~~

@Repository
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class CustomerAuthDAO {
	
	@Autowired
	public SqlSession session=null;

	public CustomCustomerDetails getUserByID(String cust_id) {
		System.out.println("CustomerAuthDAO 클래스의 getUserByID에 들어옴");
		CustomCustomerDetails cc = session.selectOne("resource.MemberMapper.selectCustomerById", cust_id);
		System.out.println(cc);
		return cc;
	}
}
