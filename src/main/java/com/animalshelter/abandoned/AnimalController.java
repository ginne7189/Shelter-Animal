package com.animalshelter.abandoned;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.*;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.w3c.dom.*;
import org.xml.sax.SAXException;

import com.animalshelter.dto.AnimalDto;

@Controller
public class AnimalController {
	//String api_key ="ServiceKey=MOs%2BsExsezFOnRAr3WvDbeDXv4h%2FGdmDNVxTe%2FvoRgpiRE9gzCGzFwcuFUDaycs6HUwaZefSMY1jrXMzs0%2FJ%2FQ%3D%3D";
	String service_url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?";
	String api_key = "ServiceKey=lqoruspPyIUYqSauL%2FTDTAqIHgzz9%2F5G5AnOtKdkADTUioapCVMAPV3fmS2Bgh35FIZv54m4nurcOHbTJGJgDA%3D%3D";
	String pageNo = "&pageNo=";
	String numOfRows = "&numOfRows=6";

	@RequestMapping(value = "abandonDetail.animal")
	public String showDetail() {
		return "abandoned/abDetail";
	}

	@RequestMapping(value = "abandoned.animal", method = RequestMethod.GET)
	public String showAbandonedAnimal() {
		return "abandoned/show";
	}

	@RequestMapping(value = "abandoned.animal", method = RequestMethod.POST)
	public void showAbandonedAnimal(@RequestParam HashMap<String, String> map, HttpSession session,
			HttpServletResponse response) {
		response.setContentType("text/plain; charset=UTF-8");
		int cnt = Integer.parseInt(map.get("pageNo"));
		String searchStartDate = "&bgnde=";
		String searchEndDate = "&endde=";
		String animalKind = "&upkind=";
		String kindDetail = "&kind=";
		String cityCode = "&upr_cd=";
		String districtCode = "&org_cd=";
		String shelterCode = "&care_reg_no=";
		/*String state = "&state=";
		String neuter_yn = "&neuter_yn=";*/

		if (map.get("searchStartDate") != null) {
			searchStartDate += map.get("searchStartDate");
		}

		if (map.get("searchEndDate") != null) {
			searchEndDate += map.get("searchEndDate");
		}

		if (map.get("animalKind") != null) {
			animalKind += map.get("animalKind");
		}

		if (map.get("kindDetail") != null) {
			kindDetail += map.get("kindDetail");
		}

		if (map.get("cityCode") != null) {
			cityCode += map.get("cityCode");
		}

		if (map.get("districtCode") != null) {
			districtCode += map.get("districtCode");
		}

		if (map.get("shelterCode") != null) {
			shelterCode += map.get("shelterCode");
		}

		List<AnimalDto> list = new ArrayList<AnimalDto>();
		try {
			////// get basic info start //////
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			String url = service_url + api_key + searchStartDate + searchEndDate + animalKind + kindDetail + cityCode
					+ districtCode + shelterCode + numOfRows;
			Document doc = dBuilder.parse(url);
			// root tag
			doc.getDocumentElement().normalize();

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");
			int listCnt = Integer
					.parseInt(doc.getElementsByTagName("totalCount").item(0).getFirstChild().getTextContent());
			int end = 0;
			if (listCnt % 6 == 0) {
				end = listCnt / 6;
			} else {
				end = listCnt / 6 + 1;
			}
			////// get basic info end //////
			url = service_url + api_key + searchStartDate + searchEndDate + animalKind + kindDetail + cityCode
					+ districtCode + shelterCode + pageNo + cnt + numOfRows;
			doc = dBuilder.parse(url);
			doc.getDocumentElement().normalize();
			nList = doc.getElementsByTagName("item");
			PrintWriter out = response.getWriter();
			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;
					AnimalDto animalDto = new AnimalDto();
					animalDto.setAge(getTagValue("age", eElement));
					animalDto.setCareAddr(getTagValue("careAddr", eElement));
					animalDto.setCareNm(getTagValue("careNm", eElement));
					animalDto.setCareTel(getTagValue("careTel", eElement));
					animalDto.setChargeNm(getTagValue("chargeNm", eElement));
					animalDto.setColorCd(getTagValue("colorCd", eElement));
					animalDto.setDesertionNo(getTagValue("desertionNo", eElement));
					animalDto.setFilename(getTagValue("filename", eElement));
					animalDto.setHappenDt(getTagValue("happenDt", eElement));
					animalDto.setHappenPlace(getTagValue("happenPlace", eElement));
					animalDto.setKindCd(getTagValue("kindCd", eElement));
					animalDto.setNeuterYn(getTagValue("neuterYn", eElement));
					animalDto.setNoticeComment(getTagValue("noticeComment", eElement));
					animalDto.setNoticeEdt(getTagValue("noticeEdt", eElement));
					animalDto.setNoticeNo(getTagValue("noticeNo", eElement));
					animalDto.setNoticeSdt(getTagValue("noticeSdt", eElement));
					animalDto.setOfficetel(getTagValue("officetel", eElement));
					animalDto.setOrgNm(getTagValue("orgNm", eElement));
					animalDto.setPopfile(getTagValue("popfile", eElement));
					animalDto.setProcessState(getTagValue("processState", eElement));
					animalDto.setSexCd(getTagValue("sexCd", eElement));
					animalDto.setSpecialMark(getTagValue("specialMark", eElement));
					animalDto.setWeight(getTagValue("weight", eElement));
					list.add(animalDto);
					out.print("<div class=\"col-lg-4 col-sm-6\" style=\"margin-top: 50px\">");
					out.print("<div class=\"card h-80\">");
					out.println(" <a href=\"/animalshelter/abandonedDetail.animal?index=" + temp
							+ "\" onclick=\"window.open(this.href, '상세보기', 'width=1000px,height=1500px,toolbars=no,scrollbars=no'); return false;\" ><img class=\"card-img-top\" src=\""
							+ animalDto.getPopfile() + "\"></a>");
					out.println("    <div class=\"card-body\">");
					out.println("      <h4 class=\"card-title\">");
					out.println("         <a href=\"/animalshelter/abandonedDetail.animal?index=" + temp
							+ "\" onclick=\"window.open(this.href, '상세보기', 'width=1000px,height=1500px,toolbars=no,scrollbars=no'); return false;\">"
							+ animalDto.getNoticeNo() + " </a>");
					out.println("        </h4>");
					out.println(
							"        <p class=\"card-text\">    <b>접수일 :</b> " + animalDto.getHappenDt() + "  </p>");
					out.println("       <p class=\"card-text\">    <b>품종 :</b> " + animalDto.getKindCd() + "   </p>");
					out.println("       <p class=\"card-text\">    <b>나이 :</b> " + animalDto.getAge() + "    </p>");
					out.println(
							"        <p class=\"card-text\">    <b>특징 :</b> " + animalDto.getSpecialMark() + "   </p>");
					out.println("        <p class=\"card-text\">    <b>상태 :</b> " + animalDto.getProcessState()
							+ "   </p>");
					out.println("        <p class=\"card-text\">    <b>위치 :</b> " + animalDto.getCareAddr() + "  </p>");
					out.println("      </div>");
					out.println("      </div>");
					out.println("      </div>");
				} // if end
			} // for end
				////// get real info end ///////
			session.setAttribute("animalInfo", list);

