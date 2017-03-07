package com.fdoctor.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fdoctor.vo.MemberVO;
@Repository
public class MemberDaoImpl implements MemberDao {
   
   @Autowired
   private SqlSessionTemplate sqlSessionTemplate;
   
   @Override
   public List<MemberVO> selectAll_m() {
      return this.sqlSessionTemplate.selectList("selectAll");
   }

   @Override
   public void insert_m(MemberVO vo) {
      this.sqlSessionTemplate.insert("insert", vo);

   }

   @Override
   public void update_m(MemberVO vo) {
      this.sqlSessionTemplate.update("update", vo);

   }

   @Override
   public void delete_m(String user_id) {
      this.sqlSessionTemplate.delete("delete", user_id);

   }

   @Override
   public MemberVO admin_ok(MemberVO vo) {
      return this.sqlSessionTemplate.selectOne("selectOne", vo);
      
   }

}