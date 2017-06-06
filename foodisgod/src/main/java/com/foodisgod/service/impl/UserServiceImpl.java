package com.foodisgod.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.foodisgod.mapper.FoodUserMapper;
import com.foodisgod.pojo.FoodUser;
import com.foodisgod.service.UserService;
import com.foodisgod.tool.MD5Hash;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private FoodUserMapper foodUserMapper;

	public void saveFoodUser(FoodUser foodUser) {
		foodUser.setPassword(MD5Hash.getMd5HashPasswod(foodUser.getPassword(), foodUser.getUsername()));
		foodUser.setCreatedTime(new Date());
		foodUserMapper.saveFoodUser(foodUser);

	}

	public FoodUser findFoodUserByUsername(String username) {

		return foodUserMapper.findFoodUserByUsername(username);
	}

	@Override
	public FoodUser findFoodUserByUserId(Long userId) {

		return foodUserMapper.findFoodUserByUserId(userId);
	}

	@Override
	public void updateFoodUser(FoodUser foodUser) {
		foodUser.setPassword(MD5Hash.getMd5HashPasswod(foodUser.getPassword(), foodUser.getUsername()));
		foodUser.setUpdatedTime(new Date());
		foodUserMapper.updateFoodUser(foodUser);

	}

}
