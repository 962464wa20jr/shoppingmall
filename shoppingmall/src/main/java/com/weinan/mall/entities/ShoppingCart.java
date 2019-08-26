package com.weinan.mall.entities;

import java.math.BigInteger;

public class ShoppingCart {
	private BigInteger id;
	private BigInteger goods_id;
	private BigInteger user_id;
	private int amount;
	
	public ShoppingCart(BigInteger user_id,BigInteger goods_id,int amount) {
		this.goods_id=goods_id;
		this.user_id=user_id;
		this.amount=amount;
	}
	public BigInteger getId() {
		return id;
	}
	public void setId(BigInteger id) {
		this.id=id;
	}
	public BigInteger getGoodsId() {
		return  goods_id;
	}
	public void setGoodsId(BigInteger goods_id) {
		this.goods_id=goods_id;
	}
	public BigInteger getUserId() {
		return user_id;
	}
	public void setUserId(BigInteger user_id) {
		this.user_id=user_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount=amount;
	}

}
