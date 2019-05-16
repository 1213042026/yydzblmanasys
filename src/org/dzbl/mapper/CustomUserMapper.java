package org.dzbl.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface CustomUserMapper {

    List<Map<String, Object>> findUserList(@Param("beginIndex") Integer beginIndex, @Param("pageSize") Integer pageSize);

    Integer findUserCount();
    
    List<Map<String, Object>> findPatientList(@Param("beginIndex") Integer beginIndex, @Param("pageSize") Integer pageSize);

    Integer findPatientCount();
}