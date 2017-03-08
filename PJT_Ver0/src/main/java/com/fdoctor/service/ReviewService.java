package com.fdoctor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdoctor.dao.ReviewDao;
import com.fdoctor.vo.ReviewVO;

@Service
public class ReviewService {

	@Autowired
	private ReviewDao reviewDao;
	
	public List<ReviewVO> reviewAll() {		
		System.out.println("서비스에 도달?");
		return this.reviewDao.reviewAll();
	}
	
	public void insert(ReviewVO vo) {
		// TODO Auto-generated method stub
		this.reviewDao.insert(vo);

	}
}
