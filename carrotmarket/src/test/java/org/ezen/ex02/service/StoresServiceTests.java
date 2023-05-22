package org.ezen.ex02.service;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.mapper.StoresMapper;
import org.junit.Test;
import org.junit.internal.builders.JUnit4Builder;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class StoresServiceTests {
	
	@Setter(onMethod_=@Autowired)
	StoresService service;
	
//	@Test
//	public void TestExits() {
//		log.info(service);
//		assertNotNull(service);
//	}
	
	
	@Test
	public void getListTests(){
		List<StoresVO> result = service.getList();
		log.info(result);
		
	}
}
