# 해당 경로에 jdbc 6.jar 파일 넣기

C:\Program Files\Java\jre1.8.0_231\lib\ext

C:\Program Files\Java\jdk1.8.0_231\jre\lib\ext



# servlet 파일 변경하기.



# 테스트용 파일 만들기

```
package my.spring.opalproject;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OracleEx01 {

	public static void main(String[] args) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "scott";
		String password = "tiger";
		try {
			Class.forName(driver);
			System.out.println("jdbc driver 로딩 성공");
			DriverManager.getConnection(url, user, password);
			System.out.println("오라클 연결 성공");
		} catch (ClassNotFoundException e) {
			System.out.println("jdbc driver 로딩 실패");
		} catch (SQLException e) {
			System.out.println("오라클 연결 실패");
		}
	}
	
}

```

