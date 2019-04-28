package com.jk1603.apple.admini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk1603.apple.admini.dao.AdminiDao;
import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
@Service
public class AdminiService implements AdminiServiceInterface {
	@Autowired
	AdminiDao adminidao;
	//�����Ʒ
	@Override
	public void addGoods(Goods g) {
		adminidao.addGoods(g);
	}
	
	//��ѯ��Ʒ
	@Override
	public List<Goods> getGoods(String number) {
		List<Goods> listgoods = adminidao.getGoods(number);
		return listgoods;
	}
	
	//��ӹ���Ա
	@Override
	public void addAdmini(Admini ad) {
		adminidao.addAdmini(ad);
	}
	
	//��ѯ��Ʒ��ʾ��indexҳ����
	@Override
	public List<Goods> getGoodstoindex() {
		List<Goods> goodsList = adminidao.getGoodstoindex();
		return goodsList;
	}
	
	//��Ʒ���
	@Override
	public void intoStore(Intostore ins) {
		adminidao.intoStore(ins);
	}
	
	//��ѯ��Ʒ�������
	@Override
	public List<Intostore> getIntostore(String number) {
		List<Intostore> listins = adminidao.getIntostore(number);
		return listins;
	}

	//��Ʒ����
	@Override
	public void outStore(Outstore ous) {
		adminidao.outStore(ous);
		
	}
	//��ѯ��Ʒ��������
	@Override
	public List<Outstore> getOutstore(String number) {
		List<Outstore> listous = adminidao.getOutstore(number);
		return listous;
	}
}
