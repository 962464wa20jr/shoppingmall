package com.weinan.mall.entities;

import java.math.BigInteger;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
/**
 * �û���
 * @author DELL
 *
 */
public class User {
	public static final int MEAL=1;//Ů��
	public static final int FEMEAL=0;//����
	public static final int ROLE_USER=1;//��ͨ�û�
	public static final int ROLE_ADMIN=0;//����Ա
	
	private BigInteger id;
	private String username;
	private String password;
	private String email;
	private String nickname;
	private int sex;
	private int role;
	
	public User() {
		
	}
	
	public User(String username,String password) {
		this.username=username;
		this.password=password;
	}
	public User(BigInteger id,String username,String password,String email,String nickname,int sex,int role) {
		this.id=id;
		this.username=username;
		this.password=password;
		this.email=email;
		this.nickname=nickname;
		this.sex=sex;
		this.role=role;
	}
	public User(String username,String password,String email,String nickname,int sex) {
		
		this.username=username;
		this.password=password;
		this.email=email;
		this.nickname=nickname;
		this.sex=sex;
		
	}
	
	public BigInteger getId() {
		return id;
	}
	public void setId(BigInteger id) {
		this.id=id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username=username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname=nickname;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex=sex;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role=role;
	}
	
	@Override
	public boolean equals(Object that) {
		return EqualsBuilder.reflectionEquals(this, that, "username","password");
	}
	
	@Override
	public int hashCode() {
		return HashCodeBuilder.reflectionHashCode(this, "username","password");
	}

}
