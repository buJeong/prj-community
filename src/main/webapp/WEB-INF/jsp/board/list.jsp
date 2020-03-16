<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jspf" %>
<script type="text/javascript">
function showDetail(seq) {
	var url = "/detail?seq=" + seq;
	location.href = url;
}
function goAdd() {
	var url = "/add";
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
<a href="javascript:goAdd();">등록</a>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>비고</th>
		</tr>
	</thead>
	<tbody>
		
		<c:set var="no" value="${postList.size()+1}"/>
		<c:forEach items="${postList}" var="post">
		<c:set var="no" value="${no-1}"/>
		<tr>
			<td>${no}</td>
			<td><a href="javascript:showDetail(${post.seq});">${post.title}</a></td>
			<td>${post.writer}</td>
			<td>${post.regDate}</td>
			<td><a href="javascript:deletePost(${post.seq});">삭제</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
<%@ include file="../layout/footer.jspf" %>