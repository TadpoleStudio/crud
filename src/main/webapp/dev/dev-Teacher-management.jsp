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
<title>Teacher</title>
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
						<div class="six columns">
							<label>A1</label>
							<select data-bind="options: $root.TeacherRetiredYesNo,
                      					       optionsText: 'optionText',
                       					       value: a1,
                       					       optionsValue : 'optionValue',
                       						   selectedOption : a1,
                       						   optionsCaption: 'Please select'">
							</select>		
						</div>
					</div>
					<div class="row">
						<div class="six columns">
							<label>A2</label>
							<select data-bind="options: $root.TeacherRetiredYesNo,
                      					       optionsText: 'optionText',
                       					       value: a2,
                       					       optionsValue : 'optionValue',
                       						   selectedOption : a2,
                       						   optionsCaption: 'Please select'">
							</select>		
						</div>
						<div class="six columns">
							<label>A3</label>
							<input type="text" data-bind="value : a3" />
						</div>
					</div>
					<div class="row">
						<div class="six columns">
							<label>A4</label>
							<input type="text" data-bind="value : a4" />
						</div>
						<div class="six columns">
							<label>Retired</label>
							<label class="input-checkbox">
								<input type="checkbox" data-bind="checked : retired" /> Retired Now
							</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="app-wrapper ui-corner-top">
						<div class="blue module ui-corner-top clearfix">
							<h2>Search Teacher</h2>
							<h2 class="right"></h2>
						</div>
						<div class="content" data-bind="with : teacherSearch">
								<div class="row">
									<div class="three columns">
										<label>Name</label>
											<input type="text" data-bind="value : name" />
									</div>
									<div class="three columns">
										<label>Age</label>
											<input type="text" data-bind="value : age" />
									</div>
									<div class="three columns">
										<label>Salary</label>
											<input type="text" data-bind="value : salary" />
									</div>
							</div>
							
							<div class="row">
								<a title="Search Teacher" data-bind="click : $root.searchTeacher" href="#" class="small blue button">Seach Teacher</a>
							</div>
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
						
								<div class="row" style="margin-bottom: 5px">
									<div class="nine columns">
										Find <span class="label" data-bind="text : $root.totalCount"></span> records, <span class="label" data-bind="text : $root.totalPageCount"></span> pages.
									</div>
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
												<th style="text-align: center">A1</th>
												<th style="text-align: center">A2</th>
												<th style="text-align: center">A3</th>
												<th style="text-align: center">A4</th>
												<th style="text-align: center">Retired</th>
												<th></th>
											</tr>
										</thead>
										<tbody data-bind="foreach : teacherList">
											<tr>
												<td style="text-align: center" data-bind="text : name"></td>
												<td style="text-align: center" data-bind="text : age"></td>
												<td style="text-align: center" data-bind="text : salary"></td>
												<td style="text-align: center" data-bind="text : a1"></td>
												<td style="text-align: center" data-bind="text : a2"></td>
												<td style="text-align: center" data-bind="text : a3"></td>
												<td style="text-align: center" data-bind="text : a4"></td>
												<td style="text-align: center" data-bind="text : retired"></td>
												<td style="text-align: center">
													<a title="update teacher" data-bind="click : $root.openManageTeacherDialog" style="margin-left: 10px;" href="#"><i class="icon-pencil small icon-blue"></i></a>
													<a title="delete teacher" data-bind="click : $root.deleteTeacher" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a>
												</td>
											</tr>
										</tbody>
									</table>
									<br>
								</div>
								<div class="row" id="teacherPageNavigation"></div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</section>
	<s:include value="/jsps/common/footer.jsp" />
	<script src="/crud/js/vo/Teacher.js"></script>
	<script src="/crud/js/vo/search/TeacherSearch.js"></script>
	<script>
		$(document).ready(function() {

			var TeacherDataModel = function() {

				var self = this;
				
				self.selectedTeacher = ko.observable(new Teacher());
				self.teacherList = ko.observableArray([]);
				self.totalCount = ko.observable(0);
				self.totalPageCount = ko.observable(0);
				self.currentIndex = ko.observable(1);
				self.teacherSearch = ko.observable(new TeacherSearch());
				self.TeacherRetiredYesNo = ko.observableArray([]);
				$.ajax({ url : '/crud/loadDatasource.action',
						 data : { dataSourceName : 'TeacherRetiredYesNo' },
						 success : function(data) {
								self.TeacherRetiredYesNo(data);
						}
					});
				self.searchTeacher = function() {
					
					$.ajax({
						url : 'loadTeachers.action',
						data : {currentIndex : self.currentIndex(),
								teacherSearchVoJson : JSON.stringify(self.teacherSearch())
								},
						success : function(data) {
							
							if (data && data.object && data.object.elements) {
								self.teacherList(data.object.elements);
								self.totalCount(data.object.total);
								self.totalPageCount(data.object.totalPages);
								$('#teacherPageNavigation').pagination(
                				self.totalCount(),
        							{
                					num_edge_entries: 1,
                					num_display_entries: 15,
                					callback: self.pageSelectCallback,
                					items_per_page: 10,
                					prev_text: "Last Page",
                					next_text: "Next Page",
                					current_page : self.currentIndex() - 1,
                					load_first_page : false
        							}
								);
							}
						}
					});
				};
				
				self.searchTeacher();
				
				self.pageSelectCallback = function(page_index, jq){
        				self.currentIndex(page_index + 1);
        				self.searchTeacher();
        				return false;
				};
				
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
								closeDialog('teacherDialog');
								
								self.searchTeacher();
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
						width : 1191,
						height : 658,
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
				
				self.deleteTeacher = function(item, event) {
					
					if (window.confirm("Are your sure to DELETE it?")) {
						
						$.ajax({
							url : 'deleteTeacher.action',
							method : 'POST',
							data : {
								teacherId : item.id
							},
							success : function(data) {
								handleStanderdResponse(data);
								
								if(isOK(data)) {
									self.searchTeacher();
								}
							}
						});
					}
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