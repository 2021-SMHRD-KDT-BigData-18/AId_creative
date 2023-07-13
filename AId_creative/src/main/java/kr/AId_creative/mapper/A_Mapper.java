package kr.AId_creative.mapper;

import org.springframework.stereotype.Service;

import kr.AId_creative.entity.User_Info;

@Service // 필요한 의존성 주입
public interface A_Mapper {

	// 회원가입
	public void registerUser(User_Info user);

}
