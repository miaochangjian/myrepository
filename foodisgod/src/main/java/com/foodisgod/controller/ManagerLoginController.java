package com.foodisgod.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foodisgod.pojo.FoodManager;
import com.foodisgod.service.ManagerService;
import com.foodisgod.tool.MD5Hash;

/**
 * 处理商家的登录注册以及店铺的注册管理等请求
 * 
 * @author bigjsd
 *
 */
@Controller
public class ManagerLoginController {
	@Autowired
	private ManagerService managerService;

	@Autowired
	// private FoodManager foodManager;

	// 转向manager注册页面
	@RequestMapping("/toManagerRegister")
	public String toManagerRegister() {
		return "/manager/manager_register";
	}

	// 转向manager登录页面
	@RequestMapping("/toManagerLogin")
	public String toManagerLogin() {
		return "/manager/manager_login";
	}

	@RequestMapping("/toshopManager")
	public String toShopManager() {
		return "/manager/shop_manage";
	}

	// 处理manager注册请求
	@RequestMapping("/foodManagerRegister")
	public String registerFoodUser(FoodManager foodManager, Model model, HttpSession httpSession) {
		managerService.saveFoodManager(foodManager);
		foodManager = managerService.findManagerByName(foodManager.getManagerName());
		httpSession.setAttribute("foodManager", foodManager);
		// 转向店铺管理
		return "/manager/shop_manage";
	}

	// 处理manager登录请求
	@RequestMapping("/foodManagerLogin")
	public String foodManagerLogin(String managerName, String password, HttpServletRequest request,
			HttpSession httpSession) throws IOException {

		FoodManager foodManager = managerService.findManagerByName(managerName);
		if(foodManager!=null){//如果为空则用户名不存在
//			为提交的密码加密
			String md5password = MD5Hash.getMd5HashPasswod(password, foodManager.getManagerName());
			if (md5password.equals(foodManager.getPassword())) {
				// System.out.println(md5password);
				httpSession.setAttribute("foodManager", foodManager);
				return "forward:/toIndex";//登录成功转向的页面
			} else {
				request.setAttribute("msg", "用户名或密码错误");
				request.setAttribute("managerName", managerName);
				return "/manager/manager_login";//登录失败，
			}
		}else{
			request.setAttribute("msg", "用户名或密码错误");
			request.setAttribute("managerName", managerName);
			return "/manager/manager_login";
		}

		/*
		 * // 以shiro的方式登录 // 形成用户名和密码令牌 UsernamePasswordToken token = new
		 * UsernamePasswordToken(managerName, password); // 获取一个subject对象
		 * 就是一个user Subject subject = SecurityUtils.getSubject(); try {
		 * subject.login(token);// 表示用户要进行登录认证 // 获取真实的用户信息 FoodManager manager
		 * = (FoodManager) subject.getPrincipal(); // 获取session将用户信息保存到session中
		 * subject.getSession().setAttribute("managerSession", manager); //
		 * 转向商家管理页面 return "正确"; } catch (AuthenticationException e) {
		 * request.setAttribute("msg", "用户名或密码错误");
		 * 
		 * e.printStackTrace();// 目的如果报异常，，可以通过控制台展现
		 * 
		 * return "niuniu"; }
		 */

	}

	// 退出
	@RequestMapping("/managerLogout")
	public String managerLogout(HttpSession httpSession) {
		httpSession.removeAttribute("managerSession");
		// 重定向到欢迎页面
		return "redirect:/home";
	}

}
