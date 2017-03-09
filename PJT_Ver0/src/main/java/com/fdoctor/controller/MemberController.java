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
import com.fdoctor.vo.MessageVO;

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
      
      ModelAndView mav = new ModelAndView();

      if(user_id.equals("admin")&&user_pwd.equals("admin")){
        List<MemberVO> list = this.memberService.selectAll();
         mav.addObject("list", list);
         
         List<MessageVO> msg_list = this.memberService.selectAll_msg();
         mav.addObject("msg_list", msg_list);
         
         mav.setViewName("admin");
         return mav;
      }else if(re != null){
         out.println("<script>");
         out.println("alert('환영합니다!')");
         out.println("history.back()");
         out.println("</script>");
         return null;
      }else{
            out.println("<script>");
            out.println("alert('로그인에 실패하였습니다.')");
            out.println("history.back()");
            out.println("</script>");
            return null;
         }
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
   
   
   /*@RequestMapping("msg_cont.do")
   public ModelAndView msg_cont(
       @RequestParam("message_no") int message_no){
      
      MessageVO msgvo = this.memberService.selectOne_msg(message_no);
      System.out.print("msgvo");
       ModelAndView mav = new ModelAndView();
       mav.addObject("msgvo", msgvo);
       mav.setViewName("admin");
      return mav;
   }*/
   
   @RequestMapping("selectAll_m.do")
   public ModelAndView select(){
      List<MemberVO> list = this.memberService.selectAll();
      ModelAndView mav = new ModelAndView();
      mav.addObject("list", list);
      mav.setViewName("admin");
      return mav;
   }
   
   @RequestMapping("update_m.do")
   public String update(
         @RequestParam("Sender") String user_id,
         HttpServletResponse response) throws IOException{
      int n=0;
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      out.println("<script>");
      out.println("n =prompt(적립 포인트 입력 :)");
      out.println("<script>");
      MemberVO vo = new MemberVO();
      vo.setUser_id(user_id);
      vo.setUser_point(n);
      this.memberService.update(vo);
      
      return "redirect:admin";
      
   }
   
  
   
   
}