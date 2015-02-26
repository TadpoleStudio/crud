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

<link rel="stylesheet" href="/crud/js/syntaxHighlighter/css/shCore.css">
<link rel="stylesheet" href="/crud/js/syntaxHighlighter/css/shThemeEclipse.css">
<title>系统开发</title>
<s:include value="/jsps/common/head.jsp" />

</head>
<body>
	<s:include value="/jsps/common/brand.jsp" />
	<s:include value="/jsps/common/menu.jsp" />
	<section class="mainbg">
		<div class="container" id="tadFunctionDataModelContainer">
			<div class="row">
				<div class="three columns">
							 <select data-bind="options: $root.tableNames,
                       							value: tableNameSearch,
                       							selectedOption : tableNameSearch,
                       							optionsCaption: 'Please select the table to load'"
								class="required">
							</select>
				</div>
				<div class="three columns">
					<a data-bind="click : $root.loadSingleFunction" href="#" class="small blue button">Load</a>
					
					<a data-bind="click : $root.removeSingleFunction" href="#" class="small red button" style="margin-left : 20px">Delete</a>
				</div>
				<div class="three columns"></div>
				<div class="three columns">

					<a data-bind="click : $root.reloadPage" href="#" class="small blue button right">Create New Function</a>
				</div>
			</div>
			<div class="row">
				<div style="color: red">
					<s:fielderror />
				</div>
				<div id="tadFunctionDialog" title="管理" style="display: none" data-bind="with : selectedTadAttribute">
					<div class="row">
						<div class="six columns">
							<label>Name</label> <input type="text" data-bind="value : name" />
						</div>
						<div class="six columns">
							<label>Type</label> 
							<select data-bind="options: $root.dataTypes,
                      					   optionsText: 'optionText',
                       											   value: type,
                       											   optionsValue : 'optionValue',
                       											   selectedOption : type,
                       											   optionsCaption: 'Please select'"
								class="required">
							</select>
						</div>
					</div>
					<div class="row">
						<div class="six columns">
							<label>Label</label> <input type="text" data-bind="value : label" />
						</div>
						
						<div class="six columns"></div>
					</div>
					<div class="row">
						<div class="six columns">
							
						</div>
					</div>
					<div class="row"></div>
				</div>
				<div class="app-wrapper ui-corner-top" title="管理">
					<div class="blue module ui-corner-top clearfix">
						<h2>Function Development</h2>
						<h2 class="right"></h2>
					</div>
					<div class="content">
						<h5>First step : create basic CRUD information.</h5>
						<br>
						<form id="tadFunctionForm">
							<fieldset>
								<legend>基础信息</legend>
								<div data-bind="with : tadFunction">
									<div class="row">
										<div class="four columns">
											<label class="required">Table Name</label> <input class="required" type="text" data-bind="value : tableName" />
										</div>
										<div class="four columns">
											<label class="required">JPA Entity class Name</label> <input class="required" type="text" data-bind="value : entityName" />
										</div>
										<div class="four columns">
											<label class="required">Namespace</label> <input class="required" type="text" data-bind="value : strutsNamespace" />
										</div>
									</div>
									<div class="row">
										<div class="four columns">
											<label class="required">Title</label> <input class="required" type="text" data-bind="value : title" />
										</div>
										<div class="four columns">
											<label class="required">Menu Title</label> <input type="text" class="required" data-bind="value : menuTitle" />
										</div>
										<div class="four columns"></div>
									</div>
								</div>
							</fieldset>
						</form>

						<div>
							<a title="Save" data-bind="click : saveOrUpdateTadFunction" href="#" class="small blue button">Save basic information</a>
						</div>
						<hr>

						<h5>Second step : Assign attributes.</h5>
						<br>
						<form>
							<fieldset>
								<legend>Attributes</legend>
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
												<td style="text-align: center">
												<a title="update attr" data-bind="click : $root.manageAttribute" style="margin-left: 10px;" href="#"><i class="icon-pencil small icon-blue"></i></a>
												<a title="delete attr" data-bind="click : $root.removeAttribute" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a></td>
											</tr>
										</tbody>
									</table>
									<br>
								</div>
							</fieldset>
						</form>
						
						<hr>

						<h5>Third step : Generate basic CRUD code</h5>
						<br>
						<div>
									<a title="Generate Code" data-bind="click : $root.generateCode" href="#" class="small blue button">Generate Code</a>
								</div>
						<br>
						<form data-bind="with : tadFunction">
							<fieldset>
								<legend>Code</legend>
								
								<div class="row">
									<label>JPA Entity code</label>
									<pre data-bind="text : jpaEntityCode" class="brush: java;"></pre>
								</div>
								<div class="row">
									<label>JS entity Code</label>
									<pre data-bind="text : jsVoCode" class="brush: js;"></pre>
								</div>
								<div class="row">
									<label>Repository code</label>
									<pre data-bind="text : repositoryCode" class="brush: java;"></pre>
								</div>
								<div class="row">
									<label>Service Interface code</label>
									<pre data-bind="text : serviceInterfaceCode" class="brush: java;"></pre>
								</div>
								<div class="row">
									<label>Service Implementation code</label>
									<pre data-bind="text : serviceImplementationCode" class="brush: java;"></pre>
								</div>
								<div class="row">
									<label>Action Class code</label>
									<pre data-bind="text : actionCode" class="brush: java;"></pre>
								</div>
								<div class="row">
									<label>Struts Configuration</label>
									<pre data-bind="text : strutsConfigurationgCode" class="brush: xml;"></pre>
								</div>
								<div class="row">
									<label>Jsp Code</label>
									<pre data-bind="text : jspCode" class="brush: xml;"></pre>
								</div>
							</fieldset>
						</form>	
					</div>
				</div>
			</div>
		</div>
	</section>
	<s:include value="/jsps/common/footer.jsp"/>
	<script src="/crud/js/vo/TadFunction.js"></script>
	<script src="/crud/js/vo/TadAttribute.js"></script>
	<script src="/crud/js/syntaxHighlighter/js/shCore.js"></script>
	<script src="/crud/js/syntaxHighlighter/js/shBrushCss.js"></script>
	<script src="/crud/js/syntaxHighlighter/js/shBrushJScript.js"></script>
	<script src="/crud/js/syntaxHighlighter/js/shBrushJava.js"></script>
	<script src="/crud/js/syntaxHighlighter/js/shBrushXml.js"></script>
	
	<script>
		$(document).ready(function() {
			
			SyntaxHighlighter.all();
			
			var TadFunctionDataModel = function() {
				
				var self = this;
				
				self.tableNameSearch = ko.observable('');
				
				self.tadFunction = ko.observable(new TadFunction());
				self.selectedTadAttribute = ko.observable(new TadAttribute());
				self.attributeDefinitions = ko.observableArray([]);
				self.dataTypes = ko.observableArray([]);
				self.tableNames = ko.observableArray([]);
				
				$.ajax({
					url : '/crud/findDropDownDataSouce.action',
					data : {identityType : 'jpa_data_type'},
					success : function(data) {
						self.dataTypes(data);
					}
				});
				
				$.ajax({
					url : '/crud/dev/loadAllTableNames.action',
					success : function(data) {
						self.tableNames(data.object);
					}
				});
				
				self.reloadPage = function() {
					window.location.assign('/crud/dev/develop.action');
				};
				
				self.loadSingleFunction = function() {
					
					if(self.tableNameSearch()) {
						
						$.ajax({
							url : '/crud/dev/loadSingleFunction.action',
							data : {tableNameSearch : self.tableNameSearch()},
							success : function(data) {
								self.tadFunction(data.object);
								
								handleStanderdResponse(data);
								
								self.loadFunctionAttrites();
								
								SyntaxHighlighter.highlight();
							}
						});
					}
					
				};
				self.removeSingleFunction = function() {
					
					if(window.confirm('Are you sure to delete?')) {
						
						
					}
					
				};
				
				self.loadFunctionAttrites = function() {
					var functionId = self.tadFunction().id;
					if(functionId) {
						$.ajax({
							url : '/crud/dev/loadFunctionAttrites.action',
							data : {functionId : functionId},
							success : function(data) {
								self.attributeDefinitions(data.object);
							}
						});
					}
				};
				
				self.saveOrUpdateTadFunction = function(item, event) {
					
					$.ajax({
						url : 'saveOrUpdateTadFunction.action',
						method : 'POST',
						data : {
							tadFunctionJson : JSON.stringify(self.tadFunction()),
							attributeDefinitions : JSON.stringify(self.attributeDefinitions())
						},
						success : function(data) {
							handleStanderdResponse(data);
							
							if(data.object && data.object.id) {
								self.tadFunction(data.object);
							}
						}
					});	
				};
				
				self.manageAttribute = function(item, event) {
					
					if (item.id) {
						self.selectedTadAttribute(item);
					} else {
						self.selectedTadAttribute(new TadAttribute());
					}
					
					$('#tadFunctionDialog').dialog({
						modal : true,
						width : 700,
						height : 350,
						open : function(e) {
							changeButtonStyleForPopup(e);
						},
						
						buttons : {
							'Save Attribute' : function() {
								self.saveOrUpdateTadAttribute();
							},
							'Close Window' : function() {
								closeDialog('tadFunctionDialog');
							}
						}
					});
				};
				
				self.saveOrUpdateTadAttribute = function(item, event) {
					
					var functionId = self.tadFunction().id;
					if(functionId) {
						
						self.selectedTadAttribute().functionId = functionId;
						
						$.ajax({
							url : 'saveOrUpdateTadAttribute.action',
							method : 'POST',
							data : {
								tadAttributeJson : JSON.stringify(self.selectedTadAttribute()),
							},
							success : function(data) {
								handleStanderdResponse(data);
								//self.attributeDefinitions.push(self.selectedTadAttribute());
								
								self.loadFunctionAttrites();
							}
						});	
					}
				};
				
				self.generateCode = function(item, event) {
					
					var functionId = self.tadFunction().id;
					if(functionId) {
						
						self.selectedTadAttribute().functionId = functionId;
						
						$.ajax({
							url : 'generateCode.action',
							method : 'POST',
							data : {
								functionId : functionId,
							},
							success : function(data) {
								handleStanderdResponse(data);
								
								if(data.object && data.object.id) {
									self.tadFunction(data.object);
									
									SyntaxHighlighter.highlight();
								}
							}
						});	
					}
				};
				
				self.removeAttribute = function(item, event) {
					
					if(window.confirm("sure to delete?")) {
						
						$.ajax({
							url : 'removeAttribute.action',
							method : 'POST',
							data : {
								attributeId : item.id,
							},
							success : function(data) {
								handleStanderdResponse(data);
								
								if(isOK(data)) {
									self.loadFunctionAttrites();
								}
							}
						});	
					}
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
