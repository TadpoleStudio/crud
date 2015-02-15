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
		<div class="container" id="MenuDataModelContainer">
			<div class="row">
				<div style="color: red">
					<s:fielderror />
				</div>

				<div class="row">
					<div class="app-wrapper ui-corner-top" title="管理">
						<div class="blue module ui-corner-top clearfix">
							<h2>Menu Development</h2>
							<h2 class="right"></h2>
						</div>
						<div class="content">
						
							<div class="row">
									<div class="nine columns"></div>
									<div class="three columns">
										<a title="add attribute" data-bind="click : $root.manageAttribute" href="#" class="right" style="margin-right: 10px"><i class="small icon-plus icon-green"></i></a>
									</div>
								</div>
								<div class="row">
									<table class="dataTable">
										<thead>
											<tr>
												<th style="text-align: center">Name</th>
												<th style="text-align: center">Type</th>
												<th style="text-align: center">Label</th>
												<th></th>
											</tr>
										</thead>
										<tbody data-bind="foreach : attributeDefinitions">
											<tr>
												<td style="text-align: center" data-bind="text : name"></td>
												<td style="text-align: center" data-bind="text : type"></td>
												<td style="text-align: center" data-bind="text : label"></td>
												<td style="text-align: center"><a title="关闭用户" data-bind="click : $root.disactiveUser" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a></td>
											</tr>
										</tbody>
									</table>
									<br>
								</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</section>
	<s:include value="/jsps/common/footer.jsp" />
	<script src="/crud/js/vo/Menu.js"></script>

	<script>
		$(document).ready(function() {

			var MenuDataModel = function() {

				var self = this;
				
			};

			var menuDataModel = new MenuDataModel();

			var $menuDataModelContainer = $('#menuDataModelContainer')[0];
			ko.applyBindings(menuDataModel, $menuDataModelContainer);
		});

		function activeCurrentMenuItem() {
			$('#MenuLink').addClass('active');
		}
	</script>
</body>
</html>