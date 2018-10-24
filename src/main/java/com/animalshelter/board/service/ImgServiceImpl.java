package com.animalshelter.board.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalshelter.common.dao.CommonDao;
import com.animalshelter.board.dao.ImgDao;
import com.animalshelter.board.model.ImgDto;
@Service
public class ImgServiceImpl implements ImgService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int upImg(ImgDto imgDto) {
		int seq = sqlSession.getMapper(CommonDao.class).getNextSeq();
		imgDto.setSeq(seq);
		return sqlSession.getMapper(ImgDao.class).upImg(imgDto) != 0 ? seq : 0;
	}

	@Override
	public List<ImgDto> listImg(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ImgDto getImg(int seq) {
		// TODO Auto-generated method stub
		return null;
	}

}
