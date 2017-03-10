package com.fdoctor.dao;

import java.util.List;

import com.fdoctor.vo.MemberVO;
import com.fdoctor.vo.MessageVO;

public interface MemberDao {
   List<MemberVO> selectAll_m();
   MemberVO admin_ok(MemberVO vo);
   void insert_m(MemberVO vo);
   void update_m(MemberVO vo);
   void delete_m(String user_id);
   MemberVO selectpoint(String user_id);
   List<MessageVO> selectAll_msg();
   MessageVO selectOne_msg(int message_no);
   void update_msg(int message_no);
   public void joinUser(MemberVO vo);
   List<MessageVO> selectOne_ck(String message_ck);
}