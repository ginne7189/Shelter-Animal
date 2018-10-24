package com.animalshelter.sidebar.dao;

import java.util.List;
import java.util.Map;

import com.animalshelter.sidebar.model.*;

public interface SidebarDao {
	List<BoardDto> articleList(Map<String, String> map);
	List<MissingDto> missingList(Map<String, String> map);
	List<ParcelDto> attention(Map<String, String> map);
	List<ParcelDto> myattention(Map<String, String> map);
	List<DonationDto> donation();
	List<DonationDto> mydonation(Map<String, String> map);
	List<VolunteerDto> volunteer();
	List<VolunteerDto> myvolunteer(Map<String, String> map);
	List<ParcelDto> parcel();
	List<ParcelDto> myparcel(Map<String, String> map);
}
