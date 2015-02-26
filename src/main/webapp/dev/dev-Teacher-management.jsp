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
<title>teacher</title>
<s:include value="/jsps/common/head.jsp" />

</head>
<body>
	<s:include value="/jsps/common/brand.jsp" />
	<s:include value="/jsps/common/menu.jsp" />
	<section class="mainbg">
		<div class="container" id="TeacherDataModelContainer">
			<div class="row">
				<div style="color: red">
					<s:fielderror />
				</div>
				<div id="teacherDialog" title="Teacher Management" style="display: none" data-bind="with : selectedTeacher">
					<div class="row">
						<div class="six columns">
							<label>Name</label> 
							<input type="text" data-bind="value : name" />
						</div>
						<div class="six columns">
							<label>Age</label> 
							<input type="text" data-bind="value : age" />
						</div>
					</div>
					<div class="row">
						<div class="six columns">
							<label>Salary</label> 
							<input type="text" data-bind="value : salary" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="app-wrapper ui-corner-top">
						<div class="blue module ui-corner-top clearfix">
							<h2>Teacher List</h2>
							<h2 class="right"></h2>
						</div>
						<div class="content">
						
							<div class="row">
									<div class="nine columns"></div>
									<div class="three columns">
										<a title="add attribute" data-bind="click : $root.openManageTeacherDialog" href="#" class="right" style="margin-right: 10px"><i class="small icon-plus icon-green"></i></a>
									</div>
								</div>
								<div class="row">
									<table class="dataTable">
										<thead>
											<tr>
												<th style="text-align: center">Name</th>
												<th style="text-align: center">Age</th>
												<th style="text-align: center">Salary</th>
												<th></th>
											</tr>
										</thead>
										<tbody data-bind="foreach : teacherList">
											<tr>
												<td style="text-align: center" data-bind="text : name"></td>
												<td style="text-align: center" data-bind="text : age"></td>
												<td style="text-align: center" data-bind="text : salary"></td>
												<td style="text-align: center">
													<a title="update teacher" data-bind="click : $root.openManageTeacherDialog" style="margin-left: 10px;" href="#"><i class="icon-pencil small icon-blue"></i></a>
													<a title="delete teacher" data-bind="click : $root.deleteTeacher" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a>
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
	<script src="/crud/js/vo/Teacher.js"></script>

	<script>
		$(document).ready(function() {

			var TeacherDataModel = function() {

				var self = this;
				
				self.selectedTeacher = ko.observable(new Teacher());
				self.teacherList = ko.observableArray([]);
				
				self.searchTeacher = function() {
					
					$.ajax({
						url : 'loadTeachers.action',
						success : function(data) {
							
							if (data && data.object && data.object.elements) {
								self.teacherList(data.object.elements);
							}
							
							handleStanderdResponse(data);
							
						}
					});
				};
				
				self.searchTeacher();
				
				self.saveOrUpdateTeacher = function() {
					
					$.ajax({
						url : 'saveOrUpdateTeacher.action',
						method : 'POST',
						data : {
							teacherJson : JSON.stringify(self.selectedTeacher())
						},
						success : function(data) {
							handleStanderdResponse(data);
							
							if(data.object && data.object.id) {
								self.selectedTeacher(data.object);
							}
						}
					});	
					
				};
				
				self.openManageTeacherDialog = function(item, event) {
					
					if(item.id) {
						self.selectedTeacher(item);
					} else {
						self.selectedTeacher(new Teacher());
					}
					
					$('#teacherDialog').dialog({
						modal : true,
						width : 700,
						height : 350,
						open : function(e) {
							changeButtonStyleForPopup(e);
						},
						
						buttons : {
							'Save' : function() {
								self.saveOrUpdateTeacher();
							},
							'Close' : function() {
								closeDialog('teacherDialog');
							}
						}
					});
				};
				
			};

			var teacherDataModel = new TeacherDataModel();

			var $teacherDataModelContainer = $('#TeacherDataModelContainer')[0];
			
			ko.applyBindings(teacherDataModel, $teacherDataModelContainer);
		});

		function activeCurrentMenuItem() {
			$('#TeacherLink').addClass('active');
		}
	</script>
</body>
</html>