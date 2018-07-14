<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<script type="text/javascript"
	src="${APP_PATH }/static/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript"
	src="${APP_PATH }/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
<link rel="stylesheet" href="${APP_PATH }/static/css/style.css">
<title>建工之家社团官方网站</title>
</head>
<body>
	<div class="modal fade" id="add-activity" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加活动</h4>
				</div>
				<div class="modal-body" id="sdut-add-activity">
					<form class="admin-add-activity">
						<div class="form-group">
							<label for="activity-name">比赛名称</label> <input type="text"
								name="activity-name" class="form-control" id="activity-name"
								placeholder="比赛名称"><span class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="activity-level">比赛级别</label> <select
								class="form-control" name="activity-level" id="activity-level">
								<option value="1">品牌活动</option>
								<option value="2">普通/会员活动</option>
							</select> <span class="help-block"></span>
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
	<div class="modal fade" id="open-activity" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">开启活动</h4>
				</div>
				<div class="modal-body" id="sdut-open-activity">
					<form class="admin-open-activity">
						<div class="form-group">
							<label for="activity-open-type">比赛类别</label> <select
								class="form-control" name="activity-open-type"
								id="activity-open-type">

							</select> <span class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="activity-open-class">比赛届数</label> <input type="text"
								name="activity-open-class" class="form-control"
								id="activity-open-class" placeholder="比赛届数"><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="activity-open-timestart">比赛开始时间</label> <input type="text"
								name="activity-open-timestart" class="form-control form_datetime"
								id="activity-open-timestart"  readonly placeholder="比赛开始时间"><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="activity-open-timeend">比赛结束时间</label> <input type="text"
								name="activity-open-timeend" class="form-control form_datetime"
								id="activity-open-timeend"  readonly placeholder="比赛结束时间"><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="activity-open-place">比赛地点</label> <input type="text"
								name="activity-open-place" class="form-control"
								id="activity-open-place" placeholder="比赛地点"><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="activity-open-timeorperson">团体/个人</label> <select
								class="form-control" name="activity-open-timeorperson"
								id="activity-open-openorclose">
								<option value="1">个人</option>
								<option value="0">团体</option>
							</select><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="activity-open-timenumber">团体人数</label> <input type="text"
								name="activity-open-timenumber" class="form-control"
								id="activity-open-timenumber" placeholder="团体人数"><span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="activity-open-openorclose">开启状况</label> <select
								class="form-control" name="activity-open-openorclose"
								id="activity-open-openorclose">
								<option value="1">开启</option>
								<option value="0">关闭</option>
							</select> <span class="help-block"></span>
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
							aria-expanded="false"> 社团日常管理 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" data-toggle="modal"
									data-target="#add-activity" id="admin-add-activity">添加活动</a></li>
								<li><a href="#" data-toggle="modal"
									data-target="#open-activity" id="admin-open-activity">开启活动</a></li>
								<li><a href="#">获奖人员名单录入</a></li>
								<li><a href="#">导出报名表</a></li>
								<li><a href="#">社团纳新</a></li>
								<li><a href="#">团长权限交接</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> 网站数据相关 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">更新首页轮播图</a></li>
								<li><a href="#">更新会员风采照片</a></li>
								<li><a href="#">更新比赛时间总览</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav" id="sdut-warning">
						<li><a href="#">导出会员全部信息</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" data-toggle="modal" data-target="#signin">登陆</a>
						</li>
						<li><a href="#" data-toggle="modal" data-target="#signup">注册</a>
						</li>
					</ul>
				</div>
				</nav>
			</div>
		</div>

	</div>
	<script type="text/javascript">
		$(function() {
			alert("警告!你已进入社团网站控制台，你的任何操作都会造成不可逆的后果，请在进行操作前确认你已阅读过《社团网站后台使用说明》！");
		});
		$("#sdut-warning").click(function() {
			alert("警告！此操作已经涉及所有会员的安全隐私，请再三确认是否需要导出会员全部信息！");
		});
		$("#sdut-signin-input").click(function() {
			$.ajax({
				url : "${APP_PATH}/tpye",
				type : "POST",
				data : $("#sdut-add-activity form").serialize(),
				success : function(result) {
					if (result.code == 100) {
						$("#add-activity").modal('hide');
					} else {
						alert("出现严重错误，请联系网站工程师：QQ1061645750");
					}
				}
			})
		});
		$("#admin-open-activity").click(
				function() {
					$.ajax({
						url : "${APP_PATH}/findbymatchname",
						type : "get",
						success : function(result) {
							if (result.code == 100) {
								$.each(result.extend.basic, function(index,
										item) {
									var option = $("<option></option>").append(
											item.name).attr("value", item.id);
									option.appendTo("#activity-open-type");
								});
							}
						}
					});
				});
		$("#activity-open-timestart").datetimepicker({
	        format: 'yyyy/mm/dd hh:ii:ss',
	        minView:'month',
	        language: 'zh-CN',
	        autoclose:true,
	        startDate:new Date()
	    }).on("click",function(){
	        $("#activity-open-timestart").datetimepicker("setEndDate",$("#activity-open-timeend").val())
	    });
		$("#activity-open-timeend").datetimepicker({
	        format: 'yyyy/mm/dd hh:ii:ss',
	        minView:'month',
	        language: 'zh-CN',
	        autoclose:true,
	        startDate:new Date()
	    }).on("click",function(){
	        $("#activity-open-timeend").datetimepicker("setStartDate",$("#activity-open-timestart").val())
	    });
		$("#sdut-signup-input").click(function(){
			$.ajax({
				url:"${APP_PATH}/openmatch",
				type:"POST",
				data:$("#open-activity form").serialize(),
				success:function(result){
					if(result.code == 100){
						$("#open-activity").modal('hide');
					}else{
						alert("出现严重错误，请联系网站工程师：QQ1061645750");
					}
				}
			});
		});
	</script>
</body>
</html>