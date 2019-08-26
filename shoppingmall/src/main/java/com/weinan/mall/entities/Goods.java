package com.weinan.mall.entities;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

/**
 * ��Ʒ��
 * @author DELL
 *
 */
public class Goods {
	public static final int HOT=1;//������Ʒ
	public static final int NOT_HOT=0;//��ͨ��Ʒ
	public static final int SELLING=0;//������
	public static final int OFFSOLD=1;//���¼�

	private BigInteger id;
	private String goods_name;
	private BigDecimal price;
	private String image;
	private String description;
	private	int isHot;
	private Date shelf_time;
	private int isPull;
	private BigInteger category_id;
	
	public Goods() {
		
	}
	public Goods(BigInteger id,String goods_name,BigDecimal price,String image,String description,int isHot,Date shelf_time,int isPull,BigInteger category_id) {
		this.id=id;
		this.goods_name=goods_name;
		this.price=price;
		this.image=image;
		this.description=description;
		this.isHot=isHot;
		this.shelf_time=shelf_time;
		this.isPull=isPull;
		this.category_id=category_id;
	}
	public Goods(String goods_name,BigDecimal price,String image,String description,int isHot,int isPull,BigInteger category_id) {
		this.goods_name=goods_name;
		this.price=price;
		this.image=image;
		this.description=description;
		this.isHot=isHot;
		this.isPull=isPull;
		this.category_id=category_id;
	}
	
	public BigInteger getId() {
		return id;
	}
	public void setId(BigInteger id) {
		this.id=id;
	}
	public String getGoodsName() {
		return goods_name;
	}
	public void setGoodsName(String goodsName) {
		this.goods_name=goodsName;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price=price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image=image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description=description;
	}
	public int getIsHot() {
		return isHot;
	}
	public void setIsHot(int isHot) {
		this.isHot=isHot;
	}
	public Date getShelfTime() {
		return shelf_time;
	}
	public void setShelfTime(Date shelf_time) {
		this.shelf_time=shelf_time;
	}
	public int getIsPull() {
		return isPull;
	}
	public void setIsPull(int isPull) {
		this.isPull=isPull;
	}
	public BigInteger getCategoryId() {
		return category_id;
	}
	public void setCategoryId(BigInteger category_id) {
		this.category_id=category_id;
	}
	
	@Override
	public boolean equals(Object that) {
		return EqualsBuilder.reflectionEquals(this, that, "id","goodsName");
	}
	
	@Override
	public int hashCode() {
		return HashCodeBuilder.reflectionHashCode(this,"id","goodsName");
	}
}
