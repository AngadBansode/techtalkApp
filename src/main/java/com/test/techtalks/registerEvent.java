package com.test.techtalks;

public class registerEvent 
{

	private int id;
	private String uname;
	private String date;
	
	public registerEvent()
	{
		System.out.println("registerEvent Default Ctor");
	}

	public registerEvent(int id, String uname, String date) {
		super();
		this.id = id;
		this.uname = uname;
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "registerEvent [id=" + id + ", uname=" + uname + ", date="
				+ date + "]";
	}
  
	
}

