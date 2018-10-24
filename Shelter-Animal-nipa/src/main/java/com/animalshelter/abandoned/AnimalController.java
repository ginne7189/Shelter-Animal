package com.animalshelter.abandoned;

import java.io.PrintWriter;
import java.util.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.w3c.dom.*;

import com.animalshelter.dto.AnimalDto;

@Controller
public class AnimalController {
	
	String service_url = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?";
	String api_key = "ServiceKey=lqoruspPyIUYqSauL%2FTDTAqIHgzz9%2F5G5AnOtKdkADTUioapCVMAPV3fmS2Bgh35FIZv54m4nurcOHbTJGJgDA%3D%3D";
	String pageNo = "&pageNo=";
	String numOfRows = "&numOfRows=6";
	
	@RequestMapping(value = "abandoned.animal", method = RequestMethod.GET)
	public String showAbandonedAnimal() {
		return "abandoned/show";
	}
	
	@RequestMapping(value = "abandoned.animal", method = RequestMethod.POST)
	public void showAbandonedAnimal(@RequestParam HashMap<String, String> map, HttpSession session, HttpServletResponse response) {
		response.setContentType("text/plain; charset=UTF-8");
		int cnt = Integer.parseInt(map.get("pageNo"));
		String searchStartDate = "&bgnde=";
		String searchEndDate = "&endde=";
		
		if (map.get("searchStartDate") != null) {
			searchStartDate += map.get("searchStartDate");
		}

		if (map.get("searchEndDate") != null) {
			searchEndDate += map.get("searchEndDate");
		}
		
		List<AnimalDto> list = new ArrayList<AnimalDto>();
		try {
			////// get basic info start //////
			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			String url = service_url + api_key + searchStartDate + searchEndDate + numOfRows;
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
			url = service_url + api_key + searchStartDate + searchEndDate + pageNo + cnt + numOfRows;
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
					out.print("<div class=\"card h-100\">");
					out.println(" <a href=\"/animalshelter/abandonedDetail.animal?index=" + temp +"\" onclick=\"window.open(this.href, '상세보기', 'width=1000px,height=1500px,toolbars=no,scrollbars=no'); return false;\" ><img class=\"card-img-top\" src=\"" + animalDto.getPopfile()
							+ "\"></a>");
					out.println("    <div class=\"card-body\">");
					out.println("      <h4 class=\"card-title\">");
					out.println("         <a href=\"/animalshelter/abandonedDetail.animal?index=" + temp + "\" onclick=\"window.open(this.href, '상세보기', 'width=1000px,height=1500px,toolbars=no,scrollbars=no'); return false;\">"
							+ animalDto.getNoticeNo() + " </a>");					
					out.println("        </h4>");
					out.println("        <p class=\"card-text\">    <b>접수일 :</b> " + animalDto.getHappenDt()
							+ "  </p>");
					out.println(
							"       <p class=\"card-text\">    <b>품종 :</b> " + animalDto.getKindCd() + "   </p>");
					out.println("       <p class=\"card-text\">    <b>나이 :</b> " + animalDto.getAge() + "    </p>");
					out.println("        <p class=\"card-text\">    <b>특징 :</b> " + animalDto.getSpecialMark()
							+ "   </p>");
					out.println(
							"        <p class=\"card-text\">    <b>상태 :</b> " + animalDto.getProcessState() + "   </p>");
					out.println(
							"        <p class=\"card-text\">    <b>위치 :</b> " + animalDto.getCareAddr() + "  </p>");
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
			out.println("    <a class=\"page-link\" href=\"javascript:recentAnimal(1)\" aria-label=\"Previous\">");
			out.println("        <span aria-hidden=\"true\">&laquo;</span>");
			out.println("       <span class=\"sr-only\">Previous</span>");
			out.println("      </a>");
			out.println("    </li>");
			if (cnt < 5) {
				for (int i = 1; i <= 10; i++) {
					int pg = i;
					out.println("   <li class=\"page-item\">");
					out.print("      <a class=\"page-link\" href=\"javascript:recentAnimal(" + pg + ")\"");
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
						out.print("<a class=\"page-link\" href=\"javascript:recentAnimal(" + pg + ")\">" + pg
								+ "</a>");
						out.println("    </li>     ");
					}
				}
				out.println("   <li class=\"page-item\">");
				out.print("<a class=\"page-link\" style=\"font-weight: bold;\" href=\"javascript:recentAnimal("
						+ cnt + ")\">" + cnt + "</a>");
				out.println("    </li>     ");
				for (int i = 1; i <= 5; i++) {
					int pg = i + cnt;
					if (pg <= end) {
						out.println("   <li class=\"page-item\">");
						out.print("<a class=\"page-link\" href=\"javascript:recentAnimal(" + pg + ")\">" + pg
								+ "</a>");
						out.println("    </li>     ");
					}
				}
			}

			out.println("     <li class=\"page-item\">");
			out.println("      <a class=\"page-link\" href=\"javascript:recentAnimal(" + end
					+ ")\" aria-label=\"Next\">");
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