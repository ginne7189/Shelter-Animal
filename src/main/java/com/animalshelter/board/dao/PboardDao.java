package com.animalshelter.board.dao;

import com.animalshelter.board.model.MissingBoardDto;
import com.animalshelter.board.model.PboardDto;

public interface PboardDao {

	int writeArticle(PboardDto pboardDto);
	int mwriteArticle(MissingBoardDto mboardDto);
	PboardDto viewArticle(int seq);
//	PboardDto viewArticle();
}
