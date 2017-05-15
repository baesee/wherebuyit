package com.lion.wherebuyit.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.lion.wherebuyit.domain.FileVO;
import com.lion.wherebuyit.service.MainService;

@Controller
public class FileController {

	@Resource(name = "mainService")
	private MainService mainService;
	
	@RequestMapping(value = "/fileUpload.do", method = RequestMethod.POST)
    public String fileSubmit(FileVO vo, HttpServletRequest request) throws Exception {
        
		MultipartFile uploadfile = vo.getUploadfile();
		String rootPath = request.getSession().getServletContext().getRealPath("/") ;
    	
		System.out.println("---------------------------------------------------------");
		System.out.println("vo.getContent()    :    "+vo.getContent());
		System.out.println("vo.getUploadfile()    :    "+vo.getUploadfile());
		System.out.println("rootPath    :    "+rootPath);
		System.out.println("---------------------------------------------------------");
      
        if (uploadfile != null) {
            String fileName = uploadfile.getOriginalFilename();
            vo.setFileName(fileName);
            vo.setStoredFileName(fileName);
            try {
                // 1. FileOutputStream 사용
                // byte[] fileData = file.getBytes();
                // FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
                // output.write(fileData);
                 
                // 2. File 사용
            	
                File file = new File(rootPath+"images/wherebuyit/image/" + fileName);
                
                uploadfile.transferTo(file);
                System.err.println("룰라랄라 : " + vo.getContent());
                
                mainService.insertBoard(vo);
                
            } catch (IOException e) {
                e.printStackTrace();
            } // try - catch
        }else {
        	
        	System.err.println("파일이 없습니다");
        	
        } // if - else
        // 데이터 베이스 처리를 현재 위치에서 처리
        return "redirect:main.do"; // 리스트 요청으로 보내야하는데 일단 제외하고 구현
    }

}
