package com.jk1603.apple.admini.service.update;

import java.util.List;

import com.jk1603.apple.admini.pojo.Goods;

public interface AdminiUpdateServiceInterface {
	//�༭��Ʒ
	List<Goods> setGoods(String number);
	//�ϴ���ƷͼƬ
	void setGoodsImg(Goods goods);
	//�ϼ�
	void setUpshelf(int id);
	//�¼�
	void setDownshelf(int id);
}
