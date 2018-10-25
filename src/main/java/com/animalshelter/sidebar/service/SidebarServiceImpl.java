package com.animalshelter.sidebar.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalshelter.sidebar.dao.SidebarDao;
import com.animalshelter.sidebar.model.*;

@Service
public class SidebarServiceImpl implements SidebarService{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<InfoDto> infoList(Map<String, String> map) {
		return sqlSession.getMapper(SidebarDao.class).infoList(map);
	}
	@Override
	public List<BoardDto> articleList(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).articleList(map);
	}
	@Override
	public List<MissingDto> missingList(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).missingList(map);
	}
	@Override
	public List<ParcelDto> attention(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).attention(map);
	}

	@Override
	public List<DonationDto> donation(Map<String, String> map) {

		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).donation(map);
	}

	@Override
	public List<VolunteerDto> volunteer(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).volunteer(map);
	}

	@Override
	public List<ParcelDto> parcel(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).parcel(map);
	}

	@Override
	public List<ParcelDto> myattention(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).myattention(map);
	}

	@Override
	public List<DonationDto> mydonation(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).mydonation(map);
	}

	@Override
	public List<VolunteerDto> myvolunteer(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).myvolunteer(map);
	}

	@Override
	public List<ParcelDto> myparcel(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).myparcel(map);
	}
	@Override
	public List<ParcelDto> pick(Map<String, String> map) {
		return sqlSession.getMapper(SidebarDao.class).pick(map);
	}
	@Override
	public List<ParcelDto> picklist(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).picklist(map);
	}
	@Override
	public List<ParcelDto> pparcel(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = 9 * pg;
		int start = end - 9;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(SidebarDao.class).pparcel(map);
	}	
}