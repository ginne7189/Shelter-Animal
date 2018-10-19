package com.animalshelter.board.service;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.DonationBoardDto;

public interface DonationBoardService {
	int writeArticle(DonationBoardDto donationboardDto);
	int replyArticle(DonationBoardDto donationboardDto);
	List<DonationBoardDto> listArticle(Map<String, String> map);
	DonationBoardDto viewArticle(int seq);
	DonationBoardDto getArticle(int seq);
	int modifyArticle(DonationBoardDto donationboardDto);
	void deleteArticle(int seq);
}