			// ㅍㅔ이징 처리
			out.print("<div class=\"col\"></div>");
			out.print("<div class=\"col\">");
			out.println("<ul class=\"pagination\">"); // justify-content-center
			out.println("<li class=\"page-item\">");
			out.println("    <a class=\"page-link\" href=\"javascript:continueView(1)\" aria-label=\"Previous\">");
			out.println("        <span aria-hidden=\"true\">&laquo;</span>");
			out.println("       <span class=\"sr-only\">Previous</span>");
			out.println("      </a>");
			out.println("    </li>");
			if (cnt < 5) {
				for (int i = 1; i <= 10; i++) {
					int pg = i;
					out.println("   <li class=\"page-item\">");
					out.print("      <a class=\"page-link\" href=\"javascript:continueView(" + pg + ")\"");
					if (i == cnt) {
						out.print("style=\"font-weight: bold;\">");
					} else {
						out.print("\">");
					}
					out.print(pg + "</a>");
					out.println("    </li>     ");
				}
			} else {
				for (int i = 4; i >= 1; i--) {
					int pg = cnt - i;
					if (pg <= end) {
						out.println("   <li class=\"page-item\">");
						out.print("<a class=\"page-link\" href=\"javascript:continueView(" + pg + ")\">" + pg + "</a>");
						out.println("    </li>     ");
					}
				}
				out.println("   <li class=\"page-item\">");
				out.print("<a class=\"page-link\" style=\"font-weight: bold;\" href=\"javascript:continueView(" + cnt
						+ ")\">" + cnt + "</a>");
				out.println("    </li>     ");
				for (int i = 1; i <= 5; i++) {
					int pg = i + cnt;
					if (pg <= end) {
						out.println("   <li class=\"page-item\">");
						out.print("<a class=\"page-link\" href=\"javascript:continueView(" + pg + ")\">" + pg + "</a>");
						out.println("    </li>     ");
					}
				}
			}

