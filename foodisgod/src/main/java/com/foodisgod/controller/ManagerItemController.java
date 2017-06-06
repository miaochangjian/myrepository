package com.foodisgod.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.foodisgod.common.pojo.EasyUiDate;
import com.foodisgod.pojo.FoodItem;
import com.foodisgod.pojo.FoodManager;
import com.foodisgod.pojo.FoodResult;
import com.foodisgod.service.ManagerItemService;


@Controller
public class ManagerItemController {

	@Autowired
	private ManagerItemService managerItemService;

	// 进入面板
	@RequestMapping("/toIndex")
	public String toindex(HttpSession session,Model model) {
		FoodManager foodManager = (FoodManager) session.getAttribute("foodManager");
		if(foodManager==null){
			model.addAttribute("msg", "请先登录注册！");
			return "forward:/toManagerLogin";
		}
		return "/manager/index";
	}

	// 进入所有页面
	@RequestMapping("/item-list")
	public String showPage(String page,HttpSession session,Model model) {
		FoodManager foodManager = (FoodManager) session.getAttribute("foodManager");
		if(foodManager==null){
			model.addAttribute("msg", "请先登录注册！");
			return "forward:/toManagerLogin";
		}
		return "/manager/item-list";
	}

	// 展示所有列表
	@RequestMapping("/item/list")
	@ResponseBody // 返回JSON 的注解
	public EasyUiDate toitemlist(int page, int rows) { // page:1 rows:30 page
		
		// 当前页数 rows 每页的 条数
		EasyUiDate easyUidate = managerItemService.getItemList(page, rows);
		return easyUidate;
	}

	// 删除
	@RequestMapping("/rest/item/delete")
	@ResponseBody // 返回JSON 的注解
	public FoodResult delete(Long[] ids) {
		
		managerItemService.deleteById(ids);
		FoodResult foodResult = new FoodResult();
		foodResult.setStatus(200);
		return foodResult;
	}

	/**
	 * 
	 * @return 转跳修改框 页面
	 */
	@RequestMapping("/rest/page/item-edit")
	public String itemedit(HttpSession session,Model model) {
		FoodManager foodManager = (FoodManager) session.getAttribute("foodManager");
		if(foodManager==null){
			model.addAttribute("msg", "请先登录注册！");
			return "forward:/toManagerLogin";
		}
		return "/manager/item-edit";
	}

	/**
	 * 修改保存
	 * 
	 * @param foodItem
	 *            前台 返回的对象
	 * @return 返回前台 状态码
	 */
	@RequestMapping("/rest/item/update")
	@ResponseBody // 返回JSON 的注解
	public FoodResult itemupdate(FoodItem foodItem) {
		
		managerItemService.updateItem(foodItem);
		FoodResult result = new FoodResult();
		result.setStatus(200);
		return result;
	}

	// 图片上传
	@RequestMapping("/pic/upload")
	public void upload(String uploadFile) {
		
		System.out.println(uploadFile);
	}

	/**
	 * 商品下架
	 * 
	 * @param ids
	 *            id集合
	 * @return 状态码
	 */
	@RequestMapping("/rest/item/instock")
	@ResponseBody
	public FoodResult restiteminstock(Long[] ids) {
		
		int status = 2;
		managerItemService.updateStatus(ids, status);
		FoodResult result = new FoodResult();
		result.setStatus(200);
		return result;
	}

	/**
	 * 商品上架
	 * 
	 * @param ids
	 *            id集合
	 * @return 状态码
	 */
	@RequestMapping("/rest/item/reshelf")
	@ResponseBody
	public FoodResult restitemreshelf(Long[] ids) {
		
		int status = 1;
		managerItemService.updateStatus(ids, status);
		FoodResult result = new FoodResult();
		result.setStatus(200);
		return result;
	}

	/**
	 * 转到商品添加页面，并准备商品添加所需要的数据
	 * 
	 * @return
	 */
	@RequestMapping("/item-add")
	public String toItemAdd(Model model,HttpSession session) {
		FoodManager foodManager = (FoodManager) session.getAttribute("foodManager");
		if(foodManager==null){
			model.addAttribute("msg", "请先登录注册！");
			return "forward:/toManagerLogin";
		}

		return "/manager/item-add";
	}

	/**
	 * 保存添加的商品
	 * 
	 * @param item
	 * @param desc 商品描述
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/item/save")
	@ResponseBody
	public FoodResult addFoodItem(FoodItem item, String desc) {
		
		FoodResult foodResult = new FoodResult();
		managerItemService.addFoodItem(item, desc);
		foodResult.setStatus(200);
		return foodResult;
	}
    
	/**
	 * 转跳到销售榜单页面
	 * @param model 
	 * @return
	 */
	@RequestMapping("/item-sale-list")
	public String saleList(HttpSession session,Model model) {
		FoodManager foodManager = (FoodManager) session.getAttribute("foodManager");
		if(foodManager==null){
			model.addAttribute("msg", "请先登录注册！");
			return "forward:/toManagerLogin";
		}
		List<FoodItem> foodItemList = managerItemService.findSaleInfos();
		model.addAttribute("foodItemList", foodItemList);
		return "/manager/sale_list";
	}
	
}
