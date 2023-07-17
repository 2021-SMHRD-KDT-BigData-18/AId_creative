package kr.AId_creative.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import kr.AId_creative.entity.T_User;

public interface A_Mapper {

	// 회원가입
	
//	public void signup(User_Info user);
	
	// 중복
	//public int MemberCnt(String id, String pw);
	
	// 회원가입
	//public ArrayList<A_Mapper> list();
	
	// 회원가입
	public void register(T_User user);

	
	
	

}
