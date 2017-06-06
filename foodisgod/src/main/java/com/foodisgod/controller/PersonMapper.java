package com.foodisgod.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonMapper {
	@RequestMapping("toindex")
	public String toindex(){
		return "/user/person/index";
	}
	@RequestMapping("index")
	public String index(){
		return "/user/person/index";
	}
	@RequestMapping("information")
	public String toinformation(){
		return "/user/person/information";
	}
	@RequestMapping("safety")
	public String tosafety(){
		return "/user/person/safety";
	}
	@RequestMapping("order")
	public String toorder(){
		return "/user/person/order";
	}
	@RequestMapping("change")
	public String tochange(){
		return "/user/person/change";
	}
	@RequestMapping("coupon")
	public String tocoupon(){
		return "/user/person/coupon";
	}
	@RequestMapping("bonus")
	public String tobonus(){
		return "/user/person/bonus";
	}
	@RequestMapping("bill")
	public String tobill(){
		return "/user/person/bill";
	}
	@RequestMapping("collection")
	public String tocollection(){
		return "/user/person/collection";
	}
	@RequestMapping("foot")
	public String tofoot(){
		return "/user/person/foot";
	}
	@RequestMapping("comment")
	public String tocomment(){
		return "/user/person/comment";
	}
	@RequestMapping("news")
	public String tonews(){
		return "/user/person/news";
	}
	
	
}
