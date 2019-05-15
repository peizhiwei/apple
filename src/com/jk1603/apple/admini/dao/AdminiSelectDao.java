package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Goods;
import com.jk1603.apple.admini.pojo.Outstore;
import com.jk1603.apple.admini.pojo.Stock;
import com.jk1603.apple.admini.pojo.Store;
import com.jk1603.apple.admini.pojo.SuperAdmini;
import com.jk1603.apple.admini.pojo.Type;

public interface AdminiSelectDao {
	//根据商品编号查询商品
	@Select("SELECT * FROM goods WHERE `number`= #{number}")
	List<Goods> getGoods(String number);
	//根据商品名查询商品
	@Select("SELECT g.*,t.type_name as `type.typeName`,s.super_admini_name as `superadmini.superAdminiName`,a.admini_name as `admini.adminiName` FROM goods g\r\n" + 
			"LEFT JOIN type t ON g.type_id=t.id\r\n" + 
			"LEFT JOIN superadmini s ON g.superadmini_id=s.id\r\n" + 
			"LEFT JOIN admini a ON a.id=g.admini_id\r\n" + 
			"WHERE g.`name` LIKE #{goodsname}")
	List<Goods> getGoodsList(String goodsname);
	//根据商品名称查询商品id
	@Select("SELECT id FROM goods WHERE name=#{goodsname}")
	Goods getgoodsid(String goodsname);
	//查询仓库中是否已经存在此商品
	@Select("SELECT * FROM store WHERE goods_id=#{goodsId}")
	Store getstoregoodsid(int goodsId);
	//查询所有分类
	@Select("SELECT id,type_name as typeName FROM type")
	List<Type> getType();
	//根据id查询分类名
	@Select("select id from type where type_name=#{typeName}")
	int gettypeid(String typeName);
	
	//查询所有商品信息
	@Select("SELECT s.super_admini_name as `superadmini.superAdminiName`, a.admini_name as `admini.adminiName`, g.*,t.type_name as 'type.typeName' FROM goods g\r\n" + 
			"LEFT JOIN type t on g.type_id=t.id "
			+"LEFT JOIN admini a ON a.id=g.admini_id "
			+ "LEFT JOIN superadmini s ON s.id=g.superadmini_id "
			+ "ORDER BY g.date")
	List<Goods> getallGoods();
	//
	@Select("SELECT g.*,t.type_name as `type.typeName`"
			+ " FROM goods g "
			+ "LEFT JOIN type t on g.type_id=t.id ORDER BY g.date")
	List<Goods> getGoodstoindex();
	
	
	//查询商品表最大的id
	@Select("SELECT MAX(id) FROM goods")
	int getgoodsmaxid();
	//根据超级管理员名查询超级管理员所有信息
	@Select("SELECT id, super_admini_name as superAdminiName,super_admini_password as superAdminiPassword FROM superadmini "
			+ "WHERE super_admini_name=#{superAdminiName}")
	SuperAdmini findBySuperAdminiName(String superadmininame);
	//根据管理员名查询管理员所有信息
	@Select("SELECT id, admini_name as adminiName,admini_password as adminiPassword FROM admini "
			+ "WHERE admini_name=#{adminiName}")
	Admini findByAdminiName(String admininame);
	//查询所有管理员信息
	@Select("SELECT id, admini_name as adminiName,admini_password as adminiPassword FROM admini")
	List<Admini> getallAdmini();
	//查询库存
	@Select("SELECT g.number AS `goods.number`,g.`name` AS `goods.name`,g.price AS `goods.price`,g.specs AS `goods.specs`,g.details AS `goods.details`,g.img AS `goods.img`,\r\n" + 
			"t.type_name AS `goods.type.typeName`,s.amount,s.date,a.admini_name AS `admini.adminiName`,su.super_admini_name AS `superadmini.superAdminiName` FROM store s\r\n" + 
			"LEFT JOIN goods g ON g.id=s.goods_id\r\n" + 
			"LEFT JOIN type t ON t.id=g.type_id\r\n" + 
			"LEFT JOIN admini a ON a.id=s.admini_id\r\n" + 
			"LEFT JOIN superadmini su ON su.id=s.superadmini_id\r\n" + 
			"ORDER BY s.date")
	List<Store> getallstore();
}
