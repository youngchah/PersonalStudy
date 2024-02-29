package kr.or.ddit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pc")
public class PCCounterController {
	
	@RequestMapping(value="/main.do")
	public String main() {
		return "pc/main";
	}
	
}
