package com.foodisgod.controller;

import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.foodisgod.pojo.FoodItem;
import com.foodisgod.pojo.RestaurantWithBLOBs;
import com.foodisgod.service.MapService;

@Controller
public class MapController {
	@Autowired
	private MapService mapService;
	private static Properties prop = new Properties();
	private static Map<String,Object> map = new HashMap<String,Object>();
	static {
		map.put("title","火宴山自助火锅");
		map.put("sellPoint","仅售70元！价值78元的自助下午餐/夜宵 2选1");
		map.put("price",70);
		map.put("price2",109);
		map.put("amount",333021);
		map.put("score","3.3");
		map.put("account",34747);
		map.put("addr","朝阳区朝阳北路107号罗马嘉园会所（朝阳大悦城对面）");
		
		try {
			ClassLoader classloader = MapController.class.getClassLoader();
			String path = classloader.getResource("map.properties").getPath();
			
			File file = new File(path);
		
			prop.load(new FileInputStream(file));
		
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} 
	}
	
	//前往首页地图
	@RequestMapping("tobigmap")
	public String Map(Model model) throws JsonProcessingException{
		List<Map> list = mapService.findAll();
		
		String data = new ObjectMapper().writeValueAsString(list);
		String[] map = {"china","china"};
		model.addAttribute("map", map);
		model.addAttribute("data",data);
		return "/user/map";
	}
	//前往二级地图
	@RequestMapping("toMap")
	public String toMap(Model model,String name) throws JsonProcessingException{
		List<Map> list = mapService.findAll();
		String data = new ObjectMapper().writeValueAsString(list);
		String city = prop.getProperty(name);
		String[] map = {name,city};
		model.addAttribute("map",map);
		model.addAttribute("data",data);
		return "/user/map";
	}
	//测试使用
	@RequestMapping("todataxxx")
	public String insertData(){
		Random random = new Random();
		Set<String> stringPropertyNames = prop.stringPropertyNames();
		//System.out.println(stringPropertyNames);
		Iterator<String> iterator = stringPropertyNames.iterator();
		while(iterator.hasNext()){
			String city = iterator.next();
			System.out.println(city);
			Integer value = random.nextInt(2500);
			mapService.saveData(city,value);
		}
		return "redirect:tologin";
	}
	//前往详情页面
	@RequestMapping("todetails")
	public String toBaiDu(Model model,String name,HttpSession session){
		session.setAttribute("cityName", name);
		RestaurantWithBLOBs restaurant= mapService.selectByPrimaryKey(1);
		FoodItem foodItem = mapService.findFoodById(1);
		String[] imgs = foodItem.getImage().split(",");
		String image = imgs[0];
		String[] img = new String[imgs.length-1];
		for (int i=1; i<imgs.length ; i++) {
			img[i-1] = imgs[i];
		}
		System.out.println(restaurant);
		System.out.println(foodItem);
		System.out.println(img[1]);
		model.addAttribute("restaurant", restaurant);
		model.addAttribute("foodItem", foodItem);
		model.addAttribute("image",image);
		model.addAttribute("img",img);
		model.addAttribute("map", map);
		return "/user/details";
	}
	//定位并跳转至首页
	@RequestMapping("toposition")
	public String toPosition(){
		return "/user/position";
	}
	/*@RequestMapping("towelcome")
	public String towelcome(){
		return "/user/welcome";
	}*/
	
}
