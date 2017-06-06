
//显示注册框
function showRegisterForm() {
	$('.loginBox').fadeOut('fast', function() {
		$('.registerBox').fadeIn('fast');
		$('.login-footer').fadeOut('fast', function() {
			$('.register-footer').fadeIn('fast');
		});
		$('.modal-title').val();
		$('.registerBox #email').val("");
		$('.registerBox #password').val("");
		$('.registerBox #phone').val("");
		$('.modal-title').html('欢迎注册');
	});
	$('.error').removeClass('alert alert-danger').html('');

}
// 显示登录框
function showLoginForm() {
	$('#loginModal .registerBox').fadeOut('fast', function() {
		$('.loginBox').fadeIn('fast');
		$('.register-footer').fadeOut('fast', function() {
			$('.login-footer').fadeIn('fast');
		});
		$('.login #username').val("");
		$('.login #password').val("");

		$('.modal-title').html('请登录');
	});
	$('.error').removeClass('alert alert-danger');
}

function openLoginModal() {
	showLoginForm();
	setTimeout(function() {
		$('#loginModal').modal('show');
	}, 230);

}
function openRegisterModal() {
	showRegisterForm();
	setTimeout(function() {
		$('#loginModal').modal('show');
	}, 230);

}

/*function loginAjax() {
	// 回调函数的返回值是1时登录成功
	// 连接数据库后放开\
	var username = $('input[name="username"]').val();
	var password = $('input[name="password"]').val();
	$.post("/foodUserLogin", {
		username : username,
		password : password
	}, function(data) {
		alert(data);
		if (data == "1") {// 登录成功
			alert(555);
			window.location.href("/toManagerRegister");
		} else {
			alert(666);
			shakeModal();
		}
	});

	 Simulate error message from the server 
	// shakeModal();
}*/

function shakeModal() {
	$('#loginModal .modal-dialog').addClass('shake');
	$('.error').addClass('alert alert-danger').html("用户名或密码错误");
	$('input[type="password"]').val('');

	setTimeout(function() {
		$('#loginModal .modal-dialog').removeClass('shake');
	}, 1000);
	setTimeout(function() {
		$('.form-control').addClass('alert alert-danger').html("请重新输入");
	}, 2000);

	$('.form-control').focus(function() {
		$('.error').addClass('alert alert-danger').html("");
		$('.error').removeClass('alert alert-danger');
	});
}

function checkForm() {

	if (!checkNull()) {
		
		$('#loginModal .modal-dialog').addClass('shake');
		setTimeout(function() {
			$('#loginModal .modal-dialog').removeClass('shake');
		}, 1000);
		$('.error').addClass('alert alert-danger').html(
				"为了您能更好的享受服务，请将完整填写以下信息！");
		$('.form-control').focus(function() {
			$('.error').addClass('alert alert-danger').html("");
			$('.error').removeClass('alert alert-danger');
		});
	}
//	最后放开
	if (!checkPhone()) {
		$('#loginModal .modal-dialog').addClass('shake');
		setTimeout(function() {
			$('#loginModal .modal-dialog').removeClass('shake');
		}, 1000);
		$('.error').addClass('alert alert-danger').html(
				"请输入正确的手机号码，以保证我们你能联系到您！");
		$('.form-control').focus(function() {
			$('.error').addClass('alert alert-danger').html("");
			$('.error').removeClass('alert alert-danger');
		});
	}

}

function checkNull() {
	var val1 = $('#username2').val();
	var val2 = $('#phone2').val();
	var val3 = $('#password21').val();
	var val4 = $('#password22').val();
	if ($.trim(val1) == "") {
		
		return false;
	} else if ($.trim(val2) == "") {
		
		return false;
	} else if ($.trim(val3) == "") {
		
		return false;
	} else if ($.trim(val4) == "") {
		
		return false;
	} else {
		return true;
	}
}
//最后放开
function checkPhone() {
	var val = $('#phone2').val();
	var reg = /^1\d{10}$/;
	if (reg.test(val)) {
		return true;
	} else {
		return false;
	}
}
