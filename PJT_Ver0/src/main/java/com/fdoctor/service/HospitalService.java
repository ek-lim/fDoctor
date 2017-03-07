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
	
	public HospitalVO selectOne(int hid) {
		return this.hospitalDao.selectOne(hid);
	}
	
	public List<HospitalVO> selectList(HospitalVO vo) {
		System.out.println(vo.getAddress());
		return this.hospitalDao.selectList(vo);
	}
	
	public List<HospitalVO> firstList() {
		return this.hospitalDao.firstList();
	}
}
