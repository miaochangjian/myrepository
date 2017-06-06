package com.foodisgod.service;

import com.foodisgod.pojo.FoodUser;

public interface UserService {

	void saveFoodUser(FoodUser foodUser);


	FoodUser findFoodUserByUsername(String username);

	FoodUser findFoodUserByUserId(Long userId);


	void updateFoodUser(FoodUser foodUser);
}
