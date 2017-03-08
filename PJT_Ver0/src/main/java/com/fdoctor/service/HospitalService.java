package com.fdoctor.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fdoctor.dao.HospitalDao;
import com.fdoctor.vo.HospitalVO;


@Service
public class HospitalService {
	
	@Autowired
	private HospitalDao hospitalDao;
	public List<HospitalVO> selectAll() {
		return this.hospitalDao.selectAll();
	}
	
	public HospitalVO selectOne(int hid) {
		return this.hospitalDao.selectOne(hid);
	}
	
	public List<HospitalVO> selectList(HospitalVO vo) {
		System.out.println(vo.getAddress());
		return this.hospitalDao.selectList(vo);
	}
	
	public List<HospitalVO> firstList() {
		return this.hospitalDao.firstList();
	}
	
	public HospitalVO nearOne(int hid){
		double bigyoGyungdo; double bigyoWido;
		double minGyungdo=0; double minWido=0;
		double bigyoCha; double minCha;
		int gijunHid=1039;
		// 기준 경도/위도 불러오기
		HospitalVO vo = this.hospitalDao.selectOne(hid);
		double gijunGyungdo = vo.getGyungdo();
		double gijunWido = vo.getWido();
		
		// list 불러오기
		List<HospitalVO> list = this.hospitalDao.selectAll();
		for(int i=0; i<list.size(); i++){
			bigyoGyungdo = list.get(i).getGyungdo();
			bigyoWido = list.get(i).getWido();
			if(i==0){
				gijunHid = list.get(i).getHid();
				minGyungdo = bigyoGyungdo;
				minWido = bigyoWido;
			}
			bigyoCha=Math.pow(bigyoGyungdo-gijunGyungdo,2)+Math.pow(bigyoWido-gijunWido, 2);
			minCha=Math.pow(minGyungdo-gijunGyungdo,2)+Math.pow(minWido-gijunWido, 2);
			if(bigyoCha<minCha && bigyoCha!=0){
				gijunHid = list.get(i).getHid();
				minGyungdo = bigyoGyungdo;
				minWido = bigyoWido;
			}
		}
		return this.hospitalDao.selectOne(gijunHid);
	}
	
	public List<HospitalVO> nearList(int hid){
		double bigyoGyungdo; double bigyoWido;
		double[] minGyungdo = new double[4];
		double[] minWido = new double[4];
		double bigyoCha; 
		double[] minCha = {0,100,100,100};
		int[] nearHid= new int[4];
		// 기준 경도/위도 불러오기
		HospitalVO vo = this.hospitalDao.selectOne(hid);
		double gijunGyungdo = vo.getGyungdo();
		double gijunWido = vo.getWido();
		System.out.println(vo.getName());
		// list 불러오기
		List<HospitalVO> list = this.hospitalDao.selectAll();
		for(int i=0; i<list.size(); i++){
			bigyoGyungdo = list.get(i).getGyungdo();
			bigyoWido = list.get(i).getWido();
			if(i==0){
				nearHid[i] = list.get(i).getHid();
				minGyungdo[i] = bigyoGyungdo;
				minWido[i] = bigyoWido;
				minCha[i]=Math.pow(minGyungdo[i]-gijunGyungdo,2)+Math.pow(minWido[i]-gijunWido, 2);
				System.out.println("i="+i+"일때 차이 : "+minCha[i]);
			}else{
				//4번째부터 문제인 거 같다
				bigyoCha=Math.pow(bigyoGyungdo-gijunGyungdo,2)+Math.pow(bigyoWido-gijunWido, 2);
				if(i<=3){
					for(int k=0; k<i; k++){
						if(bigyoCha<minCha[k] && bigyoCha!=0){
							for(int q=k; q>=0; q--){
								nearHid[q+1] = nearHid[q];
								minGyungdo[q+1] = minGyungdo[q];
								minWido[q+1] = minWido[q];
								minCha[q+1] = minCha[q];
								System.out.println("i="+i+",k="+k+"일때 minCha["+q+"]는"+minCha[q]);
							}
							nearHid[0] = list.get(i).getHid();
							minGyungdo[0] = bigyoGyungdo;
							minWido[0] = bigyoWido;
							minCha[0]=bigyoCha;
						}else{
							nearHid[i] = list.get(i).getHid();
							minGyungdo[i] = bigyoGyungdo;
							minWido[i] = bigyoWido;
							minCha[i] = bigyoCha;
							System.out.println("i="+i+",k="+k+"일때 minCha["+i+"]는"+minCha[i]);
						}
					}
					System.out.println("i="+i+"일때 차이 : "+minCha[i]);
					
				}else{
					for(int k=0; k<3; k++){
						if(bigyoCha<minCha[k] && bigyoCha!=0){
							for(int q=k; q>=0; q--){
								nearHid[q+1] = nearHid[q];
								minGyungdo[q+1] = minGyungdo[q];
								minWido[q+1] = minWido[q];
								minCha[q+1] = minCha[q];
							}
							nearHid[0] = list.get(i).getHid();
							minGyungdo[0] = bigyoGyungdo;
							minWido[0] = bigyoWido;
							minCha[0] = bigyoCha;
						}
					}
					if(bigyoCha<minCha[3] && bigyoCha!=0){
						nearHid[3] = list.get(i).getHid();
						minGyungdo[3] = bigyoGyungdo;
						minWido[3] = bigyoWido;
						minCha[3] = bigyoCha;
						System.out.println("마지막 자리 탈환 : "+minCha[3]);
					}	
				}
			}
			System.out.println(i+"번째 돌 때 "+minCha[0]+" "+minCha[1]+" "+minCha[2]+" "+minCha[3]);
		}
		System.out.print("최종 hid : ");
		for(int i=0; i<4; i++){
			System.out.print(nearHid[i]+" ");
		}
		List<HospitalVO> newlist = new ArrayList<HospitalVO>();
		for(int i : nearHid){
			newlist.add(this.hospitalDao.selectOne(i));
		}
		return newlist;
	}
}
