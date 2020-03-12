<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jspf" %>
<script type="text/javascript">
$(function() {
	$('#reset').click(function() {
		if ( confirm('처음 내용으로 초기화합니다.\n초기화하시겠습니까?') == true ) {
			$('#postModifyForm input[name="title"]').val('${postOne.title}');
			$('#postModifyForm textarea[name="contents"]').val('${postOne.contents}');
		} else {
			return;
		}
	});
	$('#save').click(function() {
		if ( confirm('내용이 수정됩니다.\n수정하시겠습니까?') == true ) {
			var $form = $('#postModifyForm');
			var $title = $form.find('input[name="title"]');
			var $contents = $form.find('textarea[name="contents"]');
			if ( $title.val() == '' || $title.val() == null ) {
				alert('제목을 입력하세요.');
				$title.focus();
				return;
			}
			if ( $contents.val() == '' || $contents.val() == null ) {
				alert('내용을 입력하세요.');
				$contents.focus();
				return;
			}
			$form.attr("action", "/doModify");
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
<form action="" id="postModifyForm">
	<input type="hidden" name="seq" value="${postOne.seq }" />
	<input type="hidden" name="no" value="${postOne.no }" />
	<input type="hidden" name="writer" value="${postOne.writer }" />
	<table>
		<tbody>
			<tr>
				<td><input type="text" name="title" placeholder="${postOne.title }"></td>
			</tr>
			<tr>
				<td><textarea name="contents"  cols="30" rows="10" placeholder="${postOne.contents }"></textarea></td>
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