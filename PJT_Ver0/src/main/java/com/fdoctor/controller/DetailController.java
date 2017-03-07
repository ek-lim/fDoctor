package com.fdoctor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.fdoctor.dao.DetailDaoImpl;
import com.fdoctor.vo.DetailVO;

@Controller
public class DetailController {
//index에서 넘어옴-> mapping해서 넘겨주자 
	
	@Autowired
	DetailDaoImpl detailDaoImpl;
	
	
	
	@RequestMapping("detail.do")
	public String selectOne(){
		return "detail";
	}
	
	@RequestMapping("detail_ok.do")
	public String detail(@RequestParam("name") String name,
						@RequestParam("review") String review,
						@RequestParam("reg_date") String reg_date){
			DetailVO vo=new DetailVO();
			
			vo.setName(name);
			vo.setReview(review);
			vo.setReg_date(reg_date);
			
			this.detailDaoImpl.insert(vo);
			return "redirect:detail.jsp";
	}
	
	
}
