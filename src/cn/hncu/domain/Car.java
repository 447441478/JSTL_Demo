package cn.hncu.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Car implements Serializable {
	private String no; //车牌号
	private String name; //车名
	
	public Car() {
	}
	
	
	public Car(String no, String name) {
		super();
		this.no = no;
		this.name = name;
	}



	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
