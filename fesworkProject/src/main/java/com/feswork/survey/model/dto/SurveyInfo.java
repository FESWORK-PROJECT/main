package com.feswork.survey.model.dto;

import java.util.Arrays;

public class SurveyInfo {
	private String preferredLocation;
	private String[] themes;
	
	public SurveyInfo() {
		super();
	}
	public SurveyInfo(String preferredLocation, String[] themes) {
		super();
		this.preferredLocation = preferredLocation;
		this.themes = themes;
	}
	public String getPreferredLocation() {
		return preferredLocation;
	}
	public void setPreferredLocation(String preferredLocation) {
		this.preferredLocation = preferredLocation;
	}
	public String[] getThemes() {
		return themes;
	}
	public void setThemes(String[] themes) {
		this.themes = themes;
	}
	
	@Override
	public String toString() {
		return "SurveyInfo [preferredLocation=" + preferredLocation + ", themes=" + Arrays.toString(themes) + "]";
	}
	
}
