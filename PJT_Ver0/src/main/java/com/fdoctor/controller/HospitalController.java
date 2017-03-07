package com.fdoctor.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("first.do")
	public ModelAndView first(){
		List<HospitalVO> list = this.hospitalService.firstList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("first"); // views/memberList로 포워딩
		return mav;
	}
	
	
	@RequestMapping("detail.do") // jsp 방식 구현
	public ModelAndView selectOne_ok(@RequestParam int hid,
			HttpServletResponse response) throws IOException {
		
		HospitalVO vo = this.hospitalService.selectOne(hid);
		
		// javascript 때문에 한글 처리 한번 더!
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (vo != null) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("vo", vo);
			mav.setViewName("detail"); 
			return mav; // view page 포워딩
		} else {
			out.println("<script>");
			out.println("alert('병원 소개를 준비중입니다.')");
			out.println("history.back()");
			out.println("</script>");
			return null;
		}
	}
	
	@RequestMapping(value="selectList.do")
	public ModelAndView selectList(HttpServletRequest request) throws IOException{
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String department = request.getParameter("department");
		String fdoctor = request.getParameter("fdoctor");
		String foreigner = request.getParameter("foreigner");
		HospitalVO vo = new HospitalVO();
		if(name.length()>=1)
			System.out.println("name은 널이아님");
			vo.setName(name);
		if(address.length()>=1)
			System.out.println("address은 널이아님");
			vo.setAddress(address);
		if(department.length()>=1)
			System.out.println("department은 널이아님");
			vo.setDepartment(department);
		if(fdoctor != null){
			System.out.println("fdoctor는 널이아님");
			vo.setFdoctor(1);}
		if(foreigner != null){
			System.out.println("foreigntr는 널이아님");
			System.out.println(foreigner);
			vo.setForeigner(1);}
		
		List<HospitalVO> list = this.hospitalService.selectList(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("hospital"); // views/memberList로 포워딩
		return mav;
	}	
}
