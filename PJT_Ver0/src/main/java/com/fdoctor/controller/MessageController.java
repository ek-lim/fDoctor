package com.fdoctor.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String sendmessage_ok(HttpServletRequest request, HttpServletResponse response) throws IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String sender = request.getParameter("sender");
		String message_title = request.getParameter("message_title");
		String message_cont = request.getParameter("message_cont");

		MessageVO vo = new MessageVO();
		vo.setSender(sender);
		vo.setMessage_title(message_title);
		vo.setMessage_cont(message_cont);
		vo.setRecipient("admin");
		// table에 레코드 삽입
		int re = this.messageService.sendmessage(vo);
		System.out.println("결과는" + re);
		if (re == 1) {
			System.out.println("여기까진ㅇㅇ");
			out.println("<script>");
			out.println("alert('쪽지보내기 성공!')");
			out.println("location.href='sendmessage.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('쪽지보내기 실패!')");
			out.println("history.back()");
			out.println("</script>");
		}
		//return "contact";
		return null;
	}

}
