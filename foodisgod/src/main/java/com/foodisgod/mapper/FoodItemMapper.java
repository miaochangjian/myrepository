package com.foodisgod.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.foodisgod.pojo.FoodItem;

public interface FoodItemMapper {

	List<FoodItem> findFoodByStatus(Integer status);

	List<FoodItem> findFoodBySimpleImg(String img);

	FoodItem findFoodById(Long itemId);
	
	
	

    
    int updateByPrimaryKey(FoodItem record);

	
	
	
  
    
	/**
     * 添加商品
     * @param item
     */
	void addFoodItem(FoodItem item);
    
	/**
     * 查询商品销售信息
     * @return
     */
	List<FoodItem> findSaleInfos();
	
	 /**
     * 查询所有 商品
     * @return
     */
	List<FoodItem> findAll();
    
	/**
	 *   分页查询
	 * @param page 当前 页数 
	 * @param rows  当前页 的 对象的个数
	 * @return  商品对象集合
	 */
	List<FoodItem> findAllDivide(@Param("page")int page,@Param("rows") int rows);
    
	/**
	 *  根据 itemid  删除
	 * @param ids itemid集合
	 */
	void deleteById(Long[] ids);
   /**
    *  修改 商品对象
    * @param foodItem  前台获取的对象
    */
	void updateItem(FoodItem foodItem);
 
	/**
	 *  商品 上下架
	 * @param ids id数组
	 * @param status 上 下 架 状态值
	 */
    void updateStatus(@Param("ids")Long[] ids,@Param("status") int status);
	
}