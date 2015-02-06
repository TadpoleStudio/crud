<%@ page contentType="text/html;charset=utf8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>	<html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>	<html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="en"> <!-->
<html lang="en">
<!--<![endif]-->
<head>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width" />
<title>系统开发</title>
<s:include value="/jsps/common/head.jsp" />

</head>
<body>
	<s:include value="/jsps/common/brand.jsp" />
	<s:include value="/jsps/common/menu.jsp" />
	<section class="mainbg">
		<div class="container" id="developModelContainer">
			<div class="row">
				<div style="color: red">
					<s:fielderror />
				</div>
				<div class="app-wrapper ui-corner-top">
					<div class="blue module ui-corner-top clearfix">
						<h2>系统开发</h2>
						<h2 class="right"></h2>
					</div>
					<div class="content">
						<form>
							<fieldset>
								<legend>数据结构定义</legend>
								
								<div class="row">
									<div class="four columns">
										<label>Table Name</label>
										<input type="text" class="addon-postfix" data-bind="value : tableName" />
									</div>
									<div class="four columns">
										<label>JPA Entity class Name</label>
										<input type="text" class="addon-postfix" data-bind="value : tableName" />
									</div>
								</div>
								<div class="row">
									<table class="infoTable">
										<thead>
											<tr>
												<th>id</th>
												<th>Attribute Name</th>
												<th>Attribute Type</th>
												<th>Operations</th>
											</tr>
										</thead>
										<tbody data-bind="foreach : attributeDefinitions">
											<tr>
												<td style="text-align: center" data-bind="text : id"></td>
												<td style="text-align: center" data-bind="text : name"></td>
												<td style="text-align: center" data-bind="text : username"></td>
												<td style="text-align: center">
													<a title="分配角色" data-bind="click : $root.openAssignRolesDialog" style="margin-left : 10px;" href="#"><i class="icon-user small icon-blue"></i></a>
													<a title="重置密码" data-bind="click : $root.openResetPasswordDialog" style="margin-left : 10px;" href="#"><i class="icon-pencil small icon-orange"></i></a>
													<a title="关闭用户" data-bind="click : $root.disactiveUser" style="margin-left : 10px;" href="#"><i class="icon-trash small icon-red"></i></a>
												</td>
											</tr>
										</tbody>
									</table>
									<br>
								</div>
							</fieldset>
						</form>
					</div>
				</div>

			</div>
		</div>
	</section>
	<s:include value="/jsps/common/footer.jsp" />
	<script>
		$(document).ready(function() {

			var DevelopModel = function() {
			};

			var developModel = new DevelopModel();

			var $developModelContainer = $('#developModelContainer')[0];
			ko.applyBindings(developModel, $developModelContainer);

		});

		function activeCurrentMenuItem() {
			$('#develop').addClass('active');
		}
	</script>
</body>
</html>
