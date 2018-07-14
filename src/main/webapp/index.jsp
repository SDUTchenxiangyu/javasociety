<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<link
	href="${APP_PATH }/static/css/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${APP_PATH }/static/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${APP_PATH }/static/css/style.css">
<title>建工之家社团官方网站</title>
</head>

<body>
	<div class="modal fade" id="signin" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">会员登陆</h4>
				</div>
				<div class="modal-body" id="sdut-from-signin">
					<form class="sdut-signin">
						<div class="form-group">
							<label for="signin-studentId">学号</label> <input type="text"
								name="studentId" class="form-control" id="signin-studentId"
								placeholder="学号"><span class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="sdut-signin-password">密码</label> <input
								type="password" name="password" class="form-control"
								id="sdut-signin-password" placeholder="Password"><span
								class="help-block"></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						id="sdut-signin-input">提交</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="signup" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">会员注册</h4>
				</div>
				<div class="modal-body" id="sdut-from-signup">
					<form class="sdut-signup">
						<div class="form-group">
							<label for="sdut-name">姓名</label> <input type="text" name="name"
								class="form-control" id="sdut-name" placeholder="姓名"><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="sdut-class">班级</label> <input type="text"
								name="studentclass" class="form-control" id="sdut-class"
								placeholder="班级"><span class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="signup-studentId">学号</label> <input type="text"
								name="studentId" class="form-control" id="signup-studentId"
								placeholder="学号"><span class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="sdut-phone">手机号</label> <input type="text"
								name="phone" class="form-control" id="sdut-phone"
								placeholder="手机号"><span class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="sdut-signup-password">密码</label> <input
								type="password" name="password" class="form-control"
								id="sdut-signup-password" placeholder="Password"><span
								class="help-block"></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						id="sdut-signup-input">提交</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="tameofmatch" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">团队比赛报名</h4>
				</div>
				<div class="modal-body" id="sdut-tame-signin-div">
					<form class="sdut-tame-signin">
						<div class="form-group">
							<label for="match-tame-cap-studentId">队长学号</label> <input type="text"
								name="match-tame-cap-studentId" class="form-control" id="match-tame-cap-studentId"
								placeholder="队长学号"><span class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="match-tame-hum1-studentId">队员1学号</label> <input
								type="text" name="match-tame-hum1-studentId" class="form-control"
								id="match-tame-hum1-studentId" placeholder="队员1学号"><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="match-tame-hum2-studentId">队员2学号</label> <input
								type="text" name="match-tame-hum2-studentId" class="form-control"
								id="match-tame-hum2-studentId" placeholder="队员2学号"><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="disabledInput">比赛代码（系统生成，非选手填写）</label> 
							<input class="form-control" id="disabledInput" name="matchid" type="text" value="" disabled>
							<span class="help-block"></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						id="match-tame-push">提交</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="personofmatch" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">个人比赛报名</h4>
				</div>
				<div class="modal-body" id="sdut-person-signin-div">
					<form class="sdut-person-signin">
						<div class="form-group">
							<label for="match-tame-per-studentId">学号</label> <input
								type="text" name="match-tame-per-studentId" class="form-control"
								id="match-tame-per-studentId" placeholder="学号"><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="disabledInput1">比赛代码（系统生成，非选手填写）</label> 
							<input class="form-control" id="disabledInput1" name="matchid" type="text" value="" disabled>
							<span class="help-block"></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						id="match-person-push">提交</button>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div id="sdut-handle">
			<div class="row sdut-jgzj-handle">&nbsp;</div>
			<div class="row sdut-jgzj-handle">
				<nav class="navbar navbar-inverse">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="http://www.sdut-jgzj.cn/">建工之家社团</a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> 品牌活动 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" id="wirtebyone">
							</ul></li>
					</ul>
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> 普通/一般活动 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" id="wirtebytwo">
							</ul></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="./view/showmatch.html">比赛时间总览</a></li>
					</ul>
					<ul class="nav navbar-nav">
						<li><a href="./view/showphoto.html">会员风采</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right" id="sdut-signin">
						<li><a href="#" data-toggle="modal" data-target="#signin">登陆</a>
						</li>
						<li><a href="#" data-toggle="modal" data-target="#signup">注册</a>
						</li>
					</ul>
				</div>
				</nav>
			</div>
		</div>
		<div class="row">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="${APP_PATH }/static/images/2.png" alt="...">
						<div class="carousel-caption">成图大赛</div>
					</div>
					<div class="item">
						<img src="${APP_PATH }/static/images/2.png" alt="...">
						<div class="carousel-caption">CAD技能大赛</div>
					</div>
					<div class="item">
						<img src="${APP_PATH }/static/images/2.png" alt="...">
						<div class="carousel-caption">结构设计大赛</div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

		</div>
		<div class="footer ">
			<div class="container">
				<div class="row footer-bottom">
					<ul class="list-inline text-center">
						<li>Copyright &copy;2018. Power by Chenxiangyu</li>
						<li>鲁ICP备17019495号</li>
					</ul>
				</div>
			</div>
		</div>

	</div>
	<script type="text/javascript">
		$(function() {
			sessionservice();
			writematch();
		})
		function writematch() {
			$.ajax({
				url : "${APP_PATH}/writematch",
				type : "get",
				success : function(result) {
					if (result.code == 100) {
						$.each(result.extend.match, function(index, item) {
							if(item.timeorperson == "团体"){
								var li = $("<li></li>").append(
										$("<a></a>").append(item.name)
												.attr("data-toggle", "modal")
												.attr("data-target",
														"#tameofmatch").attr("href","#").attr("onclick","matchofclick("+item.id+")"));
							}else {
								var li = $("<li></li>").append(
										$("<a></a>").append(item.name)
												.attr("data-toggle", "modal")
												.attr("data-target",
														"#personofmatch").attr("href","#").attr("onclick","matchofclick1("+item.id+")"));
							}
							if (item.typematch == 1) {
								li.appendTo("#wirtebyone");
							} else if (item.typematch == 2) {
								li.appendTo("#wirtebytwo");
							}
						})
					}
				}
			});
		}
		function matchofclick(id){
			$("#disabledInput").val(id);
		}
		function matchofclick1(id){
			$("#disabledInput1").val(id);
		}
		function sessionservice() {
			$.ajax({
				url : "${APP_PATH}/session",
				type : "get",
				success : function(result) {
					if (result.code == 100) {
						$("#sdut-signin").empty();
						var name = result.extend.student.name;
						var signin = $("<li></li>").append(
								$("<a></a>").append(name).attr("href",
										"${APP_PATH}/admin"));
						var signup = $("<li></li>").append(
								$("<a></a>").append("登出").attr("href", "#")
										.attr("id", "sdut-signin-loginout")
										.attr("onclick", "loginout()"));
						signin.appendTo("#sdut-signin");
						signup.appendTo("#sdut-signin");
					} else if (result.code == 200) {
						$("#sdut-signin").empty();
						var signin = $("<li></li>").append(
								$("<a></a>").append("登陆").attr("href", "#"))
								.attr("data-toggle", "modal").attr(
										"data-target", "#signin");
						var signup = $("<li></li>").append(
								$("<a></a>").append("注册").attr("href", "#"))
								.attr("data-toggle", "modal").attr(
										"data-target", "#signup");
						signin.appendTo("#sdut-signin");
						signup.appendTo("#sdut-signin");
					}
				}
			})
		}
		function validate_from_signin() {
			var studentId = $("#signin-studentId").val();
			var regnameofId = /[0-9]{11}/;
			if (!regnameofId.test(studentId)) {
				validate_from_addClass("#signin-studentId", "error", "请正确输入学号！");
				return false;
			} else {
				validate_from_addClass("#signin-studentId", "success", "");
			}
			var password = $("#sdut-signin-password").val();
			if (password.length == 0) {
				validate_from_addClass("#sdut-signin-password", "error",
						"请输入密码！");
				return false;
			} else {
				validate_from_addClass("#sdut-signin-password", "success", "");
			}
			return true;
		}
		function validate_from_addClass(ele, status, msg) {
			$(ele).parent().removeClass("has-success has-error");
			$(ele).next("span").text("");
			if (status == "success") {
				$(ele).parent().addClass("has-success");
				$(ele).next("span").text(msg);
			} else if (status == "error") {
				$(ele).parent().addClass("has-error");
				$(ele).next("span").text(msg);
			}
		}
		$("#sdut-signin-input").click(
				function() {
					if (!validate_from_signin()) {
						return false;
					}
					$.ajax({
						url : "${APP_PATH}/signin",
						type : "POST",
						data : $("#sdut-from-signin form").serialize(),
						success : function(result) {
							if (result.code == 100) {
								$("#signin").modal('hide');
								$("#sdut-signin").empty();
								var name = result.extend.student.name;
								var signin = $("<li></li>").append(
										$("<a></a>").append(name).attr("href",
												"${APP_PATH}/admin"));
								var signup = $("<li></li>").append(
										$("<a></a>").append("登出").attr("href",
												"#").attr("id",
												"sdut-signin-loginout").attr(
												"onclick", "loginout()"));
								signin.appendTo("#sdut-signin");
								signup.appendTo("#sdut-signin");
							} else if (result.code == 200) {
								$("#signin-studentId").parent().addClass(
										"has-error");
								$("#signin-studentId").next("span").text(
										"学号与密码不匹配");
								$("#sdut-signin-password").parent().addClass(
										"has-error");
								$("#sdut-signin-password").next("span").text(
										"学号与密码不匹配");
							}
						}
					});
				});
		function loginout() {
			$.ajax({
				url : "${APP_PATH}/loginout",
				type : "get",
				success : function(result) {
					if (result.code == 100) {
						window.location.reload();
					} else if (result.code == 200) {
						alert("登出失败，请关闭浏览器重新访问网站！");
					}
				}
			});
		}
		$("#sdut-signup-input").click(function() {
			if (!validate_from_signup()) {
				return false;
			}
			$.ajax({
				url : "${APP_PATH}/signup",
				type : "POST",
				data : $("#sdut-from-signup form").serialize(),
				success : function(result) {
					if (result.code == 100) {
						$("#signup").modal('hide');
						window.location.reload();
					} else {
						alert("注册失败，请重试，如多次失败，请联系网站管理员，QQ：1061645750.");
					}
				}
			})
		});
		$("#signup-studentId").change(
				function() {
					var studentId = $("#signup-studentId").val();
					var regnameofId = /[0-9]{11}/;
					if (!regnameofId.test(studentId)) {
						validate_from_addClass("#signup-studentId", "error",
								"请正确输入学号！");
						return false;
					} else {
						validate_from_addClass("#signup-studentId", "success",
								"");
					}

					$.ajax({
						url : "${APP_PATH}/checkstudent",
						type : "POST",
						data : "studentId=" + $("#signup-studentId").val(),
						success : function(result) {
							if (result.code == 100) {
								validate_from_addClass("#signup-studentId",
										"success", "");
							} else if (result.code == 200) {
								validate_from_addClass("#signup-studentId",
										"error", "该用户已注册！");
							}
						}
					});
				});
		$("#sdut-phone")
				.change(
						function() {
							var phone = $("#sdut-phone").val();
							var regofphone = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
							if (!regofphone.test(phone)) {
								validate_from_addClass("#sdut-phone", "error",
										"请正确输入手机号！");
								return false;
							} else {
								validate_from_addClass("#sdut-phone",
										"success", "");
							}
						})
		function validate_from_signup() {
			var sdutname = $("#sdut-name").val();
			var regofname = /^[\u4e00-\u9fa5]{1,}$/;
			if (!regofname.test(sdutname)) {
				validate_from_addClass("#sdut-name", "error", "请正确输入姓名！");
			} else {
				validate_from_addClass("#sdut-name", "success", "");
			}
			var studentId = $("#signup-studentId").val();
			var regnameofId = /[0-9]{11}/;
			if (!regnameofId.test(studentId)) {
				validate_from_addClass("#signup-studentId", "error", "请正确输入学号！");
				return false;
			} else {
				validate_from_addClass("#signup-studentId", "success", "");
			}
			var phone = $("#sdut-phone").val();
			var regofphone = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
			if (!regofphone.test(phone)) {
				validate_from_addClass("#sdut-phone", "error", "请正确输入手机号！");
				return false;
			} else {
				validate_from_addClass("#sdut-phone", "success", "");
			}
			var password = $("#sdut-signup-password").val();
			if (password.length == 0) {
				validate_from_addClass("#sdut-signup-password", "error",
						"请输入密码！");
				return false;
			} else {
				validate_from_addClass("#sdut-signup-password", "success", "");
			}
			return true;
		}
		$("#match-person-push").click(function(){
			if(!validate_from_person()){
				return false;
			}
			$.ajax({
				url:"${APP_PATH}/checkstudent",
				type : "POST",
				data : "studentId=" + $("#match-tame-per-studentId").val(),
				success : function(result){
					if(result.code == 100){
						validate_from_addClass("#match-tame-per-studentId", "error", "该用户未注册！");
					}else if(result.code == 200){
						validate_from_addClass("#match-tame-per-studentId", "success", "");
						$.ajax({
							url:"${APP_PATH}/checksdutentmatch",
							type:"POST",
							data:"studentId=" + $("#match-tame-per-studentId").val()+ "&matchid=" + $("#disabledInput1").val(),
							success:function(result){
								if(result.code == 100){
									$.ajax({
										url:"${APP_PATH}/personmatch",
										type:"POST",
										data:$("#sdut-person-signin-div form").serialize()+"&matchid="+$("#disabledInput1").val(),
										success:function(result){
											if(result.code == 100){
												$("#personofmatch").modal('hide');
											}else {
												alert("报名失败，请联系工作人员");
											}
										}
									});
								}else if(result.code == 200){
									validate_from_addClass("#match-tame-per-studentId", "error", "该用户已报名");
								}
							}
						})
						
					}
				}
			});
		})
		function validate_from_person(){
			var person = $("#match-tame-per-studentId").val();
			var regnameofId = /[0-9]{11}/;
			if(!regnameofId.test(person)){
				validate_from_addClass("#match-tame-per-studentId", "error", "请正确输入学号！");
				return false;
			}else{
				validate_from_addClass("#match-tame-per-studentId", "success", "");
			}
			return true;
		}
		$("#match-tame-push").click(function(){
			if(!validate_from_tame()){
				return false;
			}
			$.ajax({
				url:"${APP_PATH}/checkstudent",
				type:"POST",
				data:"studentId=" + $("#match-tame-cap-studentId").val(),
				success:function(result){
					if(result.code == 100){
						validate_from_addClass("#match-tame-cap-studentId", "error", "该用户未注册");
					}else if(result.code == 200){
						validate_from_addClass("#match-tame-cap-studentId", "success", "");
						$.ajax({
							url:"${APP_PATH}/checkstudent",
							type:"POST",
							data:"studentId=" + $("#match-tame-hum1-studentId").val(),
							success:function(result){
								if(result.code == 100){
									validate_from_addClass("#match-tame-hum1-studentId", "error", "该用户未注册");
								}else if(result.code == 200){
									validate_from_addClass("#match-tame-hum1-studentId", "success", "");
									$.ajax({
										url:"${APP_PATH}/checkstudent",
										type:"POST",
										data:"studentId=" + $("#match-tame-hum2-studentId").val(),
										success:function(result){
											if(result.code == 100){
												validate_from_addClass("#match-tame-hum2-studentId", "error", "该用户未注册");
											}else if(result.code == 200){
												validate_from_addClass("#match-tame-hum1-studentId", "success", "");
												$.ajax({
													url:"${APP_PATH}/checksdutentmatch",
													type:"POST",
													data:"studentId=" + $("#match-tame-cap-studentId").val() + "&matchid=" + $("#disabledInput").val(),
													success:function(result){
														if(result.code == 100){
															validate_from_addClass("#match-tame-cap-studentId", "success", "");
															$.ajax({
																url:"${APP_PATH}/checksdutentmatch",
																type:"POST",
																data:"studentId=" + $("#match-tame-hum1-studentId").val()+ "&matchid=" + $("#disabledInput").val(),
																success:function(result){
																	if(result.code == 100){
																		validate_from_addClass("#match-tame-hum1-studentId", "success", "");
																		$.ajax({
																			url:"${APP_PATH}/checksdutentmatch",
																			type:"POST",
																			data:"studentId=" + $("#match-tame-hum2-studentId").val()+ "&matchid=" + $("#disabledInput").val(),
																			success:function(result){
																				if(result.code == 100){
																					$.ajax({
																						url:"${APP_PATH}/savetame",
																						type:"POST",
																						data:$("#sdut-tame-signin-div form").serialize()+"&matchid="+$("#disabledInput").val(),
																						success:function(result){
																							if(result.code == 100){
																								$("#tameofmatch").modal('hide');
																							}else{
																								alert("报名失败，请联系社团工作人员！");
																							}
																						}
																					});
																				}else if(result.code == 200){
																					validate_from_addClass("#match-tame-hum2-studentId", "error", "该用户已报名");
																				}
																			}
																		})
																	}else if(result.code == 200){
																		validate_from_addClass("#match-tame-hum1-studentId", "error", "该用户已报名");
																	}
																}
															});
														}else if(result.code == 200){
															validate_from_addClass("#match-tame-cap-studentId", "error", "该用户已报名");
														}
													}
												});
											}
										}
									});
								}
							}
						});
					}
				}
			});
		});
		function validate_from_tame(){
			var person = $("#match-tame-cap-studentId").val();
			var regnameofId = /[0-9]{11}/;
			if(!regnameofId.test(person)){
				validate_from_addClass("#match-tame-cap-studentId", "error", "请正确输入学号！");
				return false;
			}else{
				validate_from_addClass("#match-tame-cap-studentId", "success", "");
			}
			
			var person1 = $("#match-tame-hum1-studentId").val();
			var regnameofId1 = /[0-9]{11}/;
			if(!regnameofId1.test(person1)){
				validate_from_addClass("#match-tame-hum1-studentId", "error", "请正确输入学号！");
				return false;
			}else{
				validate_from_addClass("#match-tame-hum1-studentId", "success", "");
			}
			var person2 = $("#match-tame-hum2-studentId").val();
			var regnameofId2 = /[0-9]{11}/;
			if(!regnameofId2.test(person2)){
				validate_from_addClass("#match-tame-hum2-studentId", "error", "请正确输入学号！");
				return false;
			}else{
				validate_from_addClass("#match-tame-hum2-studentId", "success", "");
			}
			return true;
		}
	</script>
</body>
</html>
