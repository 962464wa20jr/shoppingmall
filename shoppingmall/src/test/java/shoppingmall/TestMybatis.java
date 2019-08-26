package shoppingmall;

import static org.junit.Assert.*;

import java.math.BigInteger;
import java.util.List;

import javax.annotation.Resource;


import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.weinan.mall.entities.Category;
import com.weinan.mall.entities.Goods;
import com.weinan.mall.entities.User;
import com.weinan.mall.service.CategoryService;
import com.weinan.mall.service.GoodsService;
import com.weinan.mall.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:SpringMVC.xml","classpath*:Spring-Mybatis.xml"})
public class TestMybatis extends AbstractJUnit4SpringContextTests{

	@Resource(name="categoryService")
	private CategoryService categoryService;
	
	@Resource(name="userService")
	private UserService userService;
	
	@Resource(name="goodsService")
	private GoodsService goodsService;
	
	@Test
	public void test() {
		/*List<Category> categories=categoryService.findALLCategory();
		for(Category c:categories){
			System.out.println(c.getCategoryName());
		}*/
		//fail("Not yet implemented");	
		User user=new User("徐玮南","962464wa20jr");
		String id="1";
		User finduser=userService.findUserByUsernameAndPassword(user);
		if(finduser==null) System.out.println("null");
		else System.out.println(finduser.getNickname());
		
		/*String id="2";
		Category c=categoryService.findCategoryById(new BigInteger(id));
		System.out.println(c.getCategoryName());*/
	}

}
