package com.weinan.mall.mapping;

import java.math.BigInteger;
import java.util.List;

import com.weinan.mall.entities.Category;

public interface CategoryDAO {

	List<Category> findAllCategory();
	
	Category findById(BigInteger id);
	
	int add(Category entity);
	
	int delete(BigInteger id);
	
	int update(Category entity);
	
	BigInteger findIdByCatagoryName(String name);
}
