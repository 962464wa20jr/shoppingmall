package com.weinan.mall.entities;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

/**
 * ������
 * @author DELL
 *
 */
public class Order {

	public static final int NOT_PAID=0;//δ����
	public static final int PAID=1;//�Ѹ���
	
	
	private BigInteger id;
	private Date c_time; //��������ʱ��
	private String receiver_name;
	private String address;
	private String phoneNumber;
	private int status;
	private BigInteger user_id;
	
	public Order() {
		
	}
	
	public Order(String receiver_name,String address,String phoneNumber,BigInteger user_id) {
		this.receiver_name=receiver_name;
		this.address=address;
		this.phoneNumber=phoneNumber;
		this.user_id=user_id;
	}
	
	public BigInteger getId() {
		return id;
	}
	public void setId(BigInteger id) {
		this.id=id;
	}
	public Date getCreateTime() {
		return c_time;
	}
	public void setCreateTiem(Date c_time) {
		this.c_time=c_time;
	}
	
	public String getReceiverName() {
		return receiver_name;
	}
	public void setReceiverName(String receiver_name) {
		this.receiver_name=receiver_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber=phoneNumber;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status=status;
	}
	public BigInteger getUserId() {
		return user_id;
	}
	public void setUserId(BigInteger user_id) {
		this.user_id=user_id;
	}
	
	@Override
	public boolean equals(Object that) {
		return EqualsBuilder.reflectionEquals(this, that, "id");
	}
	@Override
	public int hashCode() {
		return HashCodeBuilder.reflectionHashCode(this, "id");
	}
	
}
