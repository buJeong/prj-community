<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../tag/import.jspf" %>
<%@ include file="../tag/taglib.jspf" %>
<script type="text/javascript">
function getMenu() {
	$.ajax({
		url: "/getTopMenu",
		method: "get",
		dataType: "json"
	})
	.done(function(json) {
		for ( var i = 0; i < json.length; i++ ) {
			var menu = json[i];
			drawMenu(menu);
		}
	})
}
function drawMenu(menu) {
	var name = menu.name;

	var menu = '<input type="button" id="tm" value="' + name + '"/>';
	
	$('#topMenu').append(menu);
}
$(function() {
	getMenu();

	$('#tm').click(function() {
		console.log("test");
	});
});
</script>
<div id="topMenu">

</div>