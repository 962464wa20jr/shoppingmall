package com.weinan.mall.entities;

import java.math.BigInteger;
/**
 * 
 * @author DELL
 * ·ÖÀàÃû
 */

public class Category {

	private BigInteger id;
	private String brand_name;
	
	public Category() {
		
	}
	
	public Category(BigInteger id,String brand_name) {
		this.id=id;
		this.brand_name=brand_name;
	}
	
	public BigInteger getId() {
		return id;
	}
	public void setId(BigInteger id) {
		this.id=id;
	}
	public String getCategoryName() {
		return brand_name;
	}
	public void setCategoryName(String brand_name) {
		this.brand_name=brand_name;
	}
	
}
