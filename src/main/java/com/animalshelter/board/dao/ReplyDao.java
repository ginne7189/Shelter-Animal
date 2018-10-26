package com.animalshelter.board.dao;

import java.util.List;

import com.animalshelter.board.model.ReplyDto;

public interface ReplyDao {
	int insertReply(ReplyDto replyDto);
	int updateReply(ReplyDto replyDto);
	int deleteReply(ReplyDto replyDto);
	List<ReplyDto> showReply(ReplyDto replyDto);
}
