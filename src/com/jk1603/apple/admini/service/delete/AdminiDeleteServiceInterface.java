package com.jk1603.apple.admini.service.delete;

import java.util.List;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.SuperAdmini;

public interface AdminiDeleteServiceInterface {

	//批量删除管理员
	void deleteAdminis(List<String> adminiNameList);
	//批量删除商品
	void deleteGoods(int[] goodsid);
}
