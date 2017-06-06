package com.foodisgod.mapper;

import com.foodisgod.pojo.FoodManager;
import com.foodisgod.pojo.FoodManagerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FoodManagerMapper {
    int countByExample(FoodManagerExample example);

    int deleteByExample(FoodManagerExample example);

    int deleteByPrimaryKey(Long managerId);

    int insert(FoodManager record);

    int insertSelective(FoodManager record);

    List<FoodManager> selectByExample(FoodManagerExample example);

    FoodManager selectByPrimaryKey(Long managerId);

    int updateByExampleSelective(@Param("record") FoodManager record, @Param("example") FoodManagerExample example);

    int updateByExample(@Param("record") FoodManager record, @Param("example") FoodManagerExample example);

    int updateByPrimaryKeySelective(FoodManager record);

    int updateByPrimaryKey(FoodManager record);

	void saveFoodManager(FoodManager foodManager);

	FoodManager findManagerByName(String managerName);
}