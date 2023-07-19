package kr.AId_creative.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import kr.AId_creative.entity.T_User;

public interface A_Mapper {

	// 회원가입
	public void register(T_User user);

	public T_User login(T_User user);

	public void save(T_User user);

	public void userReg_service(T_User userVO);

	public int check(String id, String nick);

}
