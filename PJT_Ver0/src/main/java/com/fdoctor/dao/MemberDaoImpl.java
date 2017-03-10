package com.fdoctor.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdoctor.vo.MemberVO;
import com.fdoctor.vo.MessageVO;
import com.fdoctor.vo.ReviewVO;
@Repository
public class MemberDaoImpl implements MemberDao {
   
   @Autowired
   private SqlSessionTemplate sqlSessionTemplate;
   
   @Override
   public List<MemberVO> selectAll_m() {
      return this.sqlSessionTemplate.selectList("selectMembers");
   }

   @Override
   public void insert_m(MemberVO vo) {
      this.sqlSessionTemplate.insert("insert", vo);

   }
   @Override
   public List<MessageVO> selectOne_ck(String message_ck) {
   	// TODO Auto-generated method stub
   	return this.sqlSessionTemplate.selectOne("selectOneck", message_ck);
   }

   @Override
   public void update_m(MemberVO vo) {
      this.sqlSessionTemplate.update("update", vo);

   }
   @Override
   public List<ReviewVO> selectAll_rev() {
   	// TODO Auto-generated method stub
   	return sqlSessionTemplate.selectList("reviewAll");
   }
   

@Override
public MemberVO selectpoint(String user_id) {
	// TODO Auto-generated method stub
	return this.sqlSessionTemplate.selectOne("selectpoint", user_id);
}

   @Override
   public void delete_m(String user_id) {
      this.sqlSessionTemplate.delete("delete", user_id);

   }

   @Override
   public MemberVO admin_ok(MemberVO vo) {
      return this.sqlSessionTemplate.selectOne("adminLogin", vo);
      
   }

@Override
public List<MessageVO> selectAll_msg() {
	return this.sqlSessionTemplate.selectList("selectmessage");
}

@Override
public MessageVO selectOne_msg(int message_no) {
	// TODO Auto-generated method stub
	return this.sqlSessionTemplate.selectOne("selectOnemessage", message_no);
}

@Override
public void update_msg(int message_no) {
	
	this.sqlSessionTemplate.update("updatemessage", message_no);
}
/*회원 가입*/
public void joinUser(MemberVO vo){
	this.sqlSessionTemplate.update("joinUser",vo);
}

}