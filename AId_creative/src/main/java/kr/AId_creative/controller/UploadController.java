package kr.AId_creative.controller;

import java.io.File;
import java.io.FileOutputStream;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {

   private String uploadDir = "/path/to/upload/dir"; // 파일이 저장될 경로
    @GetMapping("/upload")
    public String handleFileUpload() {
        // 업로드된 파일 처리 로직 작성
       
//        if (!file.isEmpty()) {
//            try {
//                // 파일 저장 로직 작성
//                // 예를 들어, 파일을 로컬 디스크에 저장하거나 DB에 저장할 수 있습니다.
//            
////               File targetFile = new File(uploadDir + File.separator + "data.jpg");
////                FileCopyUtils.copy(data.getBytes(), new FileOutputStream(targetFile));
//                
//            
//                
//                return "upload_success"; // 업로드 성공 페이지로 리다이렉트
//            } catch (Exception e) {
//                e.printStackTrace();
//                // 업로드 실패 처 리로직 작성
//            }
//        }

        return "upload_failure"; // 업로드 실패 페이지로 리다이렉트
    }

    // ...
}