package com.animalshelter.sidebar.service;

import java.util.List;
import java.util.Map;

import com.animalshelter.sidebar.model.*;

public interface SidebarService {
	List<BoardDto> articleList(Map<String, String> map);
	List<InfoDto> infoList(Map<String, String> map);
	List<MissingDto> missingList(Map<String, String> map);
	List<ParcelDto> attention(Map<String, String> map);
	List<ParcelDto> myattention(Map<String, String> map);
	List<ParcelDto> pick(Map<String, String> map);
	List<ParcelDto> picklist(Map<String, String> map);
	List<ParcelDto> pparcel(Map<String, String> map);
	List<DonationDto> donation(Map<String, String> map);
	List<DonationDto> mydonation(Map<String, String> map);	
	List<VolunteerDto> volunteer(Map<String, String> map);
	List<VolunteerDto> myvolunteer(Map<String, String> map);
	List<ParcelDto> parcel(Map<String, String> map);
	List<ParcelDto> myparcel(Map<String, String> map);
}
