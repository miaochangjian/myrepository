package com.foodisgod.service;

import com.foodisgod.pojo.FoodOrder;
import com.foodisgod.pojo.FoodOrderItem;

public interface FoodOrderService {
	void saveFoodOrder(FoodOrder fo, FoodOrderItem foi);
}
