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
<title>Statudent</title>
<s:include value="/jsps/common/head.jsp" />

</head>
<body>
	<s:include value="/jsps/common/brand.jsp" />
	<s:include value="/jsps/common/menu.jsp" />
	<section class="mainbg">
		<div class="container" id="StatudentDataModelContainer">
			<div class="row">
				<div style="color: red">
					<s:fielderror />
				</div>
				<div id="statudentDialog" title="Statudent Management" style="display: none" data-bind="with : selectedStatudent">
					<div class="row">
						<div class="six columns">
							<label>Name</label> 
							<input type="text" data-bind="value : name" />
						</div>
						<div class="six columns">
							<label>Number</label> 
							<input type="text" data-bind="value : number" />
						</div>
					</div>
					<div class="row">
						<div class="six columns">
							<label>Class Number</label> 
							<input type="text" data-bind="value : classNumber" />
						</div>
						<div class="six columns">
							<label>Age</label> 
							<input type="text" data-bind="value : age" />
						</div>
					</div>
					<div class="row">
						<div class="six columns">
							<label>Sex</label> 
							<input type="text" data-bind="value : sex" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="app-wrapper ui-corner-top">
						<div class="blue module ui-corner-top clearfix">
							<h2>Search Statudent</h2>
							<h2 class="right"></h2>
						</div>
						<div class="content" data-bind="with : statudentSearch">
								<div class="row">
									<div class="three columns">
										<label>Number</label> 
										<input type="text" data-bind="value : number" />
									</div>
									<div class="three columns">
										<label>Class Number</label> 
										<input type="text" data-bind="value : classNumber" />
									</div>
									<div class="three columns">
										<label>Age</label> 
										<input type="text" data-bind="value : age" />
									</div>
									<div class="three columns">
										<label>Sex</label> 
										<input type="text" data-bind="value : sex" />
									</div>
							</div>
							
							<div class="row">
								<a title="Search Statudent" data-bind="click : $root.searchStatudent" href="#" class="small blue button">Seach Statudent</a>
							</div>
						</div>
					</div>	
				</div>
				<div class="row">
					<div class="app-wrapper ui-corner-top">
						<div class="blue module ui-corner-top clearfix">
							<h2>Statudent List</h2>
							<h2 class="right"></h2>
						</div>
						<div class="content">
						
								<div class="row" style="margin-bottom: 5px">
									<div class="nine columns">
										Find <span class="label" data-bind="text : $root.totalCount"></span> records, <span class="label" data-bind="text : $root.totalPageCount"></span> pages.
									</div>
									<div class="three columns">
										<a title="add attribute" data-bind="click : $root.openManageStatudentDialog" href="#" class="right" style="margin-right: 10px"><i class="small icon-plus icon-green"></i></a>
									</div>
								</div>
								<div class="row">
									<table class="dataTable">
										<thead>
											<tr>
												<th style="text-align: center">Name</th>
												<th style="text-align: center">Number</th>
												<th style="text-align: center">Class Number</th>
												<th style="text-align: center">Age</th>
												<th style="text-align: center">Sex</th>
												<th></th>
											</tr>
										</thead>
										<tbody data-bind="foreach : statudentList">
											<tr>
												<td style="text-align: center" data-bind="text : name"></td>
												<td style="text-align: center" data-bind="text : number"></td>
												<td style="text-align: center" data-bind="text : classNumber"></td>
												<td style="text-align: center" data-bind="text : age"></td>
												<td style="text-align: center" data-bind="text : sex"></td>
												<td style="text-align: center">
													<a title="update statudent" data-bind="click : $root.openManageStatudentDialog" style="margin-left: 10px;" href="#"><i class="icon-pencil small icon-blue"></i></a>
													<a title="delete statudent" data-bind="click : $root.deleteStatudent" style="margin-left: 10px;" href="#"><i class="icon-trash small icon-red"></i></a>
												</td>
											</tr>
										</tbody>
									</table>
									<br>
								</div>
								<div class="row" id="statudentPageNavigation"></div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</section>
	<s:include value="/jsps/common/footer.jsp" />
	<script src="/crud/js/vo/Statudent.js"></script>
	<script src="/crud/js/vo/search/StatudentSearch.js"></script>
	<script>
		$(document).ready(function() {

			var StatudentDataModel = function() {

				var self = this;
				
				self.selectedStatudent = ko.observable(new Statudent());
				self.statudentList = ko.observableArray([]);
				self.totalCount = ko.observable(0);
				self.totalPageCount = ko.observable(0);
				self.currentIndex = ko.observable(1);
				self.statudentSearch = ko.observable(new StatudentSearch());
				self.searchStatudent = function() {
					
					$.ajax({
						url : 'loadStatudents.action',
						data : {currentIndex : self.currentIndex(),
								statudentSearchVoJson : JSON.stringify(self.statudentSearch())
								},
						success : function(data) {
							
							if (data && data.object && data.object.elements) {
								self.statudentList(data.object.elements);
								self.totalCount(data.object.total);
								self.totalPageCount(data.object.totalPages);
								$('#statudentPageNavigation').pagination(
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
				
				self.searchStatudent();
				
				self.pageSelectCallback = function(page_index, jq){
        				self.currentIndex(page_index + 1);
        				self.searchstatudent();
        				return false;
				};
				
				self.saveOrUpdateStatudent = function() {
					
					$.ajax({
						url : 'saveOrUpdateStatudent.action',
						method : 'POST',
						data : {
							statudentJson : JSON.stringify(self.selectedStatudent())
						},
						success : function(data) {
							handleStanderdResponse(data);
							
							if(data.object && data.object.id) {
								self.selectedStatudent(data.object);
								closeDialog('statudentDialog');
								
								self.searchStatudent();
							}
						}
					});	
					
				};
				
				self.openManageStatudentDialog = function(item, event) {
					
					if(item.id) {
						self.selectedStatudent(item);
					} else {
						self.selectedStatudent(new Statudent());
					}
					
					$('#statudentDialog').dialog({
						modal : true,
						width : 1191,
						height : 658,
						open : function(e) {
							changeButtonStyleForPopup(e);
						},
						
						buttons : {
							'Save' : function() {
								self.saveOrUpdateStatudent();
							},
							'Close' : function() {
								closeDialog('statudentDialog');
							}
						}
					});
				};
				
				self.deleteStatudent = function(item, event) {
					
					if (window.confirm("Are your sure to DELETE it?")) {
						
						$.ajax({
							url : 'deleteStatudent.action',
							method : 'POST',
							data : {
								statudentId : item.id
							},
							success : function(data) {
								handleStanderdResponse(data);
								
								if(isOK(data)) {
									self.searchStatudent();
								}
							}
						});
					}
				};
			};

			var statudentDataModel = new StatudentDataModel();

			var $statudentDataModelContainer = $('#StatudentDataModelContainer')[0];
			
			ko.applyBindings(statudentDataModel, $statudentDataModelContainer);
		});

		function activeCurrentMenuItem() {
			$('#StatudentLink').addClass('active');
		}
	</script>
</body>
</html>