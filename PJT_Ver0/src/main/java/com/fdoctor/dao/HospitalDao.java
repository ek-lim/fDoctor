package com.fdoctor.dao;

import java.util.List;
import com.fdoctor.vo.HospitalVO;

public interface HospitalDao {
	List<HospitalVO> selectAll();
	HospitalVO selectOne(String name);
	void insert(HospitalVO vo);
	void update(HospitalVO vo);
	void delete(String name);
}
