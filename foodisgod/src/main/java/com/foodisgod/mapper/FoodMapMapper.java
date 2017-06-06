package com.foodisgod.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.foodisgod.pojo.FoodMap;
import com.foodisgod.pojo.FoodMapExample;

public interface FoodMapMapper {
	@Insert("insert into food_map (name,value) values(#{city},#{value})")
	void saveData(@Param("city") String city, @Param("value") Integer value);
	@Select("select name,value from food_map")
	List<Map> findAll();
    int countByExample(FoodMapExample example);

    int deleteByExample(FoodMapExample example);

    int deleteByPrimaryKey(Long mapId);

    int insert(FoodMap record);

    int insertSelective(FoodMap record);

    List<FoodMap> selectByExample(FoodMapExample example);

    FoodMap selectByPrimaryKey(Long mapId);

    int updateByExampleSelective(@Param("record") FoodMap record, @Param("example") FoodMapExample example);

    int updateByExample(@Param("record") FoodMap record, @Param("example") FoodMapExample example);

    int updateByPrimaryKeySelective(FoodMap record);

    int updateByPrimaryKey(FoodMap record);
}