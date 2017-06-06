package com.foodisgod.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.foodisgod.mapper.FoodItemMapper;
import com.foodisgod.pojo.FoodItem;
import com.foodisgod.service.FoodItemService;

@Service
public class FoodServiceImpl implements FoodItemService {
	
	@Autowired
	private FoodItemMapper foodItemMapper;

	@Override
	public List<FoodItem> findFoodByStatus(Integer status) {
		return foodItemMapper.findFoodByStatus(status);
	}

	@Override
	public List<FoodItem> findFoodBySimpleImg(String name) {
		return foodItemMapper.findFoodBySimpleImg(name);
	}

	@Override
	public FoodItem findFoodById(Long itemId) {
		return foodItemMapper.findFoodById(itemId);
	}
	
	
	

}
