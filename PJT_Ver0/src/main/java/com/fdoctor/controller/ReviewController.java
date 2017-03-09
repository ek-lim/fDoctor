package com.fdoctor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fdoctor.service.ReviewService;
import com.fdoctor.vo.ReviewVO;

@Controller
public class ReviewController {
//index에서 넘어옴-> mapping해서 넘겨주자 
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="review.do", method=RequestMethod.POST)
	/*public String checkId(@RequestParam HashMap<String, Object> param) {
	     
	    System.out.println(param);
	    System.out.println("id is "+param.get("id"));
	 
	    //your logic
	 
	    HashMap<String, Object> hashmap = new HashMap<String, Object>();
	    hashmap.put("KEY", "YES");
	     
	    return null;
	}
	@RequestMapping(value = "/user/signUp/checkId", method = RequestMethod.POST)*/
	public String detail(@RequestParam("name") String name,
						@RequestParam("review") String review,
						@RequestParam("hid") int hid){
		ReviewVO vo=new ReviewVO();
		
		vo.setName(name);
		vo.setReview(review);
		String result="redirect:detail.do?hid="+hid;
		this.reviewService.insert(vo);
		return result;
	}
}
