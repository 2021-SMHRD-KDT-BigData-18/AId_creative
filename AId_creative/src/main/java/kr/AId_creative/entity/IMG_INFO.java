package kr.AId_creative.entity;

import java.util.Date;

import kr.smhrd.model.Board;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor // 기본 생성자 생성
@AllArgsConstructor // 모든 필드에 데이터를 집어넣은 생성자
@Data 
public class IMG_INFO {

	// 이미지 번호
	private Int IMG_CODE;
	// 이미지 이름
	private String IMG_NAME;
	// 모델 번호
	private String MODEL_CODE;
	// 모델 이름
	private String MODEL_NAME;
	// 회원 아이디
	private String USER_ID;
	// 회원 닉네임
	private String USER_NICK;
	// 이미지 표시
	private String IMG_PROMPT;
	// 이미지 원본
	private String IMG_ORIGIN;

}
