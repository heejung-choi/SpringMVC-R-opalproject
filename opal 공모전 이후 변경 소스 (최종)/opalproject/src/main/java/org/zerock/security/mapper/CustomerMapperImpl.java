package org.zerock.security.mapper;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.ContextConfiguration;

import model.vo.CustomCustomerDetails;

@Repository
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class CustomerMapperImpl implements CustomerMapper{
	
	@Autowired
	public SqlSession session=null;
	
	public CustomCustomerDetails read(String cust_id) {
		System.out.println("CustomerMapper 클래스의 read에 들어옴");
		CustomCustomerDetails customer = session.selectOne("resource.MemberMapper.read", cust_id);
		System.out.println("CustomerMapper의 customer : " + customer);
		return customer;
	}

}