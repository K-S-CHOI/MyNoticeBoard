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
			<form action="/board/write" method="post">
			
				<div class="form-group">
				<label>제목</label>
					<input class="form-control" name="title">
				</div>
				
				<div class="form-group">
				<label>내용</label>
					<textarea class="form-control" rows="3" name="content"></textarea>
				</div>
				
				<div class="form-group">
				<label>글쓴이</label>
					<input class="form-control" name="writer">
				</div>
				
				<button type="submit" class="btn btn-default">작성완료</button>
				
			</form>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>
