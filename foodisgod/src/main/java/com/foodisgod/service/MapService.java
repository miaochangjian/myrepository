package com.foodisgod.service;

import java.util.List;
import java.util.Map;

import com.foodisgod.pojo.FoodItem;
import com.foodisgod.pojo.RestaurantWithBLOBs;

public interface MapService {

	void saveData(String city, Integer value);

	List<Map> findAll();

	RestaurantWithBLOBs selectByPrimaryKey(int i);

	FoodItem findFoodById(Integer i);
	
}
