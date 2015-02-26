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
<title>Test</title>
<s:include value="/jsps/common/head.jsp" />

</head>
<body>
	<s:include value="/jsps/common/brand.jsp" />
	<s:include value="/jsps/common/menu.jsp" />
	<section class="mainbg">
		<div class="container" id="TestDataModelContainer">
			<div class="row">
				<div style="color: red">
					<s:fielderror />
				</div>
				<div id="testDialog" title="Test Management" style="display: none" data-bind="with : selectedTest">
					<div class="row">
						<div class="six columns">
							<label>test1</label> 
							<input type="text" data-bind="value : test6" />
						</div>
						<div class="six columns">
							<label>test2</label> 
							<input type="text" data-bind="value : test2" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="app-wrapper ui-corner-top">
						<div class="blue module ui-corner-top clearfix">
							<h2>Test List</h2>
							<h2 class="right"></h2>
						</div>
						<div class="content">
						
							<div class="row">
									<div class="nine columns"></div>
									<div class="three columns">
										<a title="add attribute" data-bind="click : $root.openManageTestDialog" href="#" class="right" style="margin-right: 10px"><i class="small icon-plus icon-green"></i></a>
									</div>
								</div>
								<div class="row">
									<table class="dataTable">
										<thead>
											<tr>
												<th style="text-align: center">test1</th>
												<th style="text-align: center">test2</th>
												<th></th>
											</tr>
										</thead>
										<tbody data-bind="foreach : testList">
											<tr>
												<td style="text-align: center" data-bind="text : test6"></td>
												<td style="text-align: center" data-bind="text : test2"></td>
												<td style="text-align: center">
													<a title="update test" data-bind="click : $root.openManageTestDialog" style="margin-left: 10px;" href="#"><i class="icon-pencil small icon-blue"></i></a>
													<a title="delete test" data-bind="click : $root.deleteTest" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a>
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
	<script src="/crud/js/vo/Test.js"></script>

	<script>
		$(document).ready(function() {

			var TestDataModel = function() {

				var self = this;
				
				self.selectedTest = ko.observable(new Test());
				self.testList = ko.observableArray([]);
				
				self.searchTest = function() {
					
					$.ajax({
						url : 'loadTests.action',
						success : function(data) {
							
							if (data && data.object && data.object.elements) {
								self.testList(data.object.elements);
							}
							
							handleStanderdResponse(data);
							
						}
					});
				};
				
				self.searchTest();
				
				self.saveOrUpdateTest = function() {
					
					$.ajax({
						url : 'saveOrUpdateTest.action',
						method : 'POST',
						data : {
							testJson : JSON.stringify(self.selectedTest())
						},
						success : function(data) {
							handleStanderdResponse(data);
							
							if(data.object && data.object.id) {
								self.selectedTest(data.object);
							}
						}
					});	
					
				};
				
				self.openManageTestDialog = function(item, event) {
					
					if(item.id) {
						self.selectedTest(item);
					} else {
						self.selectedTest(new Test());
					}
					
					$('#testDialog').dialog({
						modal : true,
						width : 700,
						height : 350,
						open : function(e) {
							changeButtonStyleForPopup(e);
						},
						
						buttons : {
							'Save' : function() {
								self.saveOrUpdateTest();
							},
							'Close' : function() {
								closeDialog('testDialog');
							}
						}
					});
				};
				
			};

			var testDataModel = new TestDataModel();

			var $testDataModelContainer = $('#TestDataModelContainer')[0];
			
			ko.applyBindings(testDataModel, $testDataModelContainer);
		});

		function activeCurrentMenuItem() {
			$('#TestLink').addClass('active');
		}
	</script>
</body>
</html>