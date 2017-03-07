package com.fdoctor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fdoctor.service.MessageService;
import com.fdoctor.vo.MessageVO;

@Controller
public class MessageController {
	@Autowired
	private MessageService messageService;
	
	@RequestMapping("/sendmessage.do")
	public String sendmessage() {
		return "contact"; 
	}
	
	@RequestMapping("/sendmessage_ok.do")
	public String sendmessage_ok(@RequestParam String sender,
			@RequestParam String message_title,
			@RequestParam String message_cont){
		MessageVO vo = new MessageVO();
		vo.setSender(sender);
		vo.setMessage_title(message_title);
		vo.setMessage_cont(message_cont);
		// table에 레코드 삽입
		this.messageService.sendmessage(vo);
		return "redirect:sendmessage.do"; 
	}
}
