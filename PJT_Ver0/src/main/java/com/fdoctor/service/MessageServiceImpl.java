package com.fdoctor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdoctor.dao.MessageDao;
import com.fdoctor.vo.MessageVO;


@Service
public class MessageServiceImpl implements MessageService { 	
	
	@Autowired
	private MessageDao messageDao;

	public int sendmessage(MessageVO vo) {
		return this.messageDao.sendmessage(vo);

	}
	

}
