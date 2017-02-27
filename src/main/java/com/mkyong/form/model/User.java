package com.mkyong.form.model;

import java.util.ArrayList;
import java.util.List;

public class User {
	// form:hidden - hidden value
	Integer id;

	String activity;

	String start_planned;

	String start_actual;

	String finish_planned;

	String finish_actual;

	// form:radiobutton - radio button
	String status;


	public boolean isNew() {
		return (this.id == null);
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", activity=" + activity + ", start_planned=" + start_planned + ", start_actual="
				+ start_actual + ", finish_planned=" + finish_planned + ", finish_actual=" + finish_actual + ", status="
				+ status + "]" + isNew();
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getActivity() {
		return activity;
	}


	public void setActivity(String activity) {
		this.activity = activity;
	}


	public String getStart_planned() {
		return start_planned;
	}


	public void setStart_planned(String start_planned) {
		this.start_planned = start_planned;
	}


	public String getStart_actual() {
		return start_actual;
	}


	public void setStart_actual(String start_actual) {
		this.start_actual = start_actual;
	}


	public String getFinish_planned() {
		return finish_planned;
	}


	public void setFinish_planned(String finish_planned) {
		this.finish_planned = finish_planned;
	}


	public String getFinish_actual() {
		return finish_actual;
	}


	public void setFinish_actual(String finish_actual) {
		this.finish_actual = finish_actual;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}
	

}
