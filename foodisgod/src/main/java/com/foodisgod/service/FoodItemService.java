package com.foodisgod.service;

import java.util.List;

import com.foodisgod.pojo.FoodItem;

public interface FoodItemService {

	List<FoodItem> findFoodByStatus(Integer status);

	List<FoodItem> findFoodBySimpleImg(String index_none_header_sysc);

	FoodItem findFoodById(Long itemId);

}
