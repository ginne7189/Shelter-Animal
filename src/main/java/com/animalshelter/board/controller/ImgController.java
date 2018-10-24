package com.animalshelter.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.animalshelter.board.model.ImgDto;
import com.animalshelter.board.service.ImgService;

@Controller
public class ImgController {
	
	@Autowired
	private ImgService imgService;
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping("/img.animal")
	public String upload(ImgDto imgDto, @RequestParam("pic")MultipartFile multipartFile) {
//		if(multipartFile != null && !multipartFile.isEmpty()) {
//			String ofile = multipartFile.getOriginalFilename();
//			String realPath = servletContext.getRealPath("C:\\Users\\yoo\\Pictures\\Saved Pictures");
//			
//			DateFormat df = new SimpleDateFormat("yyMMdd");
//			String saveFolder = df.format(new Date());
//			String realSaveFolder = realPath + File.separator+saveFolder;
//			System.out.println(realSaveFolder);
//			File dir = new File(realSaveFolder);
//			if(!dir.exists()) {
//				dir.mkdirs();
//			}
//			String sfile = UUID.randomUUID().toString()+ofile.substring(ofile.lastIndexOf("."));
//			
//			File file = new File(realSaveFolder, sfile);
//			try {
//				multipartFile.transferTo(file);
//			}catch(IllegalStateException e) {
//				e.printStackTrace();
//			}catch (IOException e) {
//				e.printStackTrace();
//			}
//			
//			imgDto.setOrigin_pic(ofile);
//			imgDto.setSave_pic(sfile);
//			imgDto.setSavefolder(saveFolder);
//		}
		return "view";
	}

}
