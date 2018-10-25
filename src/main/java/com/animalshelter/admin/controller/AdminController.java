package com.animalshelter.admin.controller;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.*;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.w3c.dom.*;
import org.xml.sax.SAXException;

import com.animalshelter.admin.service.AdminService;
import com.animalshelter.member.model.MemberDto;
import com.animalshelter.member.service.MemberService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.nipa0711.java.util.SMTPMailSender;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "admin/sendEmail.animal", method = RequestMethod.GET)
	public String emailPage() {
		return "admin/sendEmail";
	}

	@RequestMapping(value = "admin/sendEmail.animal", method = RequestMethod.POST)
	public String sendEmail(@RequestParam("receiver") String receiver, @RequestParam("title") String title,
			@RequestParam("content") String content) {

		List<String> emailList = new ArrayList<String>();
		if (receiver.equals("5000")) {
			emailList = adminService.getAllEmail();
		} else {
			emailList = adminService.getRelatedEmail(receiver);
		}

		for (String email : emailList) {
			System.out.println(email);

			MemberDto memberDto = null;
			memberDto = memberService.getMemberInfo(email);

			String from = "animalshelter@nipa0711.net";
			String fromName = "AnimalShelter";

			HashMap<String, String> map = new HashMap<String, String>();
			map.put("email", memberDto.getEmail());
			map.put("name", memberDto.getName());

			SMTPMailSender smtp = new SMTPMailSender(title, content, from, fromName, map);
			smtp.start();
		}
		System.out.println("전송완료!!");
		return "admin/sendOk";
	}

	@Autowired
	private ServletContext servletContext;

	@RequestMapping(value = "photoUpload.animal", method = RequestMethod.POST)
	public void photoUpload(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain; charset=UTF-8");
		String uploadPath = servletContext.getRealPath("/upload/img");
		int size = 10 * 1024 * 1024; // 업로드 사이즈 제한 10M 이하
		File dir = new File(uploadPath);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		String fileName = ""; // 파일명

		try {
			// 파일업로드 및 업로드 후 파일명 가져옴
			MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
					new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			String file = (String) files.nextElement();
			fileName = multi.getFilesystemName(file);

			PrintWriter out = response.getWriter();
			// 업로드된 경로와 파일명을 통해 이미지의 경로를 생성
			String imgPath = "/img/" + fileName;
			// 생성된 경로를 JSON 형식으로 보내주기 위한 설정
			JSONObject jobj = new JSONObject();
			jobj.put("url", imgPath);

			response.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한 세팅
			out.print(jobj.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	int getAbandonedCount(String searchStartDate, String searchEndDate) {
		String service_url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?";
		String api_key = "ServiceKey=lqoruspPyIUYqSauL%2FTDTAqIHgzz9%2F5G5AnOtKdkADTUioapCVMAPV3fmS2Bgh35FIZv54m4nurcOHbTJGJgDA%3D%3D";
		String url = service_url + api_key + searchStartDate + searchEndDate;
		int listCnt = 0;
		try {
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder;
			dBuilder = dbFactoty.newDocumentBuilder();
			Document doc = dBuilder.parse(url); // root tag
			doc.getDocumentElement().normalize();

			// 파싱할 tag
			listCnt = Integer.parseInt(doc.getElementsByTagName("totalCount").item(0).getFirstChild().getTextContent());
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return listCnt;
	}

	@RequestMapping(value = "admin/statistics.animal", method = RequestMethod.GET)
	public String mvAbandonedChart() {
		return "admin/statistics";
	}

	@ResponseBody
	@RequestMapping(value = "countAbandoned.animal", method = RequestMethod.POST)
	public String getCountOfAbandoned() {
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();

		String bgnde = "&bgnde=";
		String endde = "&endde=";

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();

		int year = cal.get(Calendar.YEAR);
		int thisMonth = cal.get(Calendar.MONTH);
		int startDay = 1;

		String searchStartDate = "";
		String searchEndDate = "";
		JSONObject monthData = new JSONObject();

		for (int i = thisMonth - 1; i >= 0; i--) {
			monthData = new JSONObject();
			cal.set(year, thisMonth - 1 - i, startDay);
			searchStartDate = bgnde + sdf.format(cal.getTime());
			searchEndDate = endde + searchStartDate.substring(7, 15) + cal.getActualMaximum(Calendar.DAY_OF_MONTH);

			String tempMonth = thisMonth - i + "월";
			int value = getAbandonedCount(searchStartDate, searchEndDate);
			monthData.put("month", tempMonth);
			monthData.put("value", value);
			jarray.put(monthData);
		}
		monthData = new JSONObject();
		cal = Calendar.getInstance(); // 초기화
		String today = endde + sdf.format(cal.getTime()); // today

		cal.set(year, thisMonth, startDay);
		String firstDayOfMonth = bgnde + sdf.format(cal.getTime());
		String tempMonth = thisMonth + 1 + "월";

		int value = getAbandonedCount(firstDayOfMonth, today);
		monthData.put("month", tempMonth);
		monthData.put("value", value);

		jarray.put(monthData);
		json.put("monthData", jarray);
		return json.toString();
	}

	@ResponseBody
	@RequestMapping(value = "countAbandonedType.animal", method = RequestMethod.POST)
	public String getCountOfAbandonedType() {
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();

		String bgnde = "&bgnde=";
		String endde = "&endde=";

		String typeCode[] = { "417000", "422400", "429900" };
		String type[] = { "개", "고양이", "기타" };

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();

		int year = cal.get(Calendar.YEAR);

		String searchStartDate = bgnde + year + "-01-01";
		String searchEndDate = endde + sdf.format(cal.getTime()); // today

		String service_url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?";
		String api_key = "ServiceKey=MOs%2BsExsezFOnRAr3WvDbeDXv4h%2FGdmDNVxTe%2FvoRgpiRE9gzCGzFwcuFUDaycs6HUwaZefSMY1jrXMzs0%2FJ%2FQ%3D%3D";
		// "ServiceKey=lqoruspPyIUYqSauL%2FTDTAqIHgzz9%2F5G5AnOtKdkADTUioapCVMAPV3fmS2Bgh35FIZv54m4nurcOHbTJGJgDA%3D%3D";

		int listCnt = 0;
		try {
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder;
			dBuilder = dbFactoty.newDocumentBuilder();
			for (int i = 0; i < 3; i++) {
				JSONObject typeData = new JSONObject();
				String url = service_url + api_key + searchStartDate + searchEndDate + "&upkind=" + typeCode[i];
				Document doc = dBuilder.parse(url); // root tag
				doc.getDocumentElement().normalize();

				// 파싱할 tag
				listCnt = Integer
						.parseInt(doc.getElementsByTagName("totalCount").item(0).getFirstChild().getTextContent());

				String typeName = type[i];
				int typeValue = listCnt;
				typeData.put("type", typeName);
				typeData.put("value", typeValue);
				jarray.put(typeData);
			}
			json.put("typeData", jarray);
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return json.toString();
	}

	@ResponseBody
	@RequestMapping(value = "countCityAbandoned.animal", method = RequestMethod.POST)
	public String getCountCityAbandoned() {
		String api_key = "ServiceKey=MOs%2BsExsezFOnRAr3WvDbeDXv4h%2FGdmDNVxTe%2FvoRgpiRE9gzCGzFwcuFUDaycs6HUwaZefSMY1jrXMzs0%2FJ%2FQ%3D%3D";
		String service_url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?";
		// "ServiceKey=lqoruspPyIUYqSauL%2FTDTAqIHgzz9%2F5G5AnOtKdkADTUioapCVMAPV3fmS2Bgh35FIZv54m4nurcOHbTJGJgDA%3D%3D";

		String url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sido?" + api_key
				+ "&numOfRows=30";
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();

		try {
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder;
			dBuilder = dbFactoty.newDocumentBuilder();
			Document doc = dBuilder.parse(url);
			// root tag
			doc.getDocumentElement().normalize();

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");

			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					JSONObject cityAbandoned = new JSONObject();

					Element eElement = (Element) nNode;
					String cityCode = getTagValue("orgCd", eElement);
					String cityName = getTagValue("orgdownNm", eElement);
					cityAbandoned.put("orgCd", cityCode);
					cityAbandoned.put("orgdownNm", cityName);

					url = service_url + api_key + "&upr_cd=" + cityCode;
					doc = dBuilder.parse(url);
					// root tag
					doc.getDocumentElement().normalize();
					int listCnt = Integer
							.parseInt(doc.getElementsByTagName("totalCount").item(0).getFirstChild().getTextContent());
					cityAbandoned.put("cityValue", listCnt);

					jarray.put(cityAbandoned);
				}
			}
			json.put("cityAbandoned", jarray);

		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json.toString();
	}

	// tag값의 정보를 가져오는 메소드
	private static String getTagValue(String tag, Element eElement) {
		Node nValue = null;
		if (eElement.getElementsByTagName(tag).item(0) == null) {
			return "";
		} else {
			NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
			nValue = (Node) nlList.item(0);
			if (nValue == null)
				return "";
		}
		return nValue.getNodeValue();
	}
}
