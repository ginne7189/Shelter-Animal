package com.animalshelter.board.service;

import java.util.List;

import com.animalshelter.board.model.ReplyDto;

public interface ReplyService {
	int insertReply(ReplyDto replyDto);
	int updateReply(ReplyDto replyDto);
	int deleteReply(ReplyDto replyDto);
	List<ReplyDto> showReply(ReplyDto replyDto);
}
