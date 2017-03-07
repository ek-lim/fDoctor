package com.fdoctor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdoctor.dao.ReviewDao;
import com.fdoctor.vo.ReviewVO;


@Service
public class ReviewService {

	@Autowired
	private ReviewDao detailDao;
	
	public void insert(ReviewVO vo) {
		// TODO Auto-generated method stub
		this.detailDao.insert(vo);

	}
}
