<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jspf" %>
<script type="text/javascript">

function goList() {
	var url = "/boardlist";
	location.href = url;
}

function goModify(seq) {
	var url = "/modify?seq=" + seq;
	location.href = url;
}
function deletePost(seq) {
	if ( confirm('삭제하시겠습니까?') == true ) {
		var url = "/delete?seq=" + seq;
		location.href = url;
	} else {
		return;
	}
}
</script>
<a href="javascript:goList();">목록</a>
<table>
	<tbody>
		<tr>
			<td>${postOne.title }</td>
			<td>${postOne.writer }</td>
			<td>${postOne.regDate }</td>
			<td>${postOne.hit }</td>
		</tr>
		<tr>
			<td>${postOne.contents }</td>
		</tr>
	</tbody>
</table>
<a href="javascript:goModify(${postOne.seq});">수정</a>
<a href="javascript:deletePost(${postOne.seq});">삭제</a>
<%@ include file="../layout/footer.jspf" %>