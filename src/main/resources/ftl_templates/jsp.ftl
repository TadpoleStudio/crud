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
<title>${title}</title>
<s:include value="/jsps/common/head.jsp" />

</head>
<body>
	<s:include value="/jsps/common/brand.jsp" />
	<s:include value="/jsps/common/menu.jsp" />
	<section class="mainbg">
		<div class="container" id="${javaClassName}DataModelContainer">
			<div class="row">
				<div style="color: red">
					<s:fielderror />
				</div>
				<div id="${firstLetterLowerCaseJavaClassName}Dialog" title="${javaClassName} Management" style="display: none" data-bind="with : selected${javaClassName}">
				<#list tadAttributes?chunk(2) as row>
					<div class="row">
					<#list row as cell>
						<div class="six columns">
							<label>${cell.label}</label> 
							<input type="text" data-bind="value : ${cell.name}" />
						</div>
					</#list>
					</div>
				</#list>	
				</div>
				<div class="row">
					<div class="app-wrapper ui-corner-top">
						<div class="blue module ui-corner-top clearfix">
							<h2>${javaClassName} List</h2>
							<h2 class="right"></h2>
						</div>
						<div class="content">
						
							<div class="row">
									<div class="nine columns"></div>
									<div class="three columns">
										<a title="add attribute" data-bind="click : $root.openManage${javaClassName}Dialog" href="#" class="right" style="margin-right: 10px"><i class="small icon-plus icon-green"></i></a>
									</div>
								</div>
								<div class="row">
									<table class="dataTable">
										<thead>
											<tr>
												<#list tadAttributes as attr>
												<th style="text-align: center">${attr.label}</th>
												</#list>
												<th></th>
											</tr>
										</thead>
										<tbody data-bind="foreach : ${firstLetterLowerCaseJavaClassName}List">
											<tr>
												<#list tadAttributes as attr>
												<td style="text-align: center" data-bind="text : ${attr.name}"></td>
												</#list>
												<td style="text-align: center">
													<a title="update ${firstLetterLowerCaseJavaClassName}" data-bind="click : $root.openManage${javaClassName}Dialog" style="margin-left: 10px;" href="#"><i class="icon-pencil small icon-blue"></i></a>
													<a title="delete ${firstLetterLowerCaseJavaClassName}" data-bind="click : $root.delete${javaClassName}" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a>
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
	<script src="/crud/js/vo/${javaClassName}.js"></script>

	<script>
		$(document).ready(function() {

			var ${javaClassName}DataModel = function() {

				var self = this;
				
				self.selected${javaClassName} = ko.observable(new ${javaClassName}());
				self.${firstLetterLowerCaseJavaClassName}List = ko.observableArray([]);
				
				self.search${javaClassName} = function() {
					
					$.ajax({
						url : 'load${javaClassName}s.action',
						success : function(data) {
							
							if (data && data.object && data.object.elements) {
								self.${firstLetterLowerCaseJavaClassName}List(data.object.elements);
							}
							
							handleStanderdResponse(data);
							
						}
					});
				};
				
				self.search${javaClassName}();
				
				self.saveOrUpdate${javaClassName} = function() {
					
					$.ajax({
						url : 'saveOrUpdate${javaClassName}.action',
						method : 'POST',
						data : {
							${firstLetterLowerCaseJavaClassName}Json : JSON.stringify(self.selected${javaClassName}())
						},
						success : function(data) {
							handleStanderdResponse(data);
							
							if(data.object && data.object.id) {
								self.selected${javaClassName}(data.object);
							}
						}
					});	
					
				};
				
				self.openManage${javaClassName}Dialog = function(item, event) {
					
					if(item.id) {
						self.selected${javaClassName}(item);
					} else {
						self.selected${javaClassName}(new ${javaClassName}());
					}
					
					$('#${firstLetterLowerCaseJavaClassName}Dialog').dialog({
						modal : true,
						width : 700,
						height : 350,
						open : function(e) {
							changeButtonStyleForPopup(e);
						},
						
						buttons : {
							'Save' : function() {
								self.saveOrUpdate${javaClassName}();
							},
							'Close' : function() {
								closeDialog('${firstLetterLowerCaseJavaClassName}Dialog');
							}
						}
					});
				};
				
			};

			var ${firstLetterLowerCaseJavaClassName}DataModel = new ${javaClassName}DataModel();

			var $${firstLetterLowerCaseJavaClassName}DataModelContainer = $('#${javaClassName}DataModelContainer')[0];
			
			ko.applyBindings(${firstLetterLowerCaseJavaClassName}DataModel, $${firstLetterLowerCaseJavaClassName}DataModelContainer);
		});

		function activeCurrentMenuItem() {
			$('#${javaClassName}Link').addClass('active');
		}
	</script>
</body>
</html>