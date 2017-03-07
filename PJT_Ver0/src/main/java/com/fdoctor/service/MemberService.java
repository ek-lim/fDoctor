package com.fdoctor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdoctor.dao.MemberDao;
import com.fdoctor.vo.MemberVO;

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
   
   public void update(MemberVO vo){
      this.memberDao.update_m(vo);
   }
   
   public void delete(String user_id){
      this.memberDao.delete_m(user_id);
   }
}