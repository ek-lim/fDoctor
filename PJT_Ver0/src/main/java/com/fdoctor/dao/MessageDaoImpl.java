package com.fdoctor.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdoctor.vo.MessageVO;

@Repository
public class MessageDaoImpl implements MessageDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void sendmessage(MessageVO vo) {
		// TODO Auto-generated method stub
		this.sqlSessionTemplate.insert("sendmessage",vo);

	}


}


