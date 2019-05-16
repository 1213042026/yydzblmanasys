package org.dzbl.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.dzbl.entity.LeaveMessage;
import org.dzbl.entity.LeaveMessageCriteria;

public interface LeaveMessageMapper {
    long countByExample(LeaveMessageCriteria example);

    int deleteByExample(LeaveMessageCriteria example);

    int deleteByPrimaryKey(Integer id);

    int insert(LeaveMessage record);

    int insertSelective(LeaveMessage record);

    List<LeaveMessage> selectByExample(LeaveMessageCriteria example);

    LeaveMessage selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") LeaveMessage record, @Param("example") LeaveMessageCriteria example);

    int updateByExample(@Param("record") LeaveMessage record, @Param("example") LeaveMessageCriteria example);

    int updateByPrimaryKeySelective(LeaveMessage record);

    int updateByPrimaryKey(LeaveMessage record);
}