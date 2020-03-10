<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$('#reset').click(function() {
		$('#postAddForm input[name="title"]').val('');
		$('#postAddForm textarea[name="contents"]').val('');
	});
	$('#save').click(function() {
		var form = $('#postAddForm');
		form.attr("action", "/doAdd");
		form.attr("method", "post");
		form.submit();
	});
	$('#cancle').click(function() {
		history.back();
	});
})
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="postAddForm">
	<table>
		<tbody>
			<tr>
				<th>제목 : </th>
				<td><input type="text" name="title" value="" /></td>
			</tr>
			<tr>
				<th>내용 : </th>
				<td><textarea name="contents" id="contents" cols="30" rows="10"></textarea></td>
			</tr>
			<tr>
				<td><input type="button" id="reset" value="초기화"/></td>
				<td><input type="button" id="save" value="저장"/></td>
				<td><input type="button" id="cancle" value="취소"/></td>
			</tr>
		</tbody>
	</table>
</form>
</body>
</html>