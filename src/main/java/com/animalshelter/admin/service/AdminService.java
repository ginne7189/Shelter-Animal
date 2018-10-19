package com.animalshelter.admin.service;

import java.util.List;

public interface AdminService {
	List<String> getAllEmail();
	List<String> getRelatedEmail(String usercode);	
}
