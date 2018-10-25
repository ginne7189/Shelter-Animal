package com.animalshelter.common.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalshelter.common.dao.CommonDao;
import com.animalshelter.sidebar.model.*;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public PageNavigation makePageNavigation(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		
		PageNavigation navigation = new PageNavigation();
		navigation.setPageNo(pg);
//		int newArticleCount = sqlSession.getMapper(CommonDao.class).getNewArticleCount(Integer.parseInt(map.get("bcode")));
//		navigation.setNewArticleCount(newArticleCount);
		int totalArticleCount = sqlSession.getMapper(CommonDao.class).getTotalArticleCount(map);
		navigation.setTotalArticleCount(totalArticleCount);
		int totalPageCount = (totalArticleCount - 1) / 9 + 1;
		navigation.setTotalPageCount(totalPageCount);
		int pc = 10;
		navigation.setNowFirst(pg <= pc);
		navigation.setNowLast((totalPageCount - 1) / pc * pc < pg);
		return navigation;
	}
	
}







