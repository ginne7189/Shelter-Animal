package com.animalshelter.board.dao;

import com.animalshelter.board.model.*;

public interface PboardDao {

	int writeArticle(PboardDto pboardDto);
	int mwriteArticle(MissingBoardDto mboardDto);
	PboardDto viewArticle(int seq);
	MissingBoardDto mviewArticle(int seq);
	DonationBoardDto dviewArticle(int seq);
	VolunteerBoardDto vviewArticle(int seq);
//	PboardDto viewArticle();
}
