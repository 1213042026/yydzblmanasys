package org.dzbl.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface CustomMedicalRecordMapper {

    List<Map<String, Object>> findMedicalRecordList(@Param("beginIndex") Integer beginIndex, @Param("pageSize") Integer pageSize, @Param("userId") Integer userId);

    Integer findMedicalRecordCount(@Param("userId") Integer userId);
    

    List<Map<String, Object>> findMedicalRecordCondition(@Param("beginIndex") Integer beginIndex, @Param("pageSize") Integer pageSize, @Param("type") String type, @Param("patient") String patient, @Param("date") String date, @Param("docId") Integer docId);

    Integer findMedicalRecordConditionCount(@Param("type") String type, @Param("patient") String patient, @Param("date") String date, @Param("docId") Integer docId);
}