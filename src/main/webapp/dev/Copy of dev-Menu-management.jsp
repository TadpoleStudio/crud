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
				<div id="menuDialog" title="管理" style="display: none" data-bind="with : selectedMenu">
					<div class="row">
						<div class="six columns">
							<label>Title</label> <input type="text" data-bind="value : title" />
						</div>
						<div class="six columns">
							<label>url</label> <input type="text" data-bind="value : url" />
						</div>
					</div>
					<div class="row">
						<div class="six columns">
							<label>Element Id</label> <input type="text" data-bind="value : elementId" />
						</div>
						
						<div class="six columns"></div>
					</div>
					<div class="row">
						<div class="six columns">
							
						</div>
					</div>
					<div class="row"></div>
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
										<a title="add attribute" data-bind="click : $root.openManageMenuDialog" href="#" class="right" style="margin-right: 10px"><i class="small icon-plus icon-green"></i></a>
									</div>
								</div>
								<div class="row">
									<table class="dataTable">
										<thead>
											<tr>
												<th style="text-align: center">Display Title</th>
												<th style="text-align: center">Action URL</th>
												<th style="text-align: center">Identity String</th>
												<th></th>
											</tr>
										</thead>
										<tbody data-bind="foreach : menuList">
											<tr>
												<td style="text-align: center" data-bind="text : title"></td>
												<td style="text-align: center" data-bind="text : url"></td>
												<td style="text-align: center" data-bind="text : elementId"></td>
												<td style="text-align: center">
													<a title="update menu" data-bind="click : $root.openManageMenuDialog" style="margin-left: 10px;" href="#"><i class="icon-pencil small icon-blue"></i></a>
													<a title="delete menu" data-bind="click : $root.deleteMenu" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a>
												</td>
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
				
				self.selectedMenu = ko.observable(new Menu());
				self.menuList = ko.observableArray([]);
				
				self.searchMenu = function() {
					
					$.ajax({
						url : 'loadMenus.action',
						success : function(data) {
							
							if (data && data.object && data.object.elements) {
								self.menuList(data.object.elements);
							}
							
							handleStanderdResponse(data);
							
						}
					});
				};
				
				self.searchMenu();
				
				self.saveOrUpdateMenu = function() {
					
					$.ajax({
						url : 'saveOrUpdateMenu.action',
						method : 'POST',
						data : {
							menuJson : JSON.stringify(self.selectedMenu())
						},
						success : function(data) {
							handleStanderdResponse(data);
							
							if(data.object && data.object.id) {
								self.selectedMenu(data.object);
							}
						}
					});	
					
				};
				
				self.openManageMenuDialog = function(item, event) {
					
					if(item.id) {
						self.selectedMenu(item);
					} else {
						self.selectedMenu(new Menu());
					}
					
					$('#menuDialog').dialog({
						modal : true,
						width : 700,
						height : 350,
						open : function(e) {
							changeButtonStyleForPopup(e);
						},
						
						buttons : {
							'Save' : function() {
								self.saveOrUpdateMenu();
							},
							'Close' : function() {
								closeDialog('menuDialog');
							}
						}
					});
				};
				
			};

			var menuDataModel = new MenuDataModel();

			var $menuDataModelContainer = $('#MenuDataModelContainer')[0];
			
			ko.applyBindings(menuDataModel, $menuDataModelContainer);
		});

		function activeCurrentMenuItem() {
			$('#MenuLink').addClass('active');
		}
	</script>
</body>
</html>