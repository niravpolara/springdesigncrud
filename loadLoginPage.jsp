
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>LOAN HISTORY MODULE</title>

<!-- ------------------------------------------------------meta -->


<!-- ------------------------------------------------------meta -->
<!-- <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<!-- ------------------------------------------------------css -->

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/ndmchealth.css">


<!-- ------------------------------------------------------/css -->

<!-- ------------------------------------------------------js -->



<!-- ------------------------------------------------------/js -->
<script type="text/javascript">
	/*  function checkpage() {
	 alert("${sessionScope.sessionForHome}"+"this is ");
	 if("${sessionScope.sessionForHome}" != null)
	 {
	 window.location.replace("../login/loadDashboard.htm");
	 // 			 document.homeForm.action = "../login/loadDashboard.htm";
	 // 			document.homeForm.submit();
	 }
	 }  */
</script>
</head>
<body>

	<form:form method="Post"  name="extraQuaServiceName" id="extraQuaServiceId" modelAttribute="generalDTO">
		<div id="fixed_login_page" class="">
			<div class="container-fluid">
				<div class="row">
					<!-- -------------------------------------------------------------------------------------------------------------------------------start -->

					<!-- <a class="login_back" href="../front/loadindexhome.htm"><i
						class="fa fa-angle-double-left" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Back</a> -->

					<!-- ---------------------------------------------------------------------------------------------------------------------------login-->

					<div id="health_login" class="limiter">
						<div class="container-login100">
							<div class="wrap-login100">

								<form class="login100-form ">
									<div class="logo">
										<img class="img-responsive" style="max-width: 120px;"
											src="../images/ndmclogo.png">
									</div>
									<span class="login100-form-title"> <i
										class="zmdi zmdi-font"></i>
									</span>

									<div class="wrap-input100 validate-input"
										data-validate="Enter Username">
										<input class="input100" type="text" name="customermaster.user_id"
											id="userName" autocomplete="off"> <span
											class="focus-input100" data-placeholder="Username"></span>
									</div>

									<div class="wrap-input100 validate-input"
										data-validate="Enter password">
										<span class="btn-show-pass"> <i class="fa fa-eye"></i>
										</span> <input class="input100" type="password" name="customermaster.password"
											id="password" autocomplete="off"> <span
											class="focus-input100" data-placeholder="Password"></span>
									</div>

									<div class="wrap-input100 validate-input pull-left capcha"
										data-validate="Enter captcha">
										<input class="input100" type="text" name="capcha" id="capcha">
										<span class="focus-input100" data-placeholder="Captcha"></span>
									</div>
									<div class="capcha dynamic">
										<label id="randomfield" contenteditable="false"></label>
										<div>
											<i class="fa fa-refresh" onclick="getCaptcha();"
												aria-hidden="true"></i>
										</div>
									</div>
									<br />
									<!-- <label class="radio-inline"> <input
										type="radio" name="loginLang" checked="checked" value="1"
										id="loginLangEng">English
									</label> <label class="radio-inline"> <input type="radio"
										name="loginLang" value="3" id="loginLangKnd">Hindi
									</label> -->


									<div class="container-login100-form-btn">
										<div class="wrap-login100-form-btn">
											<div class="login100-form-bgbtn"></div>
											<button class="login100-form-btn" onclick="loginCheck();">
												Login</button>
										</div>
									</div>
									<div class="container-login100-form-btn">
										<div class="wrap-login100-form-btn">
											<div class="login100-form-bgbtn"></div>
											<button class="login100-form-btn" onclick="resetFormData();">Reset</button>
										</div>
									</div>

									<div class="text-center">
										<br />
										<!-- <span
											class="txt1"> </span><a class="txt2"
											style="cursor: pointer;" onclick="openForgotPassword();">Forgot Password?</a><br /> -->
										<span class="txt1"></span><a
											href="loadaddCreateUser.htm" class="txt2"
											style="cursor: pointer;">New User Registration</a>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- ---------------------------------------------------------------------------------------------------------------------------/login-->
				</div>
			</div>

		</div>
	</form:form>


