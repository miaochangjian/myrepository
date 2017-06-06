package com.foodisgod.controller;

import java.io.FileInputStream;
import java.util.Properties;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foodisgod.tool.PaymentUtil;
@Controller
public class PayController {
	private static Properties prop=null;
	static{
		prop = new Properties();
		String path= PayController.class.getClassLoader().
				getResource("merchantInfo.properties").getPath();
		try {
			prop.load(new FileInputStream(path));
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	@RequestMapping("topay")
	public String topay(){
		return "/user/pay";
	}
	@RequestMapping("toconfirm")
	public String toconfirm(Model model, String orderid, String pd_FrpId){
		//1、接收参数
		String oid=orderid;
		
		//2、准备需要的参数
		String p0_Cmd = "Buy";
		String p1_MerId = prop.getProperty("p1_MerId");
		String p2_Order = oid;
		/*OrderService orderService = BasicFactory.getFactory().
				getInstance(OrderService.class);*/
		String p3_Amt ="0.01";//支付金额单位为元   测试时使用该值
		//正式环境上部署程序之前改为从数据库中查询
		//String p3_Amt = orderService.findOrderById(oid).getMoney()+"";
		String p4_Cur = "CNY";
		String p5_Pid = "";
		String p6_Pcat ="";
		String p7_Pdesc ="";
		String p8_Url = prop.getProperty("responseURL");
		String p9_SAF ="";
		String pa_MP = "";
		String pr_NeedResponse = "1";
		String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order,
				p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF,
				pa_MP, pd_FrpId, pr_NeedResponse, prop.getProperty("keyValue"));
		//3、将参数保存到model作用域
		model.addAttribute("pd_FrpId", pd_FrpId);
		model.addAttribute("p0_Cmd", p0_Cmd);
		model.addAttribute("p1_MerId", p1_MerId);
		model.addAttribute("p2_Order", p2_Order);
		model.addAttribute("p3_Amt", p3_Amt);
		model.addAttribute("p4_Cur", p4_Cur);
		model.addAttribute("p5_Pid", p5_Pid);
		model.addAttribute("p6_Pcat", p6_Pcat);
		model.addAttribute("p7_Pdesc", p7_Pdesc);
		model.addAttribute("p8_Url", p8_Url);
		model.addAttribute("p9_SAF", p9_SAF);
		model.addAttribute("pa_MP", pa_MP);
		model.addAttribute("pr_NeedResponse", pr_NeedResponse);
		model.addAttribute("hmac", hmac);
		//4转发
		
		return "/user/confirm";
	}
}
