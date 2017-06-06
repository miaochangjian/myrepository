package com.foodisgod.mapper;

import com.foodisgod.pojo.FoodOrderItem;
import com.foodisgod.pojo.FoodOrderItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FoodOrderItemMapper {
    int countByExample(FoodOrderItemExample example);

    int deleteByExample(FoodOrderItemExample example);

    int deleteByPrimaryKey(Integer foodOiId);

    int insert(FoodOrderItem record);

    int insertSelective(FoodOrderItem record);

    List<FoodOrderItem> selectByExample(FoodOrderItemExample example);

    FoodOrderItem selectByPrimaryKey(Integer foodOiId);

    int updateByExampleSelective(@Param("record") FoodOrderItem record, @Param("example") FoodOrderItemExample example);

    int updateByExample(@Param("record") FoodOrderItem record, @Param("example") FoodOrderItemExample example);

    int updateByPrimaryKeySelective(FoodOrderItem record);

    int updateByPrimaryKey(FoodOrderItem record);
}