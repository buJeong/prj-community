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
		var menu = json;
		drawMenu(menu);
	})
}
function drawMenu(menu) {
	for ( var i = 0; i < menu.length; i++ ) {
		var name = menu[i].name;
		var seq = menu[i].seq;
		$('#topMenu').append('<a href="javascript:showThisMenu(' + seq + ');">' + name + '</a>');
	}
}
function showThisMenu(seq) {
	var url = "boardlist?seq=" + seq;
	if ( seq == 0 ) {
		url = "boardlist";
	}
	location.href = url;
}
$(function() {
	getMenu();
});

</script>
<div id="topMenu">
	<a href="javascript:showThisMenu('0');">전체</a>
</div>