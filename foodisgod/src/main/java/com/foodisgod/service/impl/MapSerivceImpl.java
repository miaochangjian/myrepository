package com.foodisgod.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.foodisgod.mapper.FoodItemMapper;
import com.foodisgod.mapper.FoodMapMapper;
import com.foodisgod.mapper.RestaurantMapper;
import com.foodisgod.pojo.FoodItem;
import com.foodisgod.pojo.RestaurantWithBLOBs;
import com.foodisgod.service.MapService;
@Service
public class MapSerivceImpl implements MapService {
	@Autowired
	private FoodMapMapper mapMapper;
	@Autowired
	private RestaurantMapper restaurantMapper;
	@Autowired
	private FoodItemMapper foodItemMapper;
	public void saveData(String city, Integer value) {
		mapMapper.saveData(city,value);
	}
	public List<Map> findAll() {
		return mapMapper.findAll();
	}
	@Override
	public RestaurantWithBLOBs selectByPrimaryKey(int i) {
		return restaurantMapper.selectByPrimaryKey((long)i);
	}
	@Override
	public FoodItem findFoodById(Integer i) {
		return foodItemMapper.findFoodById(i.longValue());
	}
	

}
