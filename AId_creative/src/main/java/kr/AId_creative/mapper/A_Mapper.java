package kr.AId_creative.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import kr.AId_creative.entity.T_Image;
import kr.AId_creative.entity.T_User;

public interface A_Mapper {

	// 회원가입
	public int register(T_User user);

	// 로그인
	public T_User login(T_User user);

	public void save(T_User user);

	public void userReg_service(T_User userVO);
	
	// ID 중복확인
	public T_User check(String id);

	// 이미지 조회하기
	@Select("SELECT * FROM T_IMAGE WHERE USER_ID = #{n1}")
	public ArrayList<T_Image> my_page(String n1);



	
	
	
	

}
