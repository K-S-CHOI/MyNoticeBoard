<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp"%>

<style>
.articleHead {
	width: 710px;
	margin-top: 2px;
}

.articleHead.hC_green1 {
	border-top: 2px solid #bcdaba;
	border-bottom: 1px solid #bcdaba;
	background-color: #e6f2e6;
}

.articleHead .articleInfo {
	width: 646px;
	margin-left: 32px;
	margin-top: 7px;
	padding-bottom: 5px;
}

.articleHead .articleInfo .articleWriter {
	width: 215px;
	text-align: left;
}

.articleHead .articleInfo .articleWriter img {
	vertical-align: middle;
	margin-bottom: 2px;
}

.articleHead .articleInfo .articleDate {
	width: 215px;
	text-align: center;
	font-weight: bold;
}

.articleTitle {
	width: 470px;
	height: 120px;
	margin-left: 30px;
	margin-top: 80px;
}

.articleTitle h1 {
	font-family: Dotum, �뗭�, Helvetica;
	font-size: 14pt;
	font-weight: bold;
	color: brown;
}

.articleContent {
	width: 710px;
	padding-bottom: 33px;
	clear: both;
	overflow: hidden;
	color: #000000;
	line-height: 150%;
}

.articleContent .contentBody {
	width: 670px;
	overflow: hidden;
	margin: 20px 0 30px 30px;
}

.articleContent #voteWraper {
	padding: 58px 0 0 22px;
	background:
		url("https://img.inven.co.kr/image_2011/common/invenvote/common/result_wrapper_title1.png")
		left top no-repeat;
	background-color: #fcfbf8;
	border: 1px solid #dad8d3;
	border-top: 0px;
	width: 518px;
}

.articleContent #voteWraper {
	padding: 75px 0 0 22px;
}
</style>


<h1 class="h3 mb-2 text-gray-800">자유 게시판</h1>

<div class="articleHead hC_green1">
	<div class="articleInfo">
		<div class="articleWriter">${board.writer}</div>
		<div class="articleDate"><fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${board.regdate}"></fmt:formatDate></div>
		<%-- <div class="articleNumber">${board.board_number}번글</div> --%>
	</div>
</div>

<div class="card-body">
	<div class="table-responsive">
		<div class="articleMain">
			<div class="articleTitle">
				<%-- <label>제목</label> <input class="form-control" name="title" value='<c:out value="${board.title}"></c:out>'> --%>
				<h1>
					<c:out value="${board.title}"></c:out>
				</h1>
			</div>

			<div class="articleContent">
				<!-- <label>내용</label> -->
				<%-- <textarea class="form-control" rows="3" name="content"><c:out value="${board.content}"></c:out></textarea> --%>
				<div class="contentBody">
					<c:out value="${board.content}"></c:out>
				</div>
			</div>
			<button type="submit" class="btn btn-info" id="modify">수정</button>
			<button type="submit" class="btn btn-info" id="delete">삭제</button>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$("#modify").on('click',function(e) {
			e.preventDefault();
			$.ajax({
				type: "POST",
				url: "/board/test",
				data: "hello",
				
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
