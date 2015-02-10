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
		<div class="container" id="tadFunctionDataModelContainer">
			<div class="row">
				<div style="color: red">
					<s:fielderror />
				</div>
				<div id="tadFunctionDialog" title="管理"></div>
				<div class="app-wrapper ui-corner-top">
					<div class="blue module ui-corner-top clearfix">
						<h2>Function Development</h2>
						<h2 class="right"></h2>
					</div>
					<div class="content">
						<form>
							<fieldset>
								<legend>Data structure</legend>
								<div data-bind="with : tadFunction">
									<div class="row">
										<div class="four columns">
											<label>Table Name</label> <input type="text" class="addon-postfix" data-bind="value : tableName" />
										</div>
										<div class="four columns">
											<label>JPA Entity class Name</label> <input type="text" class="addon-postfix" data-bind="value : entityName" />
										</div>
										<div class="four columns">
											<label>Namespace</label> <input type="text" class="addon-postfix" data-bind="value : strutsNamespace" />
										</div>
									</div>
									<div class="row">
										<div class="four columns">
											<label>Title</label> <input type="text" class="addon-postfix" data-bind="value : title" />
										</div>
										<div class="four columns">
											<label>Menu Title</label> <input type="text" class="addon-postfix" data-bind="value : menuTitle" />
										</div>
										<div class="four columns"></div>
									</div>
								</div>
								<div class="row">
									<div class="nine columns">
									</div>
									<div class="three columns">
										<a title="add attribute" data-bind="click : $root.addAttribute" href="#" class="right" style="margin-right:10px"><i class="small icon-plus icon-green"></i></a>
									</div>
								</div>
								<div class="row">
									<table class="infoTable">
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
												<td style="text-align: center" data-bind="text : id"></td>
												<td style="text-align: center" data-bind="text : name"></td>
												<td style="text-align: center" data-bind="text : username"></td>
												<td style="text-align: center">
												<a title="关闭用户" data-bind="click : $root.disactiveUser" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a></td>
											</tr>
										</tbody>
									</table>
									<br>
								</div>
								
							</fieldset>
						</form>
						
						<div>
							<a title="Save" data-bind="click : saveOrUpdateTadFunction" href="#" class="small blue button">Save</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<s:include value="/jsps/common/footer.jsp" />
	<script src="/crud/js/vo/TadFunction.js"></script>
	<script src="/crud/js/vo/TadAttribute.js"></script>
	<script>
		$(document).ready(function() {

			var TadFunctionDataModel = function() {
				
				var self = this;
				
				self.tadFunction = ko.observable(new TadFunction());
				self.attributeDefinitions = [];
				
				self.saveOrUpdateTadFunction = function(item, event) {
					
					$.ajax({
						url : 'saveOrUpdateTadFunction.action',
						method : 'POST',
						data : {
							tadFunctionJson : JSON.stringify(self.tadFunction()),
							attributeDefinitions : JSON.stringify(self.attributeDefinitions)
						},
						success : function(data) {
							handleStanderdResponse(data);
						}
					});
				};
				
				self.addAttribute = function(item, event) {
					
				};
				
			};

			var tadFunctionDataModel = new TadFunctionDataModel();

			var $tadFunctionDataModelContainer = $('#tadFunctionDataModelContainer')[0];
			ko.applyBindings(tadFunctionDataModel, $tadFunctionDataModelContainer);

		});

		function activeCurrentMenuItem() {
			$('#develop').addClass('active');
		}
	</script>
</body>
</html>
