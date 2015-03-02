function ${javaClassName}Search()  {
	var self = this;
	
<#list attributeDefinitions as attr>
	<#if attr.searchable??>
	self.${attr.name} = '';
	</#if>
</#list>
}