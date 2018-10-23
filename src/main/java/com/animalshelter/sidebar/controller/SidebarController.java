package com.animalshelter.sidebar.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.animalshelter.common.service.CommonService;
import com.animalshelter.sidebar.model.*;
import com.animalshelter.sidebar.service.SidebarService;

@Controller
public class SidebarController {

	@Autowired
	private SidebarService sidebarService;
	@Autowired
	private CommonService commonService;

	@RequestMapping(value = "/sidebar/articlelist.animal", method = RequestMethod.GET)
	public String articlelist(@RequestParam Map<String, String> map, HttpServletRequest request) {

		if (map.get("acode") != null) {
			request.setAttribute("sidebar", "sidebar");
		} else {
			request.setAttribute("sidebar", "side");
		}
		request.setAttribute("sidebar", map.get("acode"));
		System.out.println("edcs");
		return "mypage/myarticlelist";
	}

	@RequestMapping(value = "/sidebar/articlelist.animal", method = RequestMethod.POST)
	@ResponseBody
	public String articlelist(@RequestParam Map<String, String> map) {
		List<BoardDto> list;
		String ee = map.get("sidebar");
		System.out.println(ee);
		map.put("email", "taehong88@gmail.com");
		list = sidebarService.articleList(map);

		System.out.println(list.size());
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();
		for (BoardDto dto : list) {
			JSONObject article = new JSONObject();
			article.put("subject", dto.getSubject());
			article.put("seq", dto.getSeq());
			article.put("content", dto.getContent());
			article.put("boardtype", dto.getBoardtype());
			article.put("hit", dto.getHit());
			article.put("joindate", dto.getJoindate());
			article.put("email", dto.getEmail());
			jarray.put(article);
		}
		json.put("members", jarray);
		return json.toString();

	}

	@RequestMapping(value = "/sidebar/attention.animal", method = RequestMethod.GET)
	public String attention(@RequestParam Map<String, String> map, HttpServletRequest request, HttpSession session) {
		request.setAttribute("sidebar", map.get("acode"));		
		map.put("pg", "1");

		PageNavigation navigator = commonService.makePageNavigation(map);
		navigator.setRoot(request.getContextPath());
		navigator.setKey(map.get("key"));
		navigator.setWord(map.get("word"));
		navigator.setNavigator();
		request.setAttribute("navigator", navigator);
		return "mypage/myattentionpet";
	}

	@RequestMapping(value = "/sidebar/attention.animal", method = RequestMethod.POST)
	@ResponseBody
	public String attention(@RequestParam Map<String, String> map, HttpServletRequest request) {
		List<ParcelDto> list;
		String ee = map.get("sidebar");
		map.put("email", "kjhabc2002@naver.com");
		if (ee.equals("sidebar")) {
			list = sidebarService.myattention(map);
		} else {
			list = sidebarService.attention(map);
		}
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();
		for (ParcelDto dto : list) {
			JSONObject article = new JSONObject();
			article.put("subject", dto.getSubject());
			article.put("kind", dto.getKind());
			article.put("age", dto.getAge());
			article.put("weight", dto.getWeight());
			article.put("location", dto.getLocation());

			jarray.put(article);
		}
		json.put("members", jarray);
		PageNavigation navigator = commonService.makePageNavigation(map);
		navigator.setRoot(request.getContextPath());
		navigator.setKey(map.get("key"));
		navigator.setWord(map.get("word"));
		navigator.setNavigator();
		request.setAttribute("navigator", navigator);
		return json.toString();
	}

	@RequestMapping(value = "/sidebar/donation.animal", method = RequestMethod.GET)
	public String donation(@RequestParam Map<String, String> map, HttpServletRequest request) {
		if (map.get("acode") != null) {
			request.setAttribute("sidebar", "sidebar");
		} else {
			request.setAttribute("sidebar", "side");
		}
		request.setAttribute("sidebar", map.get("acode"));
		return "mypage/mydonationlist";
	}

	@RequestMapping(value = "/sidebar/donation.animal", method = RequestMethod.POST)
	@ResponseBody
	public String donation(@RequestParam Map<String, String> map) {
		System.out.println("완료");
		List<DonationDto> list;
		map.put("email", "taehong88@gmail.com");
		String ee = map.get("sidebar");
		if (ee.equals("sidebar")) {
			System.out.println(ee);
			list = sidebarService.mydonation(map);
		} else {
			System.out.println(ee);
			list = sidebarService.donation();
		}
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();
		for (DonationDto dto : list) {
			System.out.println(dto.getCentername());
			JSONObject article = new JSONObject();
			article.put("centername", dto.getCentername());
			article.put("gatheringfee", dto.getGatheringfee());
			article.put("cdonationfee", dto.getCdonationfee());
			article.put("cdonationpurpose", dto.getCdonationpurpose());

			jarray.put(article);
		}
		json.put("members", jarray);
		return json.toString();
	}

	@RequestMapping(value = "/sidebar/volunteer.animal", method = RequestMethod.GET)

	public String volunteer(@RequestParam Map<String, String> map, HttpServletRequest request) {
		if (map.get("acode") != null) {
			request.setAttribute("sidebar", "sidebar");
		} else {
			request.setAttribute("sidebar", "side");
		}
		request.setAttribute("sidebar", map.get("acode"));
		return "mypage/myvolunteerlist";
	}

	@RequestMapping(value = "/sidebar/volunteer.animal", method = RequestMethod.POST)
	@ResponseBody
	public String volunteer(@RequestParam Map<String, String> map) {
		List<VolunteerDto> list;
		map.put("email", "taehong88@gmail.com");
		String ee = map.get("sidebar");
		if (ee.equals("sidebar")) {
			list = sidebarService.myvolunteer(map);
		} else {
			list = sidebarService.volunteer();
		}
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();
		for (VolunteerDto dto : list) {
			System.out.println(dto.getCentername());
			JSONObject article = new JSONObject();
			article.put("centername", dto.getCentername());
			article.put("volunteerkind", dto.getVolunteerkind());
			article.put("volunteerdate", dto.getVolunteerdate());
			article.put("centerlocation", dto.getCenterlocation());
			article.put("tel", dto.getTel());

			jarray.put(article);
		}
		json.put("members", jarray);
		return json.toString();
	}

	@RequestMapping(value = "/sidebar/parcel.animal", method = RequestMethod.GET)

	public String parcel(@RequestParam Map<String, String> map, HttpServletRequest request) {

		if (map.get("acode") != null) {
			request.setAttribute("sidebar", "sidebar");
		} else {
			request.setAttribute("sidebar", "side");
		}
		request.setAttribute("sidebar", map.get("acode"));

		return "mypage/myparcellist";
	}

	@RequestMapping(value = "/sidebar/parcel.animal", method = RequestMethod.POST)
	@ResponseBody
	public String parcel(@RequestParam Map<String, String> map, Model model) {
		List<ParcelDto> list;
		map.put("email", "taehong88@gmail.com");
		String ee = map.get("sidebar");
		if (ee.equals("sidebar")) {
			list = sidebarService.myparcel(map);
		} else {
			list = sidebarService.parcel();
		}
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();
		for (ParcelDto dto : list) {
			JSONObject article = new JSONObject();
			article.put("subject", dto.getSubject());
			article.put("kind", dto.getKind());
			article.put("age", dto.getAge());
			article.put("weight", dto.getWeight());
			article.put("location", dto.getLocation());

			jarray.put(article);
		}
		json.put("members", jarray);
		return json.toString();
	}
}
