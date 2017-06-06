package com.foodisgod.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foodisgod.pojo.FoodManager;
import com.foodisgod.pojo.Restaurant;
import com.foodisgod.service.RestaurantService;


/**
 * 店铺的注册和更新
 * 
 * @author bigjsd
 *
 */
@Controller
public class RestaurantController {
	@Autowired
	private RestaurantService restaurantService;

	// 注册后保存店铺
	@RequestMapping("/saveRestaurant")
	public String saveRestaurant(Restaurant restaurant, HttpSession httpSession) {
		FoodManager foodManager = (FoodManager) httpSession.getAttribute("foodManager");

		// ！！！！！记得删除
		// System.out.println(foodManager.getManagerId());
		restaurantService.saveRestaurant(restaurant, foodManager);
		httpSession.setAttribute("restaurant", restaurant);
		// !!!!!添加店铺完成转入的地址
		return "redirect:/toIndex";
	}

	@RequestMapping("restaurantList")
	public String findRestaurantList(Model model, HttpSession httpSession) {
		Long managerId = ((FoodManager) httpSession.getAttribute("foodManager")).getManagerId();

		List<Restaurant> restaurantList = restaurantService.findAllByManagerId(managerId);
		model.addAttribute("restaurantList", restaurantList);
		// 跳转到部门列表页面
		return "redirect:/toIndex";
	}

	// 删除店铺
	@RequestMapping("deleteRestaurant")
	public String deleteRestaurant(Model model, Long restaurantId) {
		restaurantService.deleteRestaurant(restaurantId);
		return "redirect:/toIndex";
	}

	// 更新店铺转换页面，携带要改的信息,用于回显
	@RequestMapping("toUpdateRestaurant")
	public String ToupdateRestaurant(Model model, Long restaurantId) {
		Restaurant restaurant = restaurantService.findOne(restaurantId);
		model.addAttribute("restaurant", restaurant);
		return "redirect:/toIndex";
	}

	@RequestMapping("updateRestaurant")
	public String updateRestaurant(Restaurant restaurant) {
		restaurantService.updateRestaurant(restaurant);
		return "redirect:/toIndex";
	}

}
