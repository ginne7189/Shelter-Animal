package com.animalshelter.board.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.*;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.animalshelter.board.model.*;
import com.animalshelter.board.service.PboardService;
import com.animalshelter.member.model.MemberDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
@RequestMapping("/parcel")
public class PboardController {
	
	@Autowired
	private PboardService pboardService;
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping(value="/parcelDetail.animal")
	public String mvdetail() {
		return "parcel/parcelDetail";
	}
	
	@RequestMapping(value="/pwrite.animal", method=RequestMethod.GET)
	public String write(@RequestParam Map<String,String> map) {
		return "parcel/pwrite";
	}
	
	@RequestMapping(value="/pwrite.animal", method=RequestMethod.POST)
	public String write(PboardDto pboardDto, Model model, HttpSession session 
						,HttpServletRequest request) {
				
		MemberDto memberDto = (MemberDto)session.getAttribute("userInfo");
		if(memberDto != null) {
			pboardDto.setEmail(memberDto.getEmail());
			int seq = pboardService.writeArticle(pboardDto);
			if(seq != 0) {
				model.addAttribute("wseq", seq);
				request.setAttribute("pboardDto", pboardDto);
			}else {
				model.addAttribute("errorMsg", "서버에 문제가 있습니다. 잠시 후 다시 이용해주세요");
			}
		}else {
			model.addAttribute("errorMsg", "로그인 후 글 작성해주세요");
		}
		
		return "parcel/pview";		
	}

	@RequestMapping(value="/mwrite.animal", method=RequestMethod.GET)
	public String mwrite(@RequestParam Map<String,String> map) {
		return "parcel/mwrite";
	}
	
	@RequestMapping(value="/mwrite.animal", method=RequestMethod.POST)
	public String mwrite(MissingBoardDto mboardDto, Model model, HttpSession session 
						,HttpServletRequest request) {
		
		MemberDto memberDto2 = new MemberDto();
		memberDto2.setEmail("kjhabc2002@naver.com");
		session.setAttribute("userInfo", memberDto2);
		
		MemberDto memberDto = (MemberDto)session.getAttribute("userInfo");
		if(memberDto != null) {
			mboardDto.setEmail(memberDto2.getEmail());
			int seq = pboardService.mwriteArticle(mboardDto);
			
			if(seq != 0) {
				model.addAttribute("wseq", seq);
				request.setAttribute("pboardDto", mboardDto);
			}else {
				model.addAttribute("errorMsg", "서버에 문제가 있습니다. 잠시 후 다시 이용해주세요");
			}
		}else {
			model.addAttribute("errorMsg", "로그인 후 글 작성해주세요");
		}
		
		return "parcel/mview";		
	}
	@RequestMapping(value="/pview.animal", method=RequestMethod.GET)
	public String view(@RequestParam Map<String, String> map,HttpServletRequest request) {
		
		int seq=Integer.parseInt(map.get("acode"));

			PboardDto pboardDto = pboardService.viewArticle(seq);
			request.setAttribute("pboardDto", pboardDto);
		return "parcel/pview";
	}	

	@RequestMapping(value="/dview.animal", method=RequestMethod.GET)
	public String dview(@RequestParam Map<String, String> map,HttpServletRequest request) {
		int seq=Integer.parseInt(map.get("acode"));
			DonationBoardDto pboardDto = pboardService.dviewArticle(seq);
			request.setAttribute("pboardDto", pboardDto);
		return "parcel/dview";
	}	

	@RequestMapping(value="/mview.animal", method=RequestMethod.GET)
	public String mview(@RequestParam Map<String, String> map,HttpServletRequest request) {
		
		int seq=Integer.parseInt(map.get("acode"));
			MissingBoardDto pboardDto = pboardService.mviewArticle(seq);
			request.setAttribute("pboardDto", pboardDto);
		return "parcel/mview";
	}	

	@RequestMapping(value="/vview.animal", method=RequestMethod.GET)
	public String vview(@RequestParam Map<String, String> map,HttpServletRequest request) {
		
		int seq=Integer.parseInt(map.get("acode"));
			VolunteerBoardDto pboardDto = pboardService.vviewArticle(seq);
			request.setAttribute("pboardDto", pboardDto);
		return "parcel/vview";
	}	
	@RequestMapping(value = "photoUpload.animal", method = RequestMethod.POST)
	   public void test(HttpServletRequest request, HttpServletResponse response) {
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

}
