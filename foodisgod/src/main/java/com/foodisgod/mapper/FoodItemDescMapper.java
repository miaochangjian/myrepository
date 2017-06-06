package com.foodisgod.mapper;

import com.foodisgod.pojo.FoodItemDesc;
import com.foodisgod.pojo.FoodItemDescExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FoodItemDescMapper {
	 int countByExample(FoodItemDescExample example);

	    int deleteByExample(FoodItemDescExample example);

	    int deleteByPrimaryKey(Long itemId);

	    int insert(FoodItemDesc record);

	    int insertSelective(FoodItemDesc record);

	    List<FoodItemDesc> selectByExampleWithBLOBs(FoodItemDescExample example);

	    List<FoodItemDesc> selectByExample(FoodItemDescExample example);

	    FoodItemDesc selectByPrimaryKey(Long itemId);

	    int updateByExampleSelective(@Param("record") FoodItemDesc record, @Param("example") FoodItemDescExample example);

	    int updateByExampleWithBLOBs(@Param("record") FoodItemDesc record, @Param("example") FoodItemDescExample example);

	    int updateByExample(@Param("record") FoodItemDesc record, @Param("example") FoodItemDescExample example);

	    int updateByPrimaryKeySelective(FoodItemDesc record);

	    int updateByPrimaryKeyWithBLOBs(FoodItemDesc record);

	    int updateByPrimaryKey(FoodItemDesc record);

		void addFoodItemDesc(FoodItemDesc foodItemDesc);
}