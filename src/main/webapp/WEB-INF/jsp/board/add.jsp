<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jspf" %>
<script type="text/javascript">
$(function() {
	$('#reset').click(function() {
		if ( confirm('내용이 초기화됩니다.\n초기화하시겠습니까?') == true ) {
			$('#postAddForm input[name="title"]').val('');
			$('#postAddForm textarea[name="contents"]').val('');
		} else {
			return;
		}
	});
	$('#save').click(function() {
		if ( confirm('등록하시겠습니까?') == true ) {
			var $form = $('#postAddForm');
			$form.attr("action", "/doAdd");
			$form.attr("method", "post");
			$form.submit();
		} else {
			return;
		}
	});
	$('#cancle').click(function() {
		history.back();
	});
})
</script>
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
<%@ include file="../layout/footer.jspf" %>