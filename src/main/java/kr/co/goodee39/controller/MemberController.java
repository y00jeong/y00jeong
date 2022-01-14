package kr.co.goodee39.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.service.MemberService;
import kr.co.goodee39.vo.MemberVO;



@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;

	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@GetMapping("/find_account")
	public String findAccount() {
		return "find_account";
	}
	
	@PostMapping("/login_result")
	public String loginResult(MemberVO vo, HttpSession session) {
		return memberService.getMember(vo, session);
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
}
