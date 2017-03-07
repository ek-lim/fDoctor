package com.fdoctor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdoctor.dao.MessageDao;
import com.fdoctor.vo.MessageVO;


@Service
public class MessageServiceImpl implements MessageService { 	
	
	@Autowired
	private MessageDao messageDao;

	public void sendmessage(MessageVO vo) {
		// TODO Auto-generated method stub
		this.messageDao.sendmessage(vo);

	}
	

}
