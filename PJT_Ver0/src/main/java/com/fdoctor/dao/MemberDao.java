package com.fdoctor.dao;

import java.util.List;

import com.fdoctor.vo.MemberVO;

public interface MemberDao {
   List<MemberVO> selectAll_m();
   MemberVO admin_ok(MemberVO vo);
   void insert_m(MemberVO vo);
   void update_m(MemberVO vo);
   void delete_m(String user_id);
}