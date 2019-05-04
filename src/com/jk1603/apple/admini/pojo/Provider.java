package com.jk1603.apple.admini.pojo;

import java.util.List;
import java.util.Map;

public class Provider {
	/* ÅúÁ¿É¾³ý */
	public String batchDelete(Map map) {
		List<String> adminiNameList = (List<String>) map.get("list");
		StringBuilder sb = new StringBuilder();
		sb.append("DELETE FROM admini WHERE admini_name IN (");
		for (int i = 0; i < adminiNameList.size(); i++) {
			sb.append("'").append(adminiNameList.get(i)).append("'");
			if (i < (adminiNameList.size() - 1)) {
				sb.append(",");
			}
		}
		sb.append(")");
		return sb.toString();
	}
}
