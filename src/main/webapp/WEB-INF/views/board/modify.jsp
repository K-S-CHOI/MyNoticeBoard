<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp"%>
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">자유 게시판</h1>
<!-- DataTales Example -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
	</div>
	<div class="card-body">
		<div class="table-responsive">		
				<div class="form-group">
				<label>제목</label>
					<input class="form-control" name="title" value="<c:out value='${board.title}'/>">
				</div>
				
				<div class="form-group">
				<label>내용</label>
					<textarea class="form-control" rows="3" name="content"><c:out value='${board.content}'/></textarea>
				</div>
				
				<div class="form-group">
				<label>글쓴이</label>
					<input class="form-control" name="writer" value="<c:out value='${board.writer}'/>" readonly="readonly">
				</div>
				
				<button type="submit" class="btn btn-info" id="modify">작성완료</button>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		var board_number = $("input[name=board_number]").val();
		var title = $("input[name=title]").val();
		var content = $("input[name=content]").val();
		var writer = "${board.writer}"
		
		
		$("#modify").on('click',function(e) {
			e.preventDefault();
			$.ajax({
				type: "POST",
				url: "/board/modify",
				data: {
					board_number: board_number,
					title: title,
					content: content
					
				},
				
				success: function(result) {
					console.log("성공");
				},
				error: function(err) {
					console.log("실패");
				}
			});
		});
	});
</script>
<%@ include file="../includes/footer.jsp"%>
