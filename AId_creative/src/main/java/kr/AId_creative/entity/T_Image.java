package kr.AId_creative.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class T_Image {

	// 이미지 번호
	private int img_code;
	// 이미지 이름
	private String img_name;
	// 회원 아이디
	private String user_id;
	// 모델 번호
	private String model_code;
	// 이미지 표시
	private String img_prompt;
	// 이미지 원본
	private String img_origin;

}