</body>
<script type="text/javascript">
	function loginCheck() {
		var flag = true;
		var langId;
		var username = document.getElementById("userName").value;
		var password = document.getElementById("password").value;
		var image = document.getElementById("randomfield").innerHTML;
		var capcha = document.getElementById("capcha").value;

		/* if(document.getElementById("loginLangEng").checked){
			langId = document.getElementById("loginLangEng").value;			
		}
		if(document.getElementById("loginLangKnd").checked){
			langId = document.getElementById("loginLangKnd").value;			
		} */
		if (username == "" || username == null) {
			flag = false;
		}
		if (password == "" || password == null) {
			flag = false;
		}
		if (capcha == "" || capcha == null) {
			flag = false;
		}
		/* if(langId == "" || langId == null){ 
			flag=false;
		} */
		if (capcha != "" && capcha != image) {
			alert("Incorrect Capcha");
			document.getElementById("capcha").value = '';
			flag = false;
			document.getElementById("password").value = '';
		}
		if (flag) {
			document.extraQuaServiceName.action = "verifyLogin.htm";
			document.extraQuaServiceName.submit();
		}
	}
	function resetFormData() {
		document.getElementById("userName").value = "";
		document.getElementById("password").value = "";
		document.getElementById("capcha").value = "";

	}
	function openForgotPassword() {
		document.homeForm.action = "../login/openForgetPasswordForm.htm";
		document.homeForm.submit();
	}
	function loadERegistrationMainPage() {
		document.homeForm.action = "../login/loadNewUserRegPage.htm";
		document.homeForm.submit();
	}
	function getCaptcha() {
		/* var chars = "0Aa1Bb2Cc3Dd4Ee5Ff6Gg7Hh8Ii9Jj0Kk1Ll2Mm3Nn4Oo5Pp6Qq7Rr8Ss9Tt0Uu1Vv2Ww3Xx4Yy5Zz"; */
		var chars = "0123456789";
		var string_length = 5;
		var captchastring = '';
		for ( var i = 0; i < string_length; i++) {
			var rnum = Math.floor(Math.random() * chars.length);
			captchastring += chars.substring(rnum, rnum + 1);
		}
		document.getElementById("randomfield").innerHTML = captchastring;
	}
	$(document).ready(function() {
		getCaptcha();
	});
</script>

<!-- =====================================================================================================================loginscript pankita -->
<script>
	(function($) {
		"use strict";

		/*==================================================================
		[ Focus input ]*/
		$('.input100').each(function() {
			$(this).on('blur', function() {
				if ($(this).val().trim() != "") {
					$(this).addClass('has-val');
				} else {
					$(this).removeClass('has-val');
				}
			});
		});

		/*==================================================================
		[ Validate ]*/
		var input = $('.validate-input .input100');

		$('.validate-form').on('submit', function() {
			var check = true;

			for ( var i = 0; i < input.length; i++) {
				if (validate(input[i]) == false) {
					showValidate(input[i]);
					check = false;
				}
			}
			return check;
		});

		$('.validate-form .input100').each(function() {
			$(this).focus(function() {
				hideValidate(this);
			});
		});

		function validate(input) {
			if ($(input).attr('type') == 'email'
					|| $(input).attr('name') == 'email') {
				/* if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
				    return false;
				} */
			} else {
				if ($(input).val().trim() == '') {
					return false;
				}
			}
		}

		function showValidate(input) {
			var thisAlert = $(input).parent();

			$(thisAlert).addClass('alert-validate');
		}

		function hideValidate(input) {
			var thisAlert = $(input).parent();

			$(thisAlert).removeClass('alert-validate');
		}

		/*==================================================================
		[ Show pass ]*/
		var showPass = 0;
		$('.btn-show-pass').on('click', function() {
			if (showPass == 0) {
				$(this).next('input').attr('type', 'text');
				$(this).find('i').removeClass('zmdi-eye');
				$(this).find('i').addClass('zmdi-eye-off');
				showPass = 1;
			} else {
				$(this).next('input').attr('type', 'password');
				$(this).find('i').addClass('zmdi-eye');
				$(this).find('i').removeClass('zmdi-eye-off');
				showPass = 0;
			}

		});

	})(jQuery);
</script>
<!-- =====================================================================================================================/loginscript pankita -->
</html>