			out.println("     <li class=\"page-item\">");
			out.println(
					"      <a class=\"page-link\" href=\"javascript:continueView(" + end + ")\" aria-label=\"Next\">");
			out.println("       <span aria-hidden=\"true\">&raquo;</span>");
			out.println("        <span class=\"sr-only\">Next</span>");
			out.println("      </a>");
			out.println("   </li>");
			out.println("  </ul> ");
			out.print("</div>");
			out.print("<div class=\"col\"></div>");

		} catch (Exception e) {
			e.printStackTrace();
		} // try~catch end
	}

	@RequestMapping(value = "abandonedDetail.animal", method = RequestMethod.GET)
	public String abandonedDetail(@RequestParam("index") String index) {
		return "abandoned/abandonedDetail";
	}

	@RequestMapping(value = "getCity.animal", method = RequestMethod.POST)
	@ResponseBody
	public String getCity() {
		String url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sido?" + api_key +"&numOfRows=30";
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
					JSONObject city = new JSONObject();

					Element eElement = (Element) nNode;
					String cityCode = getTagValue("orgCd", eElement);
					String cityName = getTagValue("orgdownNm", eElement);
					city.put("orgCd", cityCode);
					city.put("orgdownNm", cityName);
					jarray.put(city);
				}
			}
			json.put("city", jarray);

		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json.toString();
	}

	@RequestMapping(value = "getDistrict.animal", method = RequestMethod.POST)
	@ResponseBody
	public String getDistrict(@RequestParam("upr_cd") String upr_cd) {
		String url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sigungu?upr_cd=" + upr_cd
				+ "&" + api_key +"&numOfRows=30";
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
					JSONObject district = new JSONObject();

					Element eElement = (Element) nNode;
					String districtCode = getTagValue("orgCd", eElement);
					String districtName = getTagValue("orgdownNm", eElement);
					district.put("orgCd", districtCode);
					district.put("orgdownNm", districtName);
					district.put("upr_cd", upr_cd);
					jarray.put(district);
				}
			}
			json.put("district", jarray);

		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json.toString();
	}

	@RequestMapping(value = "getShelter.animal", method = RequestMethod.POST)
	@ResponseBody
	public String getShelter(@RequestParam("upr_cd") String upr_cd, @RequestParam("org_cd") String org_cd) {
		String url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/shelter?upr_cd=" + upr_cd
				+ "&org_cd=" + org_cd + "&" + api_key +"&numOfRows=30";
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
					JSONObject shelterList = new JSONObject();

					Element eElement = (Element) nNode;
					String careNm = getTagValue("careNm", eElement);
					String careRegNo = getTagValue("careRegNo", eElement);
					shelterList.put("careNm", careNm);
					shelterList.put("careRegNo", careRegNo);
					jarray.put(shelterList);
				}
			}
			json.put("shelterList", jarray);

		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json.toString();
	}

	@RequestMapping(value = "kindDetail.animal", method = RequestMethod.POST)
	@ResponseBody
	public String getKindDetail(@RequestParam("up_kind_cd") String up_kind_cd) {
		String url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/kind?up_kind_cd="
				+ up_kind_cd + "&" + api_key;
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
					JSONObject kindDetail = new JSONObject();

					Element eElement = (Element) nNode;
					String nameOfKind = getTagValue("KNm", eElement);
					String kindCode = getTagValue("kindCd", eElement);
					kindDetail.put("nameOfKind", nameOfKind);
					kindDetail.put("kindCode", kindCode);
					jarray.put(kindDetail);
				}
			}
			json.put("kindDetail", jarray);

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
