package org.ezen.ex02.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	// JVM에서 먼저 실행
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {

		/* try(자원...) { } 는 try -with -resource문으로 자원을 활용하여 try처리하고 마지막에 close됨 */
		try (Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "scott", "tiger")) {
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
}
