package com.fdoctor.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.fdoctor.vo.DetailVO;

public class DetailDaoImpl implements DetailDao {
	@Autowired // sqlSessionTemplate
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<DetailVO> detailAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(DetailVO vo) {
		// TODO Auto-generated method stub
		this.sqlSessionTemplate.insert("detailInsert", vo);
		
	}

}
