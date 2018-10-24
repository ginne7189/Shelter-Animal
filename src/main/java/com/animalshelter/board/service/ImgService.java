package com.animalshelter.board.service;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.ImgDto;

public interface ImgService {

	int upImg(ImgDto imgDto);
	List<ImgDto> listImg(Map<String,String> map);
	ImgDto getImg(int seq);
}
