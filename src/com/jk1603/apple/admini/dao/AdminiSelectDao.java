package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Intostore;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Stock;
import com.jk1603.apple.admini.pojo.SuperAdmini;
import com.jk1603.apple.admini.pojo.Type;

public interface AdminiSelectDao {
	//查询商品
	@Select("SELECT * FROM goods WHERE `number`= #{number}")
	List<Goods> getGoods(String number);
	//模糊查询商品
	@Select("SELECT * FROM goods WHERE `name` LIKE ‘%#{goodsname}%’")
	List<Goods> getGoodsList(String goodsname);
	
	//后去商品分类
	@Select("SELECT id,type_name as typeName FROM type")
	List<Type> getType();
	//根据商品分类名获取分类id
	@Select("select id from type where type_name=#{typeName}")
	int gettypeid(String typeName);
	
	//获取所有商品
	@Select("SELECT s.super_admini_name as `superadmini.superAdminiName`, a.admini_name as `admini.adminiName`, g.*,t.type_name as 'type.typeName' FROM goods g\r\n" + 
			"LEFT JOIN type t on g.type_id=t.id "
			+"LEFT JOIN admini a ON a.id=g.admini_id "
			+ "LEFT JOIN superadmini s ON s.id=g.superadmini_id "
			+ "ORDER BY g.date")
	List<Goods> getallGoods();
	//获取所有商品展示在前段页面
	@Select("SELECT g.*,t.type_name as `type.typeName`"
			+ " FROM goods g "
			+ "LEFT JOIN type t on g.type_id=t.id ORDER BY g.date")
	List<Goods> getGoodstoindex();
	
	
	//获取刚商品表最大的id
	@Select("SELECT MAX(id) FROM goods")
	int getgoodsmaxid();
	//ͨ根据超级管理员用户名查询超级管理员的所有信息
	@Select("SELECT id, super_admini_name as superAdminiName,super_admini_password as superAdminiPassword FROM superadmini "
			+ "WHERE super_admini_name=#{superAdminiName}")
	SuperAdmini findBySuperAdminiName(String superadmininame);
	//ͨ根据普通管理员名查询所有信息
	@Select("SELECT id, admini_name as adminiName,admini_password as adminiPassword FROM admini "
			+ "WHERE admini_name=#{adminiName}")
	Admini findByAdminiName(String admininame);
	//查询所有普通管理员
	@Select("SELECT id, admini_name as adminiName,admini_password as adminiPassword FROM admini")
	List<Admini> getallAdmini();
}
