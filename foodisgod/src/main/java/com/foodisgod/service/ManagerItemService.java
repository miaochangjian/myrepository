package com.foodisgod.service;

import java.util.List;

import com.foodisgod.common.pojo.EasyUiDate;
import com.foodisgod.pojo.FoodItem;

public interface ManagerItemService {
	/**
	 * 添加商品对象
	 * @param item
	 * @param desc
	 */
	public void addFoodItem(FoodItem item, String desc);

	public List<FoodItem> findSaleInfos();
	
    /**
     *  根据 itemid  删除
     * @param ids itemId集合
     */
	void deleteById(Long[] ids);
    /**
     *  修改 商品对象 
     * @param foodItem
     */
	void updateItem(FoodItem foodItem);

	void updateStatus(Long[] ids, int status);
    
	/**
	 * 分页查询
	 * @param page 当前页数
	 * @param rows  每页的 对象个数
	 * @return EasyUiDate 封装返回前台的 JSON格式
	 */
	EasyUiDate getItemList(int page, int rows);

}
