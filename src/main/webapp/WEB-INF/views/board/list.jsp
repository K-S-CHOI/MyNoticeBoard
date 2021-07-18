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
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>등록일</th>
						<th>조회</th>
					</tr>
				</thead>
				
				<c:forEach items="${boardList}" var = "vo">
					<tbody>
						<tr>
							<td><c:out value="${vo.board_number}"></c:out></td>
							<td><a href = '/board/<c:out value="${vo.board_number}"></a></c:out>'><c:out value="${vo.title}"></c:out></a></td>
							<td><c:out value="${vo.writer}"></c:out></td>		
							<td><fmt:formatDate pattern="MM-dd" value="${vo.regdate}"></fmt:formatDate></td>
							<td><fmt:formatDate pattern="MM-dd" value="${vo.updatedate}"></fmt:formatDate></td>
						</tr>
					</tbody>
				</c:forEach>

			</table>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>
