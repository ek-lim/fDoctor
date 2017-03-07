package com.fdoctor.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fdoctor.service.MemberService;
import com.fdoctor.vo.MemberVO;

@Controller
public class MemberController {
   @Autowired
   private MemberService memberService;

   @RequestMapping(value="login.do", method=RequestMethod.GET)
   public ModelAndView adminLogin(
         @RequestParam("userid") String user_id, 
         @RequestParam("password") String user_pwd, 
         HttpServletResponse response) throws IOException{
      
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      MemberVO vo = new MemberVO();
      vo.setUser_id(user_id);
      vo.setUser_pwd(user_pwd);
      
      MemberVO re = memberService.admin_ok(vo); 
      
      if(re != null){
         List<MemberVO> list = this.memberService.selectAll();
         ModelAndView mav = new ModelAndView();
         mav.addObject("list", list);
         mav.setViewName("admin");
         return mav;
      }else{
         out.println("<script>");
         out.println("alert('로그인 실패하였습니다.')");
         out.println("history.back()");
         out.println("</script>");
         return null;
      }
      
      
      
   }
   
   @RequestMapping("selectAll_m.do")
   public ModelAndView select(){
      List<MemberVO> list = this.memberService.selectAll();
      ModelAndView mav = new ModelAndView();
      mav.addObject("list", list);
      mav.setViewName("admin");
      return mav;
   }
}