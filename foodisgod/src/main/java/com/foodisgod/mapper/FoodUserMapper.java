package com.foodisgod.mapper;

import com.foodisgod.pojo.FoodUser;
import com.foodisgod.pojo.FoodUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FoodUserMapper {
	void saveFoodUser(FoodUser foodUser);


	FoodUser findFoodUserByUsername(String username);

	FoodUser findFoodUserByUserId(Long userId);


	void updateFoodUser(FoodUser foodUser);
	
}