package com.animalshelter.board.service;

import com.animalshelter.board.model.PboardDto;

public interface PboardService {

	int writeArticle(PboardDto pboardDto);
//	PboardDto viewArticle(int seq);
	PboardDto viewArticle();
}
