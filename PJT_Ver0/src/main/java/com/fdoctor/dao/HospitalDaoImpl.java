package com.fdoctor.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdoctor.vo.HospitalVO;
@Repository
public class HospitalDaoImpl implements HospitalDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<HospitalVO> selectAll() {
		return this.sqlSessionTemplate.selectList("selectAll");
	}
	
	@Override
	public List<HospitalVO> firstList() {
		return this.sqlSessionTemplate.selectList("firstList");
	}

	@Override
	public List<HospitalVO> selectList(HospitalVO vo) {
		System.out.println(vo.getAddress());
		return this.sqlSessionTemplate.selectList("selectList", vo);
	}

	@Override
	public HospitalVO selectOne(int hid) {
		return this.sqlSessionTemplate.selectOne("selectHospital", hid);
	}

	@Override
	public void insert(HospitalVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(HospitalVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String name) {
		// TODO Auto-generated method stub

	}

}
