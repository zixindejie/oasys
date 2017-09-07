<!DOCTYPE html>
<html>
<head>

<#include "/common/commoncss.ftl">
<script type="text/javascript" src="/js/note/noteedit.js"></script>
<script charset="utf-8" src="/plugins/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="/plugins/kindeditor/lang/zh_CN.js"></script>

<link rel="stylesheet" href="/plugins/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="/css/common/tanchuang.css"/>
<link rel="stylesheet" href="/css/common/box.css" />

<title></title>
<style>
.panel-heading {
	background-color: #eee;
}

.outside {
	border: 0px solid red;
	margin-top: 20px;
}

.container {
	border-radius: 5px;
	border: 0px solid black;
	border-top: 3px solid #3c8dbc;
	/*margin-left: 0px;*/
	background-color: #FFFFFF;
	max-width: 800px;
	padding-top: 12px;
}

.label-back {
	background-color: #6C7B8B;;
	color: white;
}

.label-back:hover {
	color: white !important;
}

.label {
	display: inline;
	padding: 5px 12px 5px 12px;
	font-size: 75%;
	font-weight: 700;
	line-height: 1;
	color: #fff;
	text-align: center;
	white-space: nowrap;
	vertical-align: baseline;
	border-radius: .25em;
}

.la {
	margin-top: 4px;
	font-size: 16px;
}

.page-header {
	margin: 0px;
}

.reciver {
	position: relative;
	top: -27px;
	float: right;
	right: 4px;
	cursor: pointer;
}

form {
	margin: 0;
}

textarea {
	display: block;
	font-size: 16px;
}

#ss .ke-container {
	border-radius: 5px;
	width: 770px;
}

.form-group .btn {
	background-color: #eee;
	width: 100px;
	height: 34px;
}

#MoreDiv {
	display: none;
	top: 5px;
}

#ctl00_cphMain_fuAttachment {
	opacity: 0;
	position: relative;
	top: -22px;
}

.left1, .right1 {
	display: inline-block;
}

.right1 .btn-default, .left1 .btn-default {
	background-color: #eee;
}

.bottom1 {
	margin-bottom: 20px;
}

.reciver a {
	text-decoration: none;
}
</style>

</head>

