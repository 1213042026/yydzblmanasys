package org.dzbl.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.dzbl.entity.News;
import org.dzbl.entity.NewsCriteria;

public interface NewsMapper {
    long countByExample(NewsCriteria example);

    int deleteByExample(NewsCriteria example);

    int deleteByPrimaryKey(Integer id);

    int insert(News record);

    int insertSelective(News record);

    List<News> selectByExample(NewsCriteria example);

    News selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") News record, @Param("example") NewsCriteria example);

    int updateByExample(@Param("record") News record, @Param("example") NewsCriteria example);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
}