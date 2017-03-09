package com.fdoctor.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdoctor.vo.ReviewVO;
@Repository
public class ReviewDaoImpl implements ReviewDao {
	@Autowired // sqlSessionTemplate
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<ReviewVO> reviewAll() {
		// TODO Auto-generated method stub
		return this.sqlSessionTemplate.selectList("reviewAll");
	}

	@Override
	public void insert(ReviewVO vo) {
		// TODO Auto-generated method stub
		this.sqlSessionTemplate.insert("reviewInsert", vo);
		
	}

}
