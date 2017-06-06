package com.foodisgod.service;

import com.foodisgod.pojo.FoodManager;

public interface ManagerService {
/**
 * 注册时，添加商家
 * @param foodaManager 商家对象
 */
	void saveFoodManager(FoodManager foodManager);
/**
 * 根据姓名查找商家
 * @param managerName
 * @return
 */
FoodManager findManagerByName(String managerName);

}
