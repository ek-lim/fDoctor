package com.fdoctor.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fdoctor.service.HospitalService;
import com.fdoctor.vo.HospitalVO;

@Controller
public class HospitalController {
	
	@Autowired
	private HospitalService hospitalService;
	@RequestMapping("selectAll.do")
	public ModelAndView select(){
		List<HospitalVO> list = this.hospitalService.selectAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("hospital"); // views/memberList로 포워딩
		return mav;
	}
	@RequestMapping("selectOne.do")
	public String selectOne(){
		return "selectForm";
	}
	
	@RequestMapping("/selectOne_ok.do") // jsp 방식 구현
	public ModelAndView selectOne_ok(@RequestParam String name, 
			HttpServletResponse response) throws IOException {
		
		HospitalVO vo = this.hospitalService.selectOne(name);
		
		// javascript 때문에 한글 처리 한번 더!
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (vo != null) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("vo", vo);
			mav.setViewName("selectResult"); // selectResult.jsp
			return mav; // view page 포워딩
		} else {
			out.println("<script>");
			out.println("alert('해당하는 병원은 없습니다.')");
			out.println("history.back()");
			out.println("</script>");
			return null;
		}
	}
	
	@RequestMapping(value="selectList.do")
	public ModelAndView selectList(HttpServletRequest request) throws IOException{
		
		String address = request.getParameter("address");
		String department = request.getParameter("department");
		System.out.println(address);
		HospitalVO vo = new HospitalVO();
		vo.setAddress(address);
		vo.setDepartment(department);
		vo.setFdoctor(1);
		vo.setForeigner(1);
		
		List<HospitalVO> list = this.hospitalService.selectList(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("hospital"); // views/memberList로 포워딩
		return mav;
	}	
}
