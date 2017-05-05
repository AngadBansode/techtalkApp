package com.test.techtalks;

import java.util.Date;

public class Events 
{

	private String title;
	private String description;
	private String date;
	private String trainer;
	
	public Events()
	{
		System.out.println("Events default ctor");
	}

	public Events(String title, String description, String date, String trainer) {
		super();
		this.title = title;
		this.description = description;
		this.date = date;
		this.trainer = trainer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTrainer() {
		return trainer;
	}

	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}

	@Override
	public String toString() {
		return "Events [title=" + title + ", description=" + description
				+ ", date=" + date + ", trainer=" + trainer + "]";
	}
    
  	

}

