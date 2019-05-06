package com.jk1603.apple.user.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

public interface UserUpdateDao {
	@Update("UPDATE shoppingcart SET sh_amount=#{newamount} WHERE id=#{id}")
	void setshAmount(@Param("newamount")int newamount,@Param("id")int id);
}
