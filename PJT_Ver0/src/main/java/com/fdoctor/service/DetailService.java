package com.fdoctor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdoctor.dao.DetailDao;
import com.fdoctor.vo.DetailVO;


@Service
public class DetailService {

	@Autowired
	private DetailDao detailDao;
	private DetailVO detailVO;
	
	public void insert(DetailVO vo) {
		// TODO Auto-generated method stub
		this.detailDao.insert(vo);

	}
}
