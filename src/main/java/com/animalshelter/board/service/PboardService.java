package com.animalshelter.board.service;

import com.animalshelter.board.model.*;

public interface PboardService {

	int writeArticle(PboardDto pboardDto);
	int mwriteArticle(MissingBoardDto mboardDto);
	PboardDto viewArticle(int seq);
	DonationBoardDto dviewArticle(int seq);
	MissingBoardDto mviewArticle(int seq);
	VolunteerBoardDto vviewArticle(int seq);
//	PboardDto viewArticle();
}
