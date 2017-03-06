package com.fdoctor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdoctor.dao.HospitalDao;
import com.fdoctor.vo.HospitalVO;


@Service
public class HospitalService {
	
	@Autowired
	private HospitalDao hospitalDao;
	public List<HospitalVO> selectAll() {
		return this.hospitalDao.selectAll();
	}
	
	public HospitalVO selectOne(String name) {
		return this.hospitalDao.selectOne(name);
	}
	
	public List<HospitalVO> selectList(HospitalVO vo) {
		return this.hospitalDao.selectList(vo);
	}
}
