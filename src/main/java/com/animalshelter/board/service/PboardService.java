package com.animalshelter.board.service;

import com.animalshelter.board.model.MissingBoardDto;
import com.animalshelter.board.model.PboardDto;

public interface PboardService {

	int writeArticle(PboardDto pboardDto);
	int mwriteArticle(MissingBoardDto mboardDto);
	PboardDto viewArticle(int seq);
//	PboardDto viewArticle();
}
