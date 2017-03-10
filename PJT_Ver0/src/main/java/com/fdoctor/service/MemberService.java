package com.fdoctor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdoctor.dao.MemberDao;
import com.fdoctor.vo.MemberVO;
import com.fdoctor.vo.MessageVO;

@Service
public class MemberService {
   
   @Autowired
   private MemberDao memberDao;
   
   public List<MemberVO> selectAll(){
      return this.memberDao.selectAll_m();
   }
   
   public MemberVO admin_ok(MemberVO vo){
      return this.memberDao.admin_ok(vo);
   }
   
   public void insert(MemberVO vo){
      this.memberDao.insert_m(vo);
   }
   
   public MemberVO selectpoint(String user_id){
	   return this.memberDao.selectpoint(user_id);
   }
   
   public void update(MemberVO vo){
      this.memberDao.update_m(vo);
   }
   
   public void delete(String user_id){
      this.memberDao.delete_m(user_id);
   }
   
   
   public List<MessageVO> selectAll_msg(){
	   return this.memberDao.selectAll_msg();
   }
   
   public MessageVO selectOne_msg(int message_no){
	   return this.memberDao.selectOne_msg(message_no);
   }
   public void update_msg(int message_no){
	   this.memberDao.update_msg(message_no);
   }
   
   public void joinUser(MemberVO vo){
	   this.memberDao.joinUser(vo);
   }
   
   public List<MessageVO> selectOne_ck(String message_ck){
	   return this.memberDao.selectOne_ck(message_ck);
   }
}