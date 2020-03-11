<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jspf" %>
<script type="text/javascript">

function goList() {
	var url = "/boardlist";
	location.href = url;
}

function goModify(id) {
	var url = "/modify?id=" + id;
	location.href = url;
}
</script>
<a href="javascript:goList();">목록</a>
<a href="javascript:goModify(${postOne.id});">수정</a>
<table>
	<tbody>
		<tr>
			<td>${postOne.title }</td>
			<td>${postOne.writer }</td>
			<td>${postOne.regDate }</td>
			<td>${postOne.contents }</td>
			<td>${postOne.hit }</td>
		</tr>
	</tbody>
</table>
<%@ include file="../layout/footer.jspf" %>