package com.foodisgod.service;

import java.util.List;

import com.foodisgod.pojo.FoodManager;
import com.foodisgod.pojo.Restaurant;

public interface RestaurantService {
	void saveRestaurant(Restaurant restaurant, FoodManager foodManager);

	void deleteRestaurant(Long restaurantId);


	List<Restaurant> findAllByManagerId(Long managerId);

	Restaurant findOne(Long restaurantId);

	void updateRestaurant(Restaurant restaurant);

}
