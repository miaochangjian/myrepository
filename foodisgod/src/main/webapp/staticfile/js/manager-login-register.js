var formObj = {
	checkForm : function() {
		var flag = true;
//		var msg = null;
		// 注册表单校验
		// >>非空校验
		flag = this.checkNull("managerName", "用户名不能为空") && flag;
		flag = this.checkNull("password", "密码不能为空") && flag;
		flag = this.checkNull("password2", "确认密码不能为空") && flag;
		flag = this.checkNull("phone", "手机号不能为空") && flag;
		flag = this.checkNull("email", "邮箱不能为空") && flag;
		// >>两次密码是否一致
		flag = this.checkPassword("password", "两次密码不一致") && flag;
		// >>校验邮箱格式
		flag = this.checkEmail("email", "邮箱格式不正确") && flag;
		flag = this.checkPhone("phone", "手机号格式不正确") && flag;
		
		return flag;
	},
	// 检查邮箱格式是否正确
	checkEmail : function(name, msg) {
		var email = $("input[name=" + name + "]").val();

//		this.checkNull(name, "邮箱不能为空");

		if ($.trim(email) != "") {
			var reg = /^\w+@\w+(\.\w+)+$/;
			if (!reg.test(email)) {
				alert("邮箱格式不正确");
//				msg = "邮箱格式不正确11111";
				return false;
			}
		}
		return true;
	},
	// 检查手机号是否正确
	checkPhone : function(name, msg) {
		var phone = $("input[name=" + name + "]").val();

		if ($.trim(phone) != "") {
			var reg = /^1[3|4|5|7|8]\d{9}$/;
			if (!reg.test(phone)) {
				alert("手机号格式不正确");
				return false;
			}
		}
		return true;
	},
	// 检查两次密码是否一致
	checkPassword : function(name, msg) {
		var psw1 = $("input[name=" + name + "]").val();
		var psw2 = $("input[name=" + name + "2]").val();

		this.checkNull(name + "2", "确认密码不能为空");
		if ($.trim(psw1) != "" && $.trim(psw2) != "") {
			if (psw1 != psw2) {
				alert("两次密码不一致");
				return false;
			}
		}
		return true;
	},
	// 检查输入项是否为空
	checkNull : function(name, msg) {
		var value = $("input[name=" + name + "]").val();
		if ($.trim(value) == "") {
			alert(msg);
			return false;
		}
		return true;
	},

	// 检查邮箱格式是否正确
	checkIdNum : function(name, msg) {
		var idNum = $("input[name=" + name + "]").val();

		this.checkNull(name, "身份证号不能为空");

		if ($.trim(idNum) != "") {
			var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
			if (!reg.test(idNum)) {
				alert("身份证号码格式不正确");
				return false;
			}
		}
		return true;
	},

};

/*// 当整个页面加载完毕立即触发
$().ready(function() {
	// 利用ajacx实现用户名是否存在的校验
	$("input[name=username]").blur(function() {
		var username = $("input[name=username]").val();
		// 检查用户名是否为空
		if (!formObj.checkNull("username", "用户名不能为空")) {
			return;
		}
		// 校验用户名是否存在
		// 方式一：jquery--load()
		$("#username_msg").load("${ app }/AjaxCheckUsernameServlet", {
			username : username
		});
	});
});*/