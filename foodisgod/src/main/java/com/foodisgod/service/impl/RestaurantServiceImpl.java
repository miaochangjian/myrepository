package com.foodisgod.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.foodisgod.mapper.RestaurantMapper;
import com.foodisgod.pojo.FoodManager;
import com.foodisgod.pojo.Restaurant;
import com.foodisgod.service.RestaurantService;

@Service
public class RestaurantServiceImpl implements RestaurantService {
	@Autowired
	private RestaurantMapper restaurantMapper;

	public void saveRestaurant(Restaurant restaurant, FoodManager foodManager) {
		// 设置managerId
		restaurant.setManagerId(foodManager.getManagerId());
		restaurant.setCreatedTime(new Date());
		restaurantMapper.saveRestaurant(restaurant);
	}

	@Override
	public void deleteRestaurant(Long restaurantId) {
		restaurantMapper.deleteRestaurant(restaurantId);
		
	}

	@Override
	public List<Restaurant> findAllByManagerId(Long managerId) {
		
		return restaurantMapper.findAllByManagerId(managerId);
	}

	@Override
	public Restaurant findOne(Long restaurantId) {
		
		return restaurantMapper.findOne(restaurantId);
	}

	@Override
	public void updateRestaurant(Restaurant restaurant) {
		restaurant.setUpdatedTime(new Date());
		restaurantMapper.updateRestaurant(restaurant);
		
	}

	

}
