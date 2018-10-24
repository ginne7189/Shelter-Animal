package com.animalshelter.board.dao;

import com.animalshelter.board.model.PboardDto;

public interface PboardDao {

	int writeArticle(PboardDto pboardDto);
//	PboardDto viewArticle(int seq);
	PboardDto viewArticle();
}
