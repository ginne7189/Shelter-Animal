package com.animalshelter.admin.dao;

import java.util.List;

public interface AdminDao {
	List<String> getAllEmail();
	List<String> getRelatedEmail(String usercode);	
}
