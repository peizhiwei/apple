package com.jk1603.apple.admini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.DeleteProvider;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.Provider;

public interface AdminiDeleteDao {
	// 删除管理员
	@Delete("DELETE FROM admini where admini_name = #{adminiName}" )
	void deleteAdmini(Admini admini);

	//批量删除管理员
	@DeleteProvider(type = Provider.class, method = "batchDelete")
	void deleteAdminis(List<String> adminiNameList);
}
