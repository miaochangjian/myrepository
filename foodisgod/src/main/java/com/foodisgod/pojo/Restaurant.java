package com.foodisgod.pojo;

import java.util.Date;

public class Restaurant {
	private Long RestaurantId;
	private FoodManager foodManager;
	private Long managerId;
	private Long category;
	private String name;
	private String address;
	private String descrip;
	private Date createdTime;
	private Date updatedTime;
	public Long getRestaurantId() {
		return RestaurantId;
	}
	public void setRestaurantId(Long restaurantId) {
		RestaurantId = restaurantId;
	}
	public FoodManager getFoodManager() {
		return foodManager;
	}
	public void setFoodManager(FoodManager foodManager) {
		this.foodManager = foodManager;
	}
	public Long getManagerId() {
		return managerId;
	}
	public void setManagerId(Long managerId) {
		this.managerId = managerId;
	}
	public Long getCategory() {
		return category;
	}
	public void setCategory(Long category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDescrip() {
		return descrip;
	}
	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	public Date getUpdatedTime() {
		return updatedTime;
	}
	public void setUpdatedTime(Date updatedTime) {
		this.updatedTime = updatedTime;
	}
	@Override
	public String toString() {
		return "Restaurant [RestaurantId=" + RestaurantId + ", foodManager=" + foodManager + ", managerId=" + managerId
				+ ", category=" + category + ", name=" + name + ", address=" + address + ", descrip=" + descrip
				+ ", createdTime=" + createdTime + ", updatedTime=" + updatedTime + "]";
	}
	

}
