package com.foodisgod.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.foodisgod.mapper.FoodManagerMapper;
import com.foodisgod.pojo.FoodManager;
import com.foodisgod.service.ManagerService;
import com.foodisgod.tool.MD5Hash;

@Service
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private FoodManagerMapper foodManagerMapper;

	public void saveFoodManager(FoodManager foodManager) {
		foodManager.setPassword(MD5Hash.getMd5HashPasswod(foodManager.getPassword(), foodManager.getManagerName()));
		foodManager.setCreatedTime(new Date());
		foodManagerMapper.saveFoodManager(foodManager);
	}

	/*public FoodManager findManagerByManagerName(String managerName) {
		
		return foodManagerMapper.findManagerByName(managerName);
	}*/

	@Override
	public FoodManager findManagerByName(String managerName) {
		// TODO Auto-generated method stub
		return foodManagerMapper.findManagerByName(managerName);
	}

	
	

}
