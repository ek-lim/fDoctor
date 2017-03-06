package com.fdoctor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		mav.setViewName("memberList"); // views/memberList로 포워딩
		return mav;
	}
	
}
