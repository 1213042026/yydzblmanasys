package org.dzbl.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.dzbl.entity.MedicalRecord;
import org.dzbl.entity.MedicalRecordCriteria;

public interface MedicalRecordMapper {
    long countByExample(MedicalRecordCriteria example);

    int deleteByExample(MedicalRecordCriteria example);

    int deleteByPrimaryKey(Integer id);

    int insert(MedicalRecord record);

    int insertSelective(MedicalRecord record);

    List<MedicalRecord> selectByExample(MedicalRecordCriteria example);

    MedicalRecord selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MedicalRecord record, @Param("example") MedicalRecordCriteria example);

    int updateByExample(@Param("record") MedicalRecord record, @Param("example") MedicalRecordCriteria example);

    int updateByPrimaryKeySelective(MedicalRecord record);

    int updateByPrimaryKey(MedicalRecord record);
}