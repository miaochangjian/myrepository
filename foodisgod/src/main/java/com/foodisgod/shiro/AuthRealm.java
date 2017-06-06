package com.foodisgod.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.foodisgod.pojo.FoodUser;
import com.foodisgod.service.UserService;

public class AuthRealm extends AuthorizingRealm {

	@Autowired
	private UserService userService;

	/*
	 * //权限认证
	 * 
	 * @Override protected AuthorizationInfo
	 * doGetAuthorizationInfo(PrincipalCollection principals) {
	 * 
	 * FoodUser foodUser = (FoodUser) SecurityUtils.getSubject().getPrincipal();
	 * 
	 * //准备用户的真实的模块信息 List<String> moduleList =
	 * userService.findModuleListByUserId(foodUser.getUserId());
	 * 
	 * //权限认证的对象 SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
	 * 
	 * //将用户的权限信息 提交给Shiro安全管理器 info.addStringPermissions(moduleList); return
	 * info; }
	 */

	// 登录认证
	// 通过自定义的realm将用户真实的信息返给安全管理器
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// 将token进行格式转化
		//实际上这个authcToken是从LoginController里面subject.login(token)传过来的
		UsernamePasswordToken loginToken = (UsernamePasswordToken) token;
		String username = loginToken.getUsername();
		// 根据用户名查询用户的真实信息
		FoodUser foodUser = userService.findFoodUserByUsername(username);
		// principal 真实的用户对象
		// credentials 真实的密码
		AuthenticationInfo info = new SimpleAuthenticationInfo(foodUser, foodUser.getPassword(), this.getName());

		return info; // 通过info对象返回给安全管理器
	}

	// 权限认证
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		// TODO Auto-generated method stub
		return null;
	}

}
