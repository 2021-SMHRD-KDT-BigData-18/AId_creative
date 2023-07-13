package kr.AId_creative.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Model_Info {

	// 모델 번호
	private int model_code;
	// 모델 이름
	private String model_name;
	// 모델 정보
	private String model_info;
	// 모델 이미지
	private String model_img;
	// 모델 생성 날짜
	private Date model_date;
	// 모델 경로
	private String model_root;

}
