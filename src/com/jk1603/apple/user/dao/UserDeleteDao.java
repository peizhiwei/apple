package com.jk1603.apple.user.dao;

import org.apache.ibatis.annotations.Delete;

public interface UserDeleteDao {
	//ɾ�����ﳵĳһ��Ʒ
	@Delete("DELETE FROM shoppingcart WHERE id=#{id}")
	void removeshopping(int id);
}
