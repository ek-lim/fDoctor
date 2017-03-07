package com.fdoctor.dao;

import java.util.List;

import com.fdoctor.vo.ReviewVO;

public interface ReviewDao {
	List<ReviewVO> reviewAll();
	void insert(ReviewVO vo);

	
}
