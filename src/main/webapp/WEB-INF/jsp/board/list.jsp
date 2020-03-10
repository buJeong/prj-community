<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bu.community.service.vo.PostVo"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function showDetail(id) {
	var url = "/detail?id=" + id;
	location.href = url;
}
function goAdd() {
	var url = "/add";
	location.href = url;
}
</script>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
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
		<c:forEach items="${postList}" var="post">
		<tr>
			<td>${post.id}</td>
			<td><a href="javascript:showDetail(${post.id});">${post.title}</a></td>
			<td>${post.writer}</td>
			<td>${post.regDate}</td>
			<td></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>