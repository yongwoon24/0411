package kr.co.yangdoll.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TimeMapperTest {
	
	@Autowired
	ApplicationContext context;
	
	@Autowired
	TimeMapper mapper;
	
	@Test
	public void serverTime() {
		String result = mapper.getTime();
		System.out.println(result);
	}
	
}
