package kr.co.yangdoll.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
	@Select("select sysdate from dual")
	String getTime();
}
