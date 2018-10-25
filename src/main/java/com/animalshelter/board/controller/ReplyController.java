package com.animalshelter.board.controller;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.animalshelter.board.model.ReplyDto;
import com.animalshelter.board.service.ReplyService;

@Controller
public class ReplyController {

	@Autowired
	private ReplyService replyService;

	@ResponseBody
	@RequestMapping(value = "/reply/insert.animal", method = RequestMethod.POST)
	public String insert(ReplyDto replyDto) {
		int cnt = replyService.insertReply(replyDto);
		String str = "";
		if (cnt == 1) {
			str = "'<tr><td>'"+ replyDto.getWriter() +"' </td><td>' "+ replyDto.getCmnt_content() + "'</td><td>'방금'</td></tr>'";
		} else {
			str = "댓글을 등록할 수 없었습니다.";
		}

		return str;
	}

	@ResponseBody
	@RequestMapping(value = "/reply/show.animal", method = RequestMethod.POST)
	public String show(ReplyDto replyDto) {
		List<ReplyDto> list = new ArrayList<ReplyDto>();
		list = replyService.showReply(replyDto);		
		
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();
		
		for(ReplyDto reply : list) {
			JSONObject replyValue = new JSONObject();
			replyValue.put("c_code", reply.getC_code());
			replyValue.put("cmnt_content", reply.getCmnt_content());
			replyValue.put("reg_date", reply.getReg_date());
			replyValue.put("writer", reply.getWriter());
			replyValue.put("seq", reply.getSeq());
			jarray.put(replyValue);
		}
		json.put("replyValue",jarray);
		return json.toString();
	}
	
	@ResponseBody
	@RequestMapping(value = "/reply/delete.animal", method = RequestMethod.POST)
	public String delete(ReplyDto replyDto) {
		System.out.println("hi");
		//int cnt = replyService.deleteReply(replyDto);
		String str="";
		/*if(cnt==1) {
			str = "good";
		}else {
			str="bad";
		}*/
		return str;
	}
}
