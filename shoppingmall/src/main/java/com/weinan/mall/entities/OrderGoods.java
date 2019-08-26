package com.weinan.mall.entities;

import java.math.BigDecimal;
import java.math.BigInteger;

/**
 * �������
 * @author DELL
 *
 */
public class OrderGoods {

	private BigInteger id;
	private BigInteger goods_id;
	private BigInteger orders_id;
	private int amount;
	private BigDecimal payment;
	
	public OrderGoods() {
		
	}
	public OrderGoods(BigInteger goods_id,BigInteger orders_id,int amount,BigDecimal payment) {
		this.goods_id=goods_id;
		this.orders_id=orders_id;
		this.amount=amount;
		this.payment=payment;
	}
	
	public BigInteger getId() {
		return id;
	}
	public void setId(BigInteger id) {
		this.id=id;
	}
	public BigInteger getGoodsId() {
		return goods_id;
	}
	public void setGoodsId(BigInteger goods_id) {
		this.goods_id=goods_id;
	}
	public BigInteger getOrderId() {
		return orders_id;
	}
	public void setOrderId(BigInteger orders_id) {
		this.orders_id=orders_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount=amount;
	}
	public BigDecimal getPayment() {
		return payment;
	}
	public void setPayment(BigDecimal payment) {
		this.payment=payment;
	}
}
