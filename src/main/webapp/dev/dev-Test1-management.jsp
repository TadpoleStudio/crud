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
<title>test111</title>
<s:include value="/jsps/common/head.jsp" />

</head>
<body>
	<s:include value="/jsps/common/brand.jsp" />
	<s:include value="/jsps/common/menu.jsp" />
	<section class="mainbg">
		<div class="container" id="Test1DataModelContainer">
			<div class="row">
				<div style="color: red">
					<s:fielderror />
				</div>
				<div id="test1Dialog" title="Test1 Management" style="display: none" data-bind="with : selectedTest1">
					<div class="row">
						<div class="six columns">
							<label>A1</label> 
							<input type="text" data-bind="value : a1" />
						</div>
						<div class="six columns">
							<label>A2</label> 
							<input type="text" data-bind="value : a2" />
						</div>
					</div>
					<div class="row">
						<div class="six columns">
							<label>a3</label> 
							<input type="text" data-bind="value : a3" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="app-wrapper ui-corner-top">
						<div class="blue module ui-corner-top clearfix">
							<h2>Test1 List</h2>
							<h2 class="right"></h2>
						</div>
						<div class="content">
						
							<div class="row">
									<div class="nine columns"></div>
									<div class="three columns">
										<a title="add attribute" data-bind="click : $root.openManageTest1Dialog" href="#" class="right" style="margin-right: 10px"><i class="small icon-plus icon-green"></i></a>
									</div>
								</div>
								<div class="row">
									<table class="dataTable">
										<thead>
											<tr>
												<th style="text-align: center">A1</th>
												<th style="text-align: center">A2</th>
												<th style="text-align: center">a3</th>
												<th></th>
											</tr>
										</thead>
										<tbody data-bind="foreach : test1List">
											<tr>
												<td style="text-align: center" data-bind="text : a1"></td>
												<td style="text-align: center" data-bind="text : a2"></td>
												<td style="text-align: center" data-bind="text : a3"></td>
												<td style="text-align: center">
													<a title="update test1" data-bind="click : $root.openManageTest1Dialog" style="margin-left: 10px;" href="#"><i class="icon-pencil small icon-blue"></i></a>
													<a title="delete test1" data-bind="click : $root.deleteTest1" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a>
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
	<script src="/crud/js/vo/Test1.js"></script>

	<script>
		$(document).ready(function() {

			var Test1DataModel = function() {

				var self = this;
				
				self.selectedTest1 = ko.observable(new Test1());
				self.test1List = ko.observableArray([]);
				
				self.searchTest1 = function() {
					
					$.ajax({
						url : 'loadTest1s.action',
						success : function(data) {
							
							if (data && data.object && data.object.elements) {
								self.test1List(data.object.elements);
							}
							
							handleStanderdResponse(data);
							
						}
					});
				};
				
				self.searchTest1();
				
				self.saveOrUpdateTest1 = function() {
					
					$.ajax({
						url : 'saveOrUpdateTest1.action',
						method : 'POST',
						data : {
							test1Json : JSON.stringify(self.selectedTest1())
						},
						success : function(data) {
							handleStanderdResponse(data);
							
							if(data.object && data.object.id) {
								self.selectedTest1(data.object);
							}
						}
					});	
					
				};
				
				self.openManageTest1Dialog = function(item, event) {
					
					if(item.id) {
						self.selectedTest1(item);
					} else {
						self.selectedTest1(new Test1());
					}
					
					$('#test1Dialog').dialog({
						modal : true,
						width : 700,
						height : 350,
						open : function(e) {
							changeButtonStyleForPopup(e);
						},
						
						buttons : {
							'Save' : function() {
								self.saveOrUpdateTest1();
							},
							'Close' : function() {
								closeDialog('test1Dialog');
							}
						}
					});
				};
				
			};

			var test1DataModel = new Test1DataModel();

			var $test1DataModelContainer = $('#Test1DataModelContainer')[0];
			
			ko.applyBindings(test1DataModel, $test1DataModelContainer);
		});

		function activeCurrentMenuItem() {
			$('#Test1Link').addClass('active');
		}
	</script>
</body>
</html>