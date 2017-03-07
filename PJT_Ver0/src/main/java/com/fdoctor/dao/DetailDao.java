package com.fdoctor.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.fdoctor.vo.DetailVO;

@Repository
public interface DetailDao {
	List<DetailVO> detailAll();
	void insert(DetailVO vo);

	
}
