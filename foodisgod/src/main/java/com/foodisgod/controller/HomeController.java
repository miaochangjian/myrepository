package com.foodisgod.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foodisgod.pojo.FoodItem;
import com.foodisgod.pojo.FoodOrder;
import com.foodisgod.pojo.FoodOrderItem;
import com.foodisgod.pojo.FoodUser;
import com.foodisgod.service.FoodItemService;
import com.foodisgod.service.FoodOrderService;

@Controller
public class HomeController {
	
	@Autowired
	private FoodItemService foodItemService;
	@Autowired
	private FoodOrderService foodOrderService;
	
	
	//转向欢迎页面
		@RequestMapping("/home")
		public String home(Model model,String name,HttpSession session){
			session.setAttribute("cityName", name);
			List<FoodItem> foodList1 =foodItemService.findFoodByStatus(1);
			int i =1;
			
			FoodItem foodItem =foodItemService.findFoodById(1l);
			String image1 = foodItem.getImage();
			String[] split1 = image1.split(",");
			foodItem.setImage(split1[0]);
			Integer num = 1;
			model.addAttribute("foodItem", foodItem);
			for (FoodItem fi : foodList1) {
				String image = fi.getImage();
				String[] split = image.split(",");
				fi.setImage(split[0]);
				model.addAttribute("f"+i, fi);
				i++;
			}
			
			
			return "/user/home";
		}
	
	//转向搜索页面
	@RequestMapping("/search")
	public String forMore(@RequestParam(defaultValue="",required=false)Integer status,Model model,@RequestParam(defaultValue="",required=false)String index_none_header_sysc){
		List<FoodItem> foodList =new ArrayList<FoodItem>();
		if(index_none_header_sysc!=null&&!index_none_header_sysc.equals("")){
			foodList =foodItemService.findFoodBySimpleImg(index_none_header_sysc);
			
			System.out.println(foodList);
			for (FoodItem fi : foodList) {
				String image = fi.getImage();
				String[] split = image.split(",");
				fi.setImage(split[0]);
			}
			System.out.println(foodList);
			
			model.addAttribute("searchName", index_none_header_sysc);
			model.addAttribute("foodList", foodList);
			model.addAttribute("size", foodList.size() );
			return "/user/search";
			
		}
		
		if(status!=null){
			
			foodList =foodItemService.findFoodByStatus(status);
		
		System.out.println(foodList);
		for (FoodItem fi : foodList) {
			String image = fi.getImage();
			String[] split = image.split(",");
			fi.setImage(split[0]);
		}
		System.out.println(foodList);
		String searchName="";
		switch(status)
		{
		case 1:
			searchName="川湘菜" ;
			break;
		default:
			searchName="";
		}
		
		int size = foodList.size();
		
		model.addAttribute("searchName", searchName);
		model.addAttribute("foodList", foodList);
		model.addAttribute("size", size);
		
		//System.out.println("searchName"+searchName);
		return "/user/search";
		}
		return "/user/search";
		
	}
	/**
	 * 加入购物车功能，携带信息到cart.jsp页面
	 * @param model
	 * @param itemId
	 * @return
	 */
	@RequestMapping("/cart")
	public String cart(Model model,Long itemId){
		FoodItem foodItem =foodItemService.findFoodById(itemId);
		String image = foodItem.getImage();
		String[] split = image.split(",");
		foodItem.setImage(split[0]);
		Integer num = 1;
		model.addAttribute("foodItem", foodItem);
		model.addAttribute("num", num);
		return "/user/cart";
		
	}
	@RequestMapping("/pay")
	public String cart(Model model,Long itemId,Integer num,HttpSession httpSession){
		Object userObj = httpSession.getAttribute("foodUser");
		//加入登录页面时使用
		if(userObj==null){
			return "/user/toLogin";
		}
		
		FoodUser user =   (FoodUser) userObj;
		
		  
		/* //测试时使用
		FoodUser user =  new FoodUser();
		user.setUserId(11l);*/
		
		
		FoodItem foodItem =foodItemService.findFoodById(itemId);
		Long sum = foodItem.getPrice()*num;
		
		FoodOrder fo = new FoodOrder();
		FoodOrderItem foi = new FoodOrderItem();
		Random rand = new Random();
		Long id = (long) rand.nextInt((int)Math.pow(2, 31)-1);
		fo.setOrderId(id);
		fo.setUserId(user.getUserId());
		fo.setPayment(sum);
		//设定状态为未付款
		fo.setStatus(1);
		foi.setItemId(itemId);
		foi.setNum(num);
		foi.setPrice(foodItem.getPrice());
		foi.setOrderId(id);
		foi.setTitle(foodItem.getTitle());
		foi.setTotalFee(sum);
		foodOrderService.saveFoodOrder(fo,foi);
		
		model.addAttribute("id", id);
		model.addAttribute("price", sum);
		return "/user/pay";
		
	}
	
	
	@RequestMapping("/donation")
	public String donation(){
		
		return "/user/donation";
		
	}
	
	
	

}