<body class="panel-heading ">
	<div>
		<div class="container box">
			<div class="box-header">
				<a class="label label-back " onclick="notejump('notewrite',${id})">
					<span class="glyphicon glyphicon-chevron-left"></span>返回
				</a>
			</div>
			<div class="page-header"></div>
			<div class="form-group">
				<select name="ctl00_cphMain_ddlFile" id="ctl00_cphMain_ddlFile"
					class="form-control select2">
					<option value="0">✟111</option>
					<option value="1">✟1111</option>
					<option value="2">✟111</option>
				</select>
			</div>
			<div class="form-group">
				<select name="ctl00_cphMain_ddlType" id="ctl00_cphMain_ddlType"
					class="form-control select2">
					<option value="0">我的笔记</option>
					<option value="1">公司笔记</option>
					<option value="2">共享笔记</option>
				</select>
			</div>

			<div class="form-group">
				<div id="MoreDiv">
					<input name="ctl00_cphMain_txtReceiver" type="text"
						id="ctl00_cphMain_txtReceiver" class="form-control"
						placeholder="分享给：" />
					<div class="reciver">
						<a data-toggle="modal" data-target="#myModal"
							data-backdrop="static"> <span
							class="label label-success glyphicon glyphicon-share-alt">分享</span>
						</a>
					</div>
				</div>
			</div>
			<div class="form-group">
				<select name="ctl00_cphMain_ddlImportance"
					id="ctl00_cphMain_ddlImportance" class="form-control select2">
					<option value="0">一般</option>
					<option value="1">重要</option>
				</select>
			</div>
			<div class="form-group">
				<input name="ctl00$cphMain$txtSubject" type="text"
					id="ctl00_cphMain_txtSubject" class="form-control"
					placeholder="标题：" />
			</div>
			<div class="form-group">
				<form id="ss">
					<textarea name="content" style="width: 100%; height: 300px; visibility: hidden; font-size: 20px;"></textarea>
				</form>
			</div>

			<div class="form-group">
				<div class="btn btn-default ">
					<span class="glyphicon glyphicon-paperclip">增加附件</span> <input
						type="file" name="ctl00$cphMain$fuAttachment"
						id="ctl00_cphMain_fuAttachment" />
				</div>
				<p class="help-block">5MB以内</p>
			</div>



			<div class="pull-right right1 bottom1">
				<a id="ctl00_cphMain_lnbDraft" class="btn btn-primary">保存</a> <a
					id="ctl00_cphMain_lnbSend" class="btn btn-default">取消</a>
			</div>



			<!-- 接收人弹窗-->
			<div class="modal fade" id="myModal" tabindex="-1">

				<!--第二步，窗口声明-->
				<div class="modal-dialog modal-lg">
					<!--第三步、内容区的声明-->
					<div class="modal-content" style="background: #F9F9F9;">
						<div class="modal-1">

							<div class="modal-2">

								<div class="modal-header" style="margin: 10px;">
									<button class="close close2" data-dismiss="modal"
										style="display: block; background-color: black; margin: -90px -82px 0 0; border-radius: 60%;">
										<span class="glyphicon glyphicon-remove-circle"
											style="color: white; font-size: 30px;"></span>
									</button>
									<div class="row">
										<div class="col-xs-12" style="height: 30px; margin: 10px 0px;">
											<h4 style="float: left;">
												<a class="btn btn-success glyphicon glyphicon-plus btn-sm"
													onclick="addvalue()" data-dismiss="modal"> 新增接收人</a> <a
													class="btn btn-success glyphicon glyphicon-plus btn-sm"
													onclick="addvalue2()" data-dismiss="modal"> 追加接收人</a>
											</h4>

											<div class="input-group"
												style="width: 150px; float: right; top: -5px;">
												<input type="text" class="form-control input-sm pull-right"
													placeholder="查找..." />
												<div class="input-group-btn" style="top: -1px;">
													<a
														class="btn-sm btn-default glyphicon glyphicon-search btn-change"
														href=""></a>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="modal-body" style="margin: 10px;">
									<table class="table  table-hover  container-fluid">
										<tr class="row">
											<th class=" col-xs-2">选择</th>
											<th class=" col-xs-2 b">部门</th>
											<th class=" col-xs-2 b">真实姓名</th>
											<th class="col-xs-2 b">用户名</th>
											<th class="col-xs-2 b">角色</th>
											<th class=" col-xs-2">电话</th>
										</tr>
										<tr class="row">
											<th class=" col-xs-2"><input type="checkbox" name="id"
												value="dsafas" style="display: block" /></th>
											<th class="col-xs-2">部门</th>
											<th class=" col-xs-2">真实姓名</th>
											<th class="col-xs-2">用户名</th>
											<th class=" col-xs-2">角色</th>
											<th class=" col-xs-2">电话</th>

										</tr>
										<tr class="row">

											<th class=" col-xs-2"><input type="checkbox" name="id"
												value="dsafas" style="display: block" /></th>
											<th class=" col-xs-2" name="id">部门</th>
											<th class=" col-xs-2">真实姓名</th>
											<th class=" col-xs-2">用户名</th>
											<th class=" col-xs-2">角色</th>
											<th class=" col-xs-2">电话</th>

										</tr>
										<tr class="row">

											<th class=" col-xs-2"><input type="checkbox" /></th>
											<th class=" col-xs-2">部门</th>
											<th class="col-xs-2">真实姓名</th>
											<th class=" col-xs-2">用户名</th>
											<th class="col-xs-2">角色</th>
											<th class="col-xs-2">电话</th>

										</tr>
										<tr class="row">

											<th class=" col-xs-2"><input type="checkbox" /></th>
											<th class=" col-xs-2">部门</th>
											<th class="col-xs-2">真实姓名</th>
											<th class=" col-xs-2">用户名</th>
											<th class="col-xs-2">角色</th>
											<th class="col-xs-2">电话</th>

										</tr>
									</table>
									<div class="box-footer no-padding"
										style="margin-top: -20px; background: #FAFAFA; border-top: solid 1px #F5F5F5;">
										<div style="padding: 5px;">
											<div id="page"
												style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
												<div style="width: 40%; float: left;">
													<div class="pageInfo" style="margin-left: 5px;">
														共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
													</div>
												</div>
												<div style="width: 60%; float: left;">
													<div class="pageOperation">
														<a class="btn btn-sm btn-default no-padding"
															style="width: 30px; height: 20px;"> <span
															class="glyphicon glyphicon-backward"></span>
														</a> <a class="btn btn-sm btn-default no-padding"
															style="width: 30px; height: 20px;"> <span
															class="glyphicon glyphicon-triangle-left"></span>
														</a> <a disabled="disabled" class="btn btn-default no-padding"
															style="width: 30px; height: 20px;"> 1 </a> <a
															class="btn btn-sm btn-default no-padding"
															style="width: 30px; height: 20px;"> <span
															class="glyphicon glyphicon-triangle-right"></span>
														</a> <a class="btn btn-sm btn-default no-padding"
															style="width: 30px; height: 20px;"> <span
															class="glyphicon glyphicon-forward"></span>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>

							</div>

						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</body>
</html>
