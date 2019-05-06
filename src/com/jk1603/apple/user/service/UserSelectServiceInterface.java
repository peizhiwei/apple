package com.jk1603.apple.user.service;

import java.util.List;

import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.user.pojo.Shoppingcart;
import com.jk1603.apple.user.pojo.User;

public interface UserSelectServiceInterface {
	List<Shoppingcart> getshoppingcart(int id);
}
