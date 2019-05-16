package org.dzbl.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface CustomNewsMapper {

    List<Map<String, Object>> findNewsList(@Param("beginIndex") Integer beginIndex, @Param("pageSize") Integer pageSize);

    Integer findNewsCount();
}