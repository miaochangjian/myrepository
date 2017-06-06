package com.foodisgod.shiro;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

import com.foodisgod.tool.MD5Hash;

public class AuthCredential extends SimpleCredentialsMatcher {

	// 通过这个类作加密处理
	@Override
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		UsernamePasswordToken logintoken = (UsernamePasswordToken) token;
		String username = logintoken.getUsername();
		char[] password = logintoken.getPassword();
		// 生成加密后的密码
		String md5Password = MD5Hash.getMd5HashPasswod(String.valueOf(password), username);
		// 将加密后的密码存入token中
		logintoken.setPassword(md5Password.toCharArray());
		// TODO Auto-generated method stub
		return super.doCredentialsMatch(logintoken, info);
	}

}
