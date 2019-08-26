package shoppingmall;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;

import com.weinan.mall.controller.LoginController;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.*;

import javax.annotation.Resource;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:SpringMVC.xml","classpath*:/Spring-Mybatis.xml"})
public class TestLoginController {
	
    @Resource
    private LoginController loginController;
	
	@Test
	public void testLogin() throws Exception{
		MockMvc mockMvc=standaloneSetup(loginController).build();
		mockMvc.perform(get("/user")).andExpect(view().name("login"));
	}

	
}
