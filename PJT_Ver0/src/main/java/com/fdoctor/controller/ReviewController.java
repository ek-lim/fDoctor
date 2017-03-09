package com.fdoctor.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fdoctor.service.ReviewService;
import com.fdoctor.vo.ReviewVO;

@Controller
public class ReviewController {

	
	@Autowired
	private ReviewService reviewService;
	
	
	@RequestMapping("/review_ok.do")
	public ModelAndView select(){
		List<ReviewVO> list = this.reviewService.reviewAll();
		System.out.println(list.size());
		ModelAndView mav = new ModelAndView("detail","list", list);
		return mav;
	}
	
	
	
	
	@RequestMapping(value="review.do", method=RequestMethod.POST)
	public String detail(@RequestParam("name") String name,
						@RequestParam("review") String review,
						@RequestParam("hid") int hid){

			ReviewVO vo=new ReviewVO();
			
			vo.setName(name);
			vo.setReview(review);
			
			
			this.reviewService.insert(vo);
			return "redirect:detail.do?hid="+hid;
	}
	
	
}
