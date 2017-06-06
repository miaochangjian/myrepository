package com.foodisgod.mapper;

import com.foodisgod.pojo.Restaurant;
import com.foodisgod.pojo.RestaurantExample;
import com.foodisgod.pojo.RestaurantWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RestaurantMapper {

	void saveRestaurant(Restaurant restaurant);

	void deleteRestaurant(Long restaurantId);

	List<Restaurant> findAllByManagerId(Long managerId);

	Restaurant findOne(Long restaurantId);

	void updateRestaurant(Restaurant restaurant);


	   


   
    int countByExample(RestaurantExample example);

    int deleteByExample(RestaurantExample example);

    int deleteByPrimaryKey(Long restaurantId);

    int insert(RestaurantWithBLOBs record);

    int insertSelective(RestaurantWithBLOBs record);

    List<RestaurantWithBLOBs> selectByExampleWithBLOBs(RestaurantExample example);

    List<Restaurant> selectByExample(RestaurantExample example);

    RestaurantWithBLOBs selectByPrimaryKey(Long restaurantId);

    int updateByExampleSelective(@Param("record") RestaurantWithBLOBs record, @Param("example") RestaurantExample example);

    int updateByExampleWithBLOBs(@Param("record") RestaurantWithBLOBs record, @Param("example") RestaurantExample example);

    int updateByExample(@Param("record") Restaurant record, @Param("example") RestaurantExample example);

    int updateByPrimaryKeySelective(RestaurantWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(RestaurantWithBLOBs record);

    int updateByPrimaryKey(Restaurant record);
}