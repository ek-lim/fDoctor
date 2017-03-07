package com.fdoctor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fdoctor.service.ReviewService;
import com.fdoctor.vo.ReviewVO;

@Controller
public class ReviewController {
//index에서 넘어옴-> mapping해서 넘겨주자 
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("review_ok.do")
	public String detail(@RequestParam("name") String name,
						@RequestParam("review") String review,
						@RequestParam("reg_date") String reg_date){
			ReviewVO vo=new ReviewVO();
			
			vo.setName(name);
			vo.setReview(review);
			vo.setReg_date(reg_date);
			
			this.reviewService.insert(vo);
			return "redirect:detail.jsp";
	}
	
	
}
