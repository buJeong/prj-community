<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bu.community.service.vo.PostVo"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>