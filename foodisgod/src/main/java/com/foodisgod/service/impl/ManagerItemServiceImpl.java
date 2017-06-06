package com.foodisgod.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.foodisgod.common.pojo.EasyUiDate;
import com.foodisgod.mapper.FoodItemDescMapper;
import com.foodisgod.mapper.FoodItemMapper;
import com.foodisgod.pojo.FoodItem;
import com.foodisgod.pojo.FoodItemDesc;
import com.foodisgod.pojo.IDUtils;
import com.foodisgod.service.ManagerItemService;

@Service
public class ManagerItemServiceImpl implements ManagerItemService {

	@Autowired
	private FoodItemMapper foodItemMapper;
	@Autowired
	private FoodItemDescMapper foodItemDescMapper;
	
	public void addFoodItem(FoodItem item, String desc){
		// 补全item对象的属性
		Long itemId = IDUtils.genItemId();
		item.setItemId(itemId);
		item.setStatus((byte) 1);
		item.setCreatedTime(new Date());
		item.setUpdatedTime(new Date());
		// 插入到数据库
		foodItemMapper.addFoodItem(item);
		// 添加商品描述信息
		addFoodItemDesc(itemId, desc);

	}

	private void addFoodItemDesc(Long itemId, String desc) {
		FoodItemDesc foodItemDesc = new FoodItemDesc();
		foodItemDesc.setItemId(itemId);
		foodItemDesc.setItemDesc(desc);
		foodItemDesc.setCreatedTime(new Date());
		foodItemDesc.setUpdatedTime(new Date());
		foodItemDescMapper.addFoodItemDesc(foodItemDesc);
	}


	@Override
	public List<FoodItem> findSaleInfos() {
		return foodItemMapper.findSaleInfos();
	}
	
	/**
 	 * 分页查询
 	 */
 	@Override
 	public EasyUiDate getItemList(int page, int rows) {
 		//总量
 		List<FoodItem> listAll = foodItemMapper.findAll();
 		
 		
 		//分页查询
 	     page = (page-1)*rows;
 		List<FoodItem> list = foodItemMapper.findAllDivide(page,rows);
 		 for(FoodItem fi:list){
 			 fi.setId(fi.getItemId());
 		 }
 		EasyUiDate result = new EasyUiDate();
 		result.setRows(list);
 		result.setTotal(listAll.size());
 		return result;
 		
 	}
  
 		/**
 		 * 根据id 数组  删除 对象
 		 */
	public void deleteById(Long[] ids) {
		foodItemMapper.deleteById(ids);
		
	}
	
	
	
    
	 /**
	  * 修改 商品对象
	  */
	public void updateItem(FoodItem foodItem) {
		foodItem.setUpdatedTime(new Date());
		foodItemMapper.updateItem(foodItem);
		
	}
	
	/**
	 * 商品  上 下 架 
	 */
	@Override
	public void updateStatus(Long[] ids, int status) {
		foodItemMapper.updateStatus(ids,status);
		
	}
	
}
