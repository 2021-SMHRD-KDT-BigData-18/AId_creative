package kr.AId_creative.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {

	@PostMapping("/upload")
	public String uploadFile(@RequestParam("file")MultipartFile file) {
		if (!file.isEmpty()) {
			try {
				String fileName =file.getOriginalFilename();
				byte[] bytes=file.getBytes();
				
				//파일저장로직
				//파일 로컬디스크,db저장할때
				
				return "upload_success"	
						//업로드성공페이지로
			}catch (IOException e) {
				e.printStackTrace();
				//업로드 실패로직
			}
		}
		return "upload_failure" 
				//업로드실패페이지로
	}
}
