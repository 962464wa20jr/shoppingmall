package com.weinan.mall.service;

import java.math.BigInteger;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.weinan.mall.mapping.CategoryDAO;
import com.weinan.mall.entities.Category;

@Service("categoryService")
public class CategoryService {

	@Resource
	private CategoryDAO categoryDao;
	
	
	public List<Category> findALLCategory(){
		return categoryDao.findAllCategory();
	}
	
	public Category findCategoryById(BigInteger id) {
		return categoryDao.findById(id);
	}
	
	@Transactional
	public int add(Category entity) {
		return categoryDao.add(entity);
	}
	
	@Transactional
	public int delete(BigInteger id) {
		return categoryDao.delete(id);
	}
	
	@Transactional
	public int update(Category entity) {
		return categoryDao.update(entity);
	}
	
	@Transactional
	public int delete(String[] ids) {
		int rows=0;
		for(String i:ids) {
			BigInteger id=new BigInteger(i);
			rows+=categoryDao.delete(id);
		}
		return rows;
	}
}
