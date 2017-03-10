package com.fdoctor.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.fdoctor.service.MemberService;
import com.fdoctor.vo.MemberVO;
import com.fdoctor.vo.MessageVO;

@Controller
@SessionAttributes("id")
public class MemberController {
   @Autowired
   private MemberService memberService;

   @RequestMapping(value="/login.do", method=RequestMethod.GET)
	public ModelAndView adminLogin(String user_id, String user_pwd,
			HttpSession session, HttpServletResponse response) throws IOException {
	   
	   System.out.println(user_id + "  " + user_pwd);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		MemberVO vo = new MemberVO();
		vo.setUser_id(user_id);
		vo.setUser_pwd(user_pwd);
		MemberVO re = memberService.admin_ok(vo);

		ModelAndView mav = new ModelAndView();
		if (user_id.equals("admin") && user_pwd.equals("admin")) {
			session.setAttribute("id", user_id);
			List<MemberVO> list = this.memberService.selectAll();
			mav.addObject("list", list);

			List<MessageVO> msg_list = this.memberService.selectAll_msg();
			mav.addObject("msg_list", msg_list);
			mav.addObject("id", user_id);
			mav.setViewName("admin");
			return mav;
		} else if (re != null) {
			if (user_id.equals(re.getUser_id()) && user_pwd.equals(re.getUser_pwd())) {
				session.setAttribute("name", re.getUser_name());
				session.setAttribute("id", re.getUser_id());
				out.println("<script>");
				out.println("alert('환영합니다!')");
				out.println("history.back()");
				out.println("</script>");
				mav.addObject("id", user_id);
				mav.setViewName("../../index");
				return mav;
			}
		} else {
			out.println("<script>");
			out.println("alert('로그인에 실패하였습니다.')");
			out.println("history.back()");
			out.println("</script>");
			return null;
		}
		return null;
	}
   @RequestMapping("logout.do")
   public String logout(){
	   return "logout";
   }
   
   @RequestMapping("msg_cont.do")
   public ModelAndView msgcont(
         @RequestParam("message_no") int message_no) throws IOException{
    	 
         ModelAndView mav = new ModelAndView();
         
         MessageVO msgvo = this.memberService.selectOne_msg(message_no);
         
         mav.addObject("msgvo", msgvo);
         mav.setViewName("message_cont");
         
         return mav;
   }
   
   @RequestMapping(value="returnList.do", method=RequestMethod.GET)
   public ModelAndView returnadmin(@RequestParam("msg_no") int message_no){
      
		ModelAndView mav = new ModelAndView();
		
		this.memberService.update_msg(message_no);
		List<MessageVO> msg_list = this.memberService.selectAll_msg();
		
		MemberVO vo = new MemberVO();
		
		this.memberService.update(vo);
		List<MemberVO> list = this.memberService.selectAll();
        
		mav.addObject("list", list);
		mav.addObject("msg_list", msg_list);
		mav.setViewName("admin");
		
		return mav;
      
     }
   
   
   @RequestMapping("selectAll_m.do")
   public ModelAndView select(){
      List<MemberVO> list = this.memberService.selectAll();
      ModelAndView mav = new ModelAndView();
      mav.addObject("list", list);
      mav.setViewName("admin");
      return mav;
   }
   
   @RequestMapping("pointForm.do")
   public String update(
		   @RequestParam("ckbox") int message_no){
	   return "pointForm";
   }
   
   @RequestMapping("point.do")
   public void pointadd(@RequestParam("pointAdd") int user_point){
	   
   }
   
   @RequestMapping("read_ck.do")
   public String readck(){
	   	
	   return "";
   }
   
  
   
   
}