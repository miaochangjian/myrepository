package com.foodisgod.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.foodisgod.mapper.FoodOrderMapper;
import com.foodisgod.pojo.FoodOrder;
import com.foodisgod.pojo.FoodOrderItem;
import com.foodisgod.service.FoodOrderService;

@Service
public class FoodOrderServiceImpl implements FoodOrderService{
	

	@Autowired
	private FoodOrderMapper foodOrderMapper;

	@Override
	public void saveFoodOrder(FoodOrder fo, FoodOrderItem foi) {
		//设置创建时间
		fo.setCreatedTime(new Date());
		//插入food_order表
		foodOrderMapper.saveOrder(fo);
		//插入food_item关联表
		foodOrderMapper.saveOrderItem(foi);
		
	}
}
