package com.fdoctor.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdoctor.vo.MessageVO;

@Repository
public class MessageDaoImpl implements MessageDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int sendmessage(MessageVO vo) {
		return this.sqlSessionTemplate.insert("sendmessage",vo);
	}


}


