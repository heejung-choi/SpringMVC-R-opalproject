package model.dao;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.ContextConfiguration;

import model.vo.CustomerVO;

@Repository
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
public class MemberSignUpDAO {
	
	@Autowired
	SqlSession session = null;
	
	@Autowired
	private PasswordEncoder pwencoder;
	
	@Autowired
	private DataSource ds;
	
	public boolean insertMember(CustomerVO vo) {
		boolean result = false;
		vo.setCust_pw("{noop}"+pwencoder.encode(vo.getCust_pw()));
		System.out.println(vo);
		String statement = "resource.MemberMapper.customerSignUp";
		if (session.insert(statement, vo) == 1)
			result = true;
		return result;
		
		
		
		
//		String sql = "insert into customer(cust_cd ,cust_id, cust_pw, cust_name, cust_gender, cust_email, cust_pnum, cust_address, cust_birthday_date) values (customer_SEQ.nextval,?,?,?,?,?,?,?,?)";
//		System.out.println(vo);
//		Connection con = null;
//		PreparedStatement pstmt =null;
//		try {
//			con = ds.getConnection();
//			pstmt = con.prepareStatement(sql);
//			
//			pstmt.setString(1, cust_id);
//			pstmt.setString(2, pwencoder.encode(cust_pw));
//			pstmt.setString(3, cust_name);
//			pstmt.setString(4, cust_gender);
//			pstmt.setString(5, cust_email);
//			pstmt.setString(6, cust_pnum);
//			pstmt.setString(7, cust_address);
//			pstmt.setString(8, cust_birthday_date);
//			
//			pstmt.executeUpdate();
//		}catch(Exception e) {
//			e.printStackTrace();
//		}finally {
//			if(pstmt !=null) {try {pstmt.close();}catch(Exception e) {}}
//			if(con != null) {try {con.close();}catch(Exception e) {}}
//		}
	}

}
