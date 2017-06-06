package com.foodisgod.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.foodisgod.pojo.FoodOrder;
import com.foodisgod.pojo.FoodOrderExample;
import com.foodisgod.pojo.FoodOrderItem;

public interface FoodOrderMapper {
	void saveOrder(FoodOrder fo);

	void saveOrderItem(FoodOrderItem foi);
    int countByExample(FoodOrderExample example);

    int deleteByExample(FoodOrderExample example);

    int deleteByPrimaryKey(Long orderId);

    int insert(FoodOrder record);

    int insertSelective(FoodOrder record);

    List<FoodOrder> selectByExample(FoodOrderExample example);

    FoodOrder selectByPrimaryKey(Long orderId);

    int updateByExampleSelective(@Param("record") FoodOrder record, @Param("example") FoodOrderExample example);

    int updateByExample(@Param("record") FoodOrder record, @Param("example") FoodOrderExample example);

    int updateByPrimaryKeySelective(FoodOrder record);

    int updateByPrimaryKey(FoodOrder record);
}