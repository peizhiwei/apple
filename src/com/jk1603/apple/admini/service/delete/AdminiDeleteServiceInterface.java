package com.jk1603.apple.admini.service.delete;

import java.util.List;

import com.jk1603.apple.admini.pojo.Admini;
import com.jk1603.apple.admini.pojo.SuperAdmini;

public interface AdminiDeleteServiceInterface {
	void deleteAdmini(Admini admini);
	//����ɾ��
	void deleteAdminis(List<String> adminiNameList);
}
