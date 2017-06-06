package com.foodisgod.controller;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foodisgod.pojo.FoodUser;
import com.foodisgod.service.UserService;

@Controller
public class UserLoginRegisterController {
	@Autowired
	private UserService userService;
	// 转向登录页面
		@RequestMapping("/toUserLogin")
		public String home() {
			return "/user/user_login_register";
		}
	@RequestMapping("/foodUserRegister")
	public String registerFoodUser(FoodUser foodUser) {
		userService.saveFoodUser(foodUser);
		return "/user/user_login_register";
	}

	@RequestMapping("/foodUserLogin")
	public String userLogin(String username, String password,HttpSession httpSession,HttpServletRequest request)
			throws IOException {
		// 以shiro的方式登录
		// 形成用户名和密码令牌
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		// 获取一个subject对象 就是一个user
		Subject subject = SecurityUtils.getSubject();
		try {
			subject.login(token);// 表示用户要进行登录认证
			// 获取真实的用户信息
			FoodUser foodUser = (FoodUser) subject.getPrincipal();
			// 获取session将用户信息保存到session中
			subject.getSession().setAttribute("foodUser", foodUser);
			// response.getWriter().write("1");
			// 跳转到首页
			return "redirect:/home";
		} catch (AuthenticationException e) {
			e.printStackTrace();// 目的如果报异常，，可以通过控制台展现
			// response.getWriter().write("-1");
			request.setAttribute("msg", "用户名或密码错误，请重新登录");
			return "/user/user_login_register";
		}

		// System.out.println(username + password);
		// FoodUser foodUser = userService.findOneByUsername(username);
		// System.out.println(foodUser);
		// // String md5password =
		// // MD5Hash.getMd5HashPasswod(foodUser.getPassword(),
		// // foodUser.getUsername());
		// if (password.equals(foodUser.getPassword())) {
		// response.getWriter().write("1");
		// // System.out.println("登录成功");
		// } else {
		// response.getWriter().write("-1");
		// }

	}

	// 退出
	@RequestMapping("/userlogout")
	public String logout(HttpSession httpSession) {
		httpSession.removeAttribute("foodUser");
		// 重定向到欢迎页面
		return "redirect:/home";
	}

}
