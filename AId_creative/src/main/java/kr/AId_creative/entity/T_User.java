package kr.AId_creative.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class T_User {

	// 회원 아이디
	private String user_id;
	// 회원 비밀번호
	private String user_pw;
	// 회원 닉네임
	private String user_nick;
	// 회원 이메일
	private String user_email;

}